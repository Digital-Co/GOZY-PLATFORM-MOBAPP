import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart' as intl;
import 'package:permission_handler/permission_handler.dart';
import 'package:gozy/app.dart';
import 'package:gozy/constant.dart';
import 'package:gozy/generated/assets.dart';
import 'package:gozy/model/tab_bar_item_model.dart';
import 'package:gozy/pref/app_preference.dart';
import 'package:gozy/resources/app_dimen.dart';
import 'package:gozy/resources/app_font.dart';
import 'package:gozy/resources/app_lang.dart';
import 'package:gozy/screens/views/base_controller.dart';
import 'package:gozy/utils/text_editing_controller.dart';
import 'package:gozy/utils/localized_date_time.dart';
import 'package:gozy/widgets/bottom_sheet/bottom_sheet_refresh_controller.dart';
import 'package:gozy/widgets/common/custom_container/custom_border_container.dart';
import 'package:gozy/widgets/common/custom_network_image/custom_clip_network_image.dart';
import 'package:gozy/widgets/common/custom_text/custom_title_text.dart';
import 'package:gozy/widgets/common/custom_dialog/custom_dialog.dart';
import 'package:gozy/widgets/conditional_parent_widget.dart';
import 'package:gozy/widgets/common/custom_button/custom_button.dart';
import 'package:gozy/widgets/common/custom_container/custom_container.dart';
import 'package:gozy/widgets/custom_container_extensions.dart';
import 'package:gozy/widgets/scrolling_dots_effect.dart';
import 'package:gozy/widgets/shimmer.dart';
import 'package:gozy/widgets/theme4/custom_progress_indicator.dart';
import 'package:url_launcher/url_launcher.dart';

import '../resources/app_colors.dart';
import '../resources/app_layout.dart';
import '../widgets/custom_text.dart';
import '../widgets/scroll_behaviour.dart';
import 'dob_picker/date_picker.dart';
import 'dotted_border/dotted_border.dart';
import 'explore_listing_item_widgets.dart';
import 'view_list_review_item.dart';

part 'common_extension_functions_part2.dart';
part 'common_extension_functions_part3.dart';

Widget toGridView({
  int? itemCount,
  ScrollPhysics? physics,
  bool? shrinkWrap,
  required BaseController baseController,
  double? itemSize,
  SliverGridDelegate? gridDelegate,
  EdgeInsetsGeometry? padding,
  double? mainAxisSpacing,
  double? crossAxisSpacing,
  double? childAspectRatio,
  Widget? emptyWidget,
  ScrollController? scrollController,
  int? gridItemCount,
  bool? isLoading,
  required NullableIndexedWidgetBuilder itemBuilder,
}){
  debugPrint('itemCount: $itemCount ---$emptyWidget');
  if(itemCount ==null || itemCount <0) {
    itemCount = 0;
  }
  return
    GridView.builder(
    shrinkWrap: shrinkWrap ?? true,
    physics: physics?? const NeverScrollableScrollPhysics(),
    padding:padding ?? EdgeInsets.zero,
      cacheExtent: 9999999,
    itemCount: itemCount,
        controller: scrollController,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount:gridItemCount?? 2,
        mainAxisExtent: itemSize,
        mainAxisSpacing: mainAxisSpacing??0,
        crossAxisSpacing: crossAxisSpacing??0,
        childAspectRatio: 1.0
    ),
    itemBuilder: itemBuilder,
  ).addScrollConfig()
      .toShowEmpty(controller: baseController,
       emptyWidget: emptyWidget ??  const SizedBox.shrink(),
       isShowEmpty: (){return  itemCount ==0;}
  );
}


Widget toPageView({
  Key? key,
  Axis scrollDirection  = Axis.horizontal,
  Clip clipBehavior  = Clip.hardEdge,
  bool reverse = false,
  PageController? controller,
  bool? primary,
  int? itemCount,
  Widget? emptyWidget,
  bool isLoading = false,
  bool isShowShimmer =false,
  ScrollPhysics physics = const ClampingScrollPhysics(),
  bool shrinkWrap = false,
  EdgeInsetsGeometry? padding,
  ValueChanged<int>? onPageChanged,
  required   NullableIndexedWidgetBuilder itemBuilder
}){
  return  itemCount!=null && itemCount >0 ?
  PageView.builder(
    key: key,
    onPageChanged: onPageChanged,
    itemBuilder: itemBuilder,
    itemCount: itemCount,
    clipBehavior: clipBehavior,
    controller: controller,
    physics: physics,

  ).addScrollConfig() : emptyWidget ?? const SizedBox.shrink();
}


Widget toReviewList(
    {dynamic reviewList,
    String? reviewType,
    Function? onApiFunction,
    ScrollPhysics? emptyViewPhysics,
    Function? swipeToRefreshIntialFunction,
    ScrollController? reviewListScrollController,
    required BaseController controller,
    bool isShowPaginationAtFirst = false,
    RxInt? currentPage,
    ValueChanged<dynamic>? onSelectedHost,
    int? reviewsCount,
    bool? isAddListener,
    bool? isDisableLoader,
    bool? toShowPaginationLoader,
    Widget? listView,
    Widget? emptyWidget,
    bool Function()? isShowEmpty,
    bool isEnableListener = false,
    bool isEnableSwipeToRefresh = true,
    ValueChanged<ScrollController>? oncreatedScrollController,
    bool isPaginationLoaderAtBottom = true,
    RxBool? isPaginationLoader,
    double bottomPosition = 0.0,
    double? height,
    Axis? scrollDirection,
    double? itemWidth,
    NullableIndexedWidgetBuilder? itemBuilder}) {
  if (isAddListener ?? false) {
    reviewListScrollController = ScrollController();
    oncreatedScrollController != null
        ? oncreatedScrollController(reviewListScrollController)
        : null;
  }
  int swipeupCount = 0,
      swipedownCount = 0,
      swiperightCount = 0,
      swipeleftCount = 0;

  if (isDisableLoader == null ||
      (reviewList != null &&
          reviewList.length > 0 &&
          reviewsCount != null &&
          reviewsCount > 0 &&
          reviewsCount != reviewList.length)) {
    if (!reviewListScrollController!.hasListeners) {
      reviewListScrollController.addListener(() {
        double maxintent =   reviewListScrollController!.position.maxScrollExtent;
        if (reviewListScrollController!.position.pixels == maxintent) {
          debugPrint(
              'reviewList.length: ${reviewList.length} --- $reviewsCount -- $reviewListScrollController --- ${controller.isLoading.value}');
          // Only load more if there are more reviews to load
          if (reviewList != null &&
              reviewsCount != null &&
              reviewList.length < reviewsCount &&
              !controller.isLoading.value) {
            isShowLoader = false;
            if (isPaginationLoader?.value != null) {
              isPaginationLoader?.value = true;
            }
            controller.isLoading.value = true;
            controller.checkNetwork(() {
              if (isDisableLoader != null) currentPage?.value++;
              onApiFunction!();
            });
          }
        }
      });
    }
  }

  Widget loader = dotCenter120HeightLoader!.toResizeWidget(height: height, width: deviceWidth);
  return
    isDisableLoader==null && ((controller.isLoading.value && currentPage!.value == 1) || reviewList ==null) ?
    loader :

    ConditionalParentWidget(
      condition:isEnableSwipeToRefresh,
      parentBuilder: (Widget child) => child.toRefresh(
        onRefresh: ()async{
          currentPage?.value = 1;
    if(swipeToRefreshIntialFunction !=null)swipeToRefreshIntialFunction();
    controller.isLoading.value = true;
    await  Future.delayed(Duration(milliseconds: 100));
    controller.checkNetwork((){
      reviewList?.clear();
      controller.isLoading.refresh();
      onApiFunction!();
    });
    return Future.delayed(Duration(milliseconds: 500));
  }, scrollpredicate: (ScrollNotification notification){
    return notification.depth == 0 && !controller.isLoading.value;
    }
      ),
  child:
    [
      (
      listView !=null ?
      ConditionalParentWidget(
          condition: isEnableListener,
          parentBuilder: (Widget child) => Listener(
              onPointerMove: (moveEvent) {
                double angle = ((moveEvent.delta.direction * 180) / pi);
                switch (angle) {
                  case >= -45 && <= 45:
                    swiperightCount++;
                  case > 45 && <= 135:
                    swipedownCount++;
                  case >= -135 && < -45:
                    swipeupCount++;
                  default:
                    swipeleftCount++;
                }
              },
              onPointerUp: (moveEvent) {
                List<int> count = [swiperightCount,swipedownCount,swipeupCount,swipeleftCount];
                debugPrint("onPointerUp:count ${count}---$swipeupCount");

                if((swipeupCount  == count.reduce(max) && swipeupCount >0) ) {
                  if(reviewListScrollController!.position.maxScrollExtent <=0){
                    if(reviewList !=null && reviewsCount != reviewList.length && !controller.isLoading.value) {
                      controller.checkNetwork((){
                        if(isDisableLoader !=null) currentPage?.value++;
                        onApiFunction!();
                      });
                    }
                  }
                  swipeupCount =0;swipedownCount =0;swiperightCount =0;swipeleftCount =0;
                }
              },
              child: child
          ),
          child: listView
      ) :

      ListView.builder(
        controller: reviewListScrollController,
        physics: const AlwaysScrollableScrollPhysics(),
        itemCount : (reviewList?.length ?? 0),
        cacheExtent: 9999999,
        scrollDirection: scrollDirection ?? Axis.vertical,
        itemBuilder:  itemBuilder ?? (context, index) {
          dynamic itemReviewsInfo = reviewList[index];
          debugPrint('reviewListScrollController: $index');
          if (scrollDirection == Axis.horizontal) {
            return reviewListItem(itemReviewsInfo: itemReviewsInfo, isExpand: true,reviewType: reviewType,onSelectedHost: onSelectedHost, width: itemWidth ).toPad(end: 15);
          }
          return reviewListItem(itemReviewsInfo: itemReviewsInfo, isExpand: true,reviewType: reviewType,onSelectedHost: onSelectedHost, width: itemWidth ).toPad(bottom: 15);
        },
      )).toShowEmpty(controller: controller,
          emptyWidget: emptyWidget ??  const SizedBox.shrink(),
          physics: emptyViewPhysics,
          isShowEmpty:isShowEmpty ?? (){return  (reviewList?.length ?? 0) ==0;},)
          .toResizeWidget(height: height ?? (scrollDirection == Axis.horizontal ? 250 : deviceHeight)),

      if(controller.isLoading.value && (isShowPaginationAtFirst  || currentPage!.value > 1) && (reviewList?.length ?? 0) < (reviewsCount ?? 0) && (isPaginationLoader?.value ?? (toShowPaginationLoader ?? true)) )
      Positioned(
          top: !isPaginationLoaderAtBottom ? 0: null,
          bottom: isPaginationLoaderAtBottom ?  bottomPosition: null,
          child: controller.getLoader(loader: LottieLoaders.three_dots_loader.name, changed: appThemeChanged.value, color: appColors.secondaryColor).toResizeWidget(all: 120)) ,
    ].toStack(
        alignment: AlignmentDirectional.center
    )
    );
}

Widget reviewListItem({
  required dynamic itemReviewsInfo,
  bool isExpand = false,
  String? reviewType,
  ValueChanged<dynamic>? onSelectedHost,
  int? maxLines,
  Function? showMoreOnTap,
  double? width,
}) {
  late Widget titleWidget;
  Widget? topWidget;
  late Widget subtitleWidget;
  Widget? bottomWidget;
  bool? isDottedBorder;
  Color? fillColor;

  int? themeType =
      appLayoutMap[AppLayout.viewCar]?.themeType ?? overALLThemeType;
  String? ratingIcon = appLayoutMap[AppLayout.viewCar]?.ratingIcon;
  double? borderRadius = appLayoutMap[AppLayout.viewCar]?.borderRadius;

  final userName = itemReviewsInfo.authorData?.firstName;
  final createdAt = itemReviewsInfo?.createdAt;
  final rating = itemReviewsInfo.rating;

// 1. Handle Colors and Flags
  fillColor = (themeType == 4)
      ? appColors.theme4AppBarBg
      : appColors.theme3ReviewListColor;
  isDottedBorder = (themeType == 4);

// 2. Structural Assignments via Switch Expression
  (titleWidget, subtitleWidget, topWidget, bottomWidget) = switch (themeType) {
    1 => (
        getUserNameWidget(
            userName: userName, createdAt: createdAt, maxLines: maxLines),
        getRatingBar(rating: rating),
        null,
        null
      ),
    2 => (
        getUserNameWidget(userName: userName, maxLines: maxLines),
        createdAtWidget(createdAt: createdAt),
        null,
        getRatingBar(rating: rating)
      ),
    3 => (
        getUserNameWidget(userName: userName, maxLines: maxLines),
        createdAtWidget(createdAt: createdAt),
        getRatingBar(
            rating: rating, ratingIcon: ratingIcon, iconColor: appColors.black),
        null
      ),
    4 => (
        getUserNameWidget(userName: userName, maxLines: maxLines),
        getRatingBar(rating: rating),
        null,
        createdAtWidget(createdAt: createdAt)
      ),
    _ => (
        // Default case
        getUserNameWidget(userName: userName, maxLines: maxLines),
        getRatingBar(rating: rating),
        null,
        null
      ),
  };

  return ViewListReviewItem(
    profileIconType: "circle",
    itemReviewsInfo: itemReviewsInfo,
    onSelectedHost: onSelectedHost,
    width: width ?? deviceWidth,
    titleWidget: titleWidget,
    subtitleWidget: subtitleWidget,
    topWidget: topWidget,
    onTap: showMoreOnTap != null
        ? () {
            showMoreOnTap();
          }
        : null,
    bottomWidget: bottomWidget,
    borderRadius: borderRadius,
    isDottedBorder: isDottedBorder,
    fillColor: fillColor,
  );
}

Widget toListScroll({EdgeInsetsGeometry? padding, required List<Widget> WidgetList, bool isRemoveDivider = false, int removingIndex = -1, double? horizontalPad, bool? isFromItinerary, double? dividerSpace, Set<int>? noSpaceIndices}){
  Widget listScroll;
  if(!isRemoveDivider){
    listScroll = ListItemsWithDivider(WidgetList: WidgetList, isPadForDivider: isFromItinerary ?? true, space: dividerSpace ?? 20).toScroll(padding: padding);
  }
  else{
    List<Widget> localWidget = [];
    localWidget.add(WidgetList[removingIndex]);
    WidgetList.removeAt(removingIndex);
    localWidget.addAll(ListItemsWithDivider(
        WidgetList: WidgetList,
        space: dividerSpace ?? 20,
        horizontalPad: horizontalPad,
        noSpaceIndices: noSpaceIndices,
        isPadForDivider: appLayoutMap[AppLayout.viewCar]?.themeType==4?true:false,
        dividerWidth: deviceWidth));
    listScroll = localWidget.toScroll(padding: padding);
  }
  return listScroll;
}

Widget toOnTap({GestureTapCallback? onTap, required Widget child,GestureTapDownCallback? onTapDown,GestureTapUpCallback? onTapUp,GestureLongPressCallback? onLongPress, bool? isRetainFocus}){
  Color color = Colors.transparent;
  return InkWell(
  overlayColor: inkwellOverlayColor,
    hoverColor: color,
    focusColor: color,
    highlightColor: color,
    splashColor:color,
    onLongPress: onLongPress,
    onHighlightChanged: (isFocus){
      if(isRetainFocus !=null && isRetainFocus){}
     else if(!isFocus) {
        ScaffoldMessenger.of(Get.context!).hideCurrentSnackBar();
        // if(Get.isSnackbarOpen) Get.closeAllSnackbars();
      }
    },
    splashFactory: NoSplash.splashFactory,
    onTap: onTap,
    onTapUp: onTapUp,
    onTapDown: onTapDown,
    child: child,
  );

}

Widget toHorizontalListingView({required BaseController controller,required PageStorageKey key,required int themeType,required String? instantBookIcon,required double borderRadius,required bool isLoading, int? count, ScrollController? scrollController, dynamic Listings,Function(dynamic)? onListDetailTap,GestureTapCallback? onTaponWishlist,double? itemWidth,double? imageHeight, double? itemHeight, String? type,bool? isShowShimmer,bool? isDisableLoader,int? currentPage, ScrollPhysics? physics}){
  return
  toListView(
    scrollDirection: Axis.horizontal,
    itemCount : count,
    physics:physics ,
    key:  key,
    isShowShimmer: isShowShimmer ?? false,
    controller: scrollController,
    isLoading: isLoading,
    itemBuilder: (context,index){
      var  item =  Listings?[index];
      return  ConditionalParentWidget(
          condition: isShowShimmer ?? false,
          parentBuilder: (Widget child) {
            return ShimmerLoading(
                widgetType: 'commonHorizontalList',
                isLoading: isLoading,
                child:  child,
                isDarkMode: controller.isDarkMode());
          },
          child: getRecommandedItem(
              listing_data: item,
              itemWidth: itemWidth!,
              itemHeight: imageHeight,
              type:type,
              instantBookIcon: instantBookIcon,
              themeType: themeType,
              borderRadius: borderRadius,
              controller: controller,
              currencySymbol: controller.getCurrencySymbol(),
              isshimmerview: isLoading,
              onListDetailTap: onListDetailTap
          ).toPad(end: index == count!-1 ? 10 :18, start: index == 0 ? 2 : 0)
        );
    },
  ).toResizeWidget(height: itemHeight ?? (count !>0 ? 350 : 0));
}

Widget getAdminImage({required String adminimage, Color? newColor,double? size,double? pad}){
  return FutureBuilder(
    builder: (ctx, snapshot) {
      if (snapshot.connectionState == ConnectionState.waiting) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      } else {
        String? svgImg = snapshot.data;
        if(svgImg !=null){
          String hexString =  (newColor ?? appColors.primaryColor).toARGB32().toRadixString(16);
          hexString = hexString.substring(2, hexString.length);
          svgImg = svgImg.replaceAll('#31B9F6', '#$hexString;');
        }
        return (svgImg ?? Assets.drawableReviewAdmin).toSVG(
            size: size ?? 60,
            replaceableValues: svgImg != null
                ? {}
                : null);
      }

    },
    future:rootBundle.loadString(adminimage),
  );
}

  Widget toPropertyCreationColumn({ Widget? chipLayout,
  required List<Map<String,dynamic>> stepLayoutItems,
  required RxInt choosedIndex,
  required RxInt selectedChipIndex,
  required BaseController controller,
  Widget? titleWidget,
  Widget? bottomWidget,
  Widget? buttonTopWidget,
  String? buttonText,
  Color? containerColor,
  Color? topRadiusColor,
  BorderRadiusGeometry? cornerRadius,
  double? bottomBorderRadius,
  bool? bottomProgressWidget,
  double? borderWidth,
  int deductLength = 0,
  required List<int> stepBasedPages,
  String? progressShowArea = 'bottom',
  required TickerProviderStateMixin tickerprovider,
  GestureTapCallback? onTaponSaveExit,
}){
  int duration = 450;
  int oldindex = choosedIndex.value;
  int nextindex = choosedIndex.value;
  int currentindex = choosedIndex.value;
  RxBool isupdate = false.obs;
  int previouspagecount = 1;
  bool isChipClick = false;
  String? previousprogress ,currentprogress;
  if(stepBasedPages.isEmpty) return  const SizedBox.shrink();
  return
    Obx(() {
      isupdate.value = false;
      previousprogress = currentprogress;
      debugPrint('stepBasedPages count: $stepBasedPages');
      if(stepBasedPages.isEmpty) {
        return const SizedBox.shrink();
      }
      currentprogress = ((stepBasedPages.last + 1) / (stepLayoutItems.length - deductLength) * 100).toString();
      debugPrint("stepBasedPages.last: ${stepBasedPages.last}--$deductLength--$currentprogress--$previousprogress---${stepLayoutItems.length}");
      if( previouspagecount >stepBasedPages.length){
        if(!(currentindex < stepBasedPages.last)) {
          oldindex = stepBasedPages.last;
          if (oldindex == (stepLayoutItems.length - 1)) {
            nextindex = oldindex;
          } else if ((currentindex - oldindex) < 2)
            nextindex = oldindex + 1;
          else
            isChipClick = true;
        }else{
          nextindex = oldindex;
          oldindex = stepBasedPages.last;
        }


        isupdate.value = true;
        Future.delayed( Duration(milliseconds: 5)).then((value) async{
          previouspagecount = stepBasedPages.length;
          currentindex = stepBasedPages.last;
          choosedIndex.refresh();
         await Future.delayed( Duration(milliseconds: duration));
         if(currentindex >= (stepLayoutItems.length - 1)) {
           nextindex = currentindex;
         } else if(isChipClick)
            nextindex = currentindex+1;

          debugPrint("backpressindex: after ---$oldindex --- $currentindex---$nextindex");
          isChipClick = false;
        });

      }

      ever(selectedChipIndex, (value) async {
        debugPrint('propertycreatedcolumn: $value');
        if(!isupdate.value && value !=currentindex) {
          if (value > nextindex) {

            oldindex = nextindex;
            nextindex = value;
          } else   if (value < nextindex) {
            oldindex = value;
             if (value != (stepLayoutItems.length - 1)) {
               nextindex = choosedIndex.value;
             }
          }
          if(MediaQuery.of(Get.context!).viewInsets.bottom > 0.0) {
            FocusManager.instance.primaryFocus!.unfocus();
          }
          isupdate.value = true;
          await Future.delayed(Duration(milliseconds: 50));
          currentindex = value;
          choosedIndex.value = value;
          if (!stepBasedPages.contains(choosedIndex.value)) {
            stepBasedPages.add(choosedIndex.value);
          } else{
            stepBasedPages.remove(choosedIndex.value);
            stepBasedPages.add(choosedIndex.value);
          }
          await Future.delayed(Duration(milliseconds: duration));
          nextindex = value;
          isupdate.refresh();
          debugPrint('propertycreatedcolumn: refresh $value');
        }
      }, condition: () => !isupdate.value);

      previouspagecount = stepBasedPages.length;

      return [
        if(chipLayout !=null)chipLayout.toResizeWidget(height: 56).toPad(vertical: 5).toResizeWidget(color: appColors.white, width: Get.width),

        titleWidget ??
      Obx(() {
        debugPrint("isretain:${stepLayoutItems[choosedIndex.value]['isRetainFocus']} --- ${choosedIndex.value == stepLayoutItems.length-1}");
        return AnimatedOpacity(
          opacity: (isupdate.value) ? 0 : 1,
          duration: Duration(milliseconds: isupdate.value ? 0: (3*duration)),
          child: CustomTitleText(
            text: stepLayoutItems[currentindex]['title'].toString(),
              fontWeight: AppFont.semiBold,
              size: AppDimen.textSize_22
          ).toPad(horizontal: AppDimen.startMargin, bottom: AppDimen.startMargin-5,top:5),
        ).toResizeWidget(color: appColors.white, width: Get.width);
      }),

        topCornerClipContainer(
            isshowBorder: progressShowArea != 'top',
            isEnablepadding: false,
            topRadiusColor: topRadiusColor,
            cornerRadius: cornerRadius,
            borderWidth: borderWidth,
            child: [
              if(progressShowArea == 'top')
                CustomProgressIndicator(
                  value: double.parse(currentprogress!),
                  height: 2,
                  previousValue: double.parse(previousprogress ?? '0'),
                  duration:duration,
                  borderRadius: 30,
                  backgroundColor : appColors. shimmerplaceholderColor,
                  progressColor :appColors.secondaryColor,
                ),
              Obx(() {
                return controller.isLoading.value && isShowLoader ? 0.toHeight() :
                AnimatedSlide(
                    duration: Duration(milliseconds: isupdate.value ? 0 :duration),
                    offset: Offset( ( currentindex == oldindex ? 0 : -1.2) , 0),
                    child: (stepLayoutItems[ oldindex]['widget'] as Widget)).toPad(horizontal: AppDimen.startMargin)
                ;}),

              Obx(() {
                debugPrint("currentindex: $currentindex---$oldindex---$nextindex--${isupdate.value}");
                return
                  controller.isLoading.value && isShowLoader ? 0.toHeight() :
                  oldindex == currentindex && nextindex == currentindex ?
                  const SizedBox.shrink() :
                  AnimatedSlide(
                      duration: Duration(milliseconds: isupdate.value ? 0 : duration),
                      offset: Offset( currentindex == nextindex ? 0 : 1.2, 0),
                      child: AnimatedOpacity(
                          duration: Duration(milliseconds: isupdate.value ? 0 : duration),
                          opacity: currentindex== nextindex ? 1 : 0,
                          child: (stepLayoutItems[nextindex]['widget'] as Widget).toPad(horizontal: AppDimen.startMargin))
                  );
              }
              ),

            ].toStack(clipBehavior: Clip.none)
        ).toStretch(),

        if(buttonTopWidget !=null) buttonTopWidget,
        if(progressShowArea == 'bottom')...[
          (bottomProgressWidget ?? false) ? CustomProgressIndicator(
            value: double.parse(currentprogress!),
            height: 2,
            previousValue: double.parse(previousprogress ?? '0'),
            duration:duration,
            borderRadius: bottomBorderRadius ?? 2,
            backgroundColor : appColors.shimmerplaceholderColor,
            progressColor :appColors.secondaryColor,
          ) : getLinearIndicator(
              minHeight: 2,
              duration: duration,
              previousprogress: previousprogress,
              progress: currentprogress!),
        ],
        CustomContainer(
        padding: pad(
            w: AppDimen.startMargin,
            top: overALLThemeType == 3 ? 0 : overALLThemeType == 2 ? 20 : 8,
            bottom: 20),
        color: appColors.white,
          body: [
            if(chipLayout !=null && progressShowArea == 'bottom' )
              toOnTap(
               isRetainFocus: stepLayoutItems[choosedIndex.value]['isRetainFocus'] != null,
                onTap: ()async {
                  if(!controller.isLoading.value) {
                    bool ismovetoText = true;
                    FocusManager.instance.primaryFocus?.unfocus();
                    controller.isSaveAndExit = true;
                    debugPrint("onnext: ${stepLayoutItems[choosedIndex.value]}");
                    if (stepLayoutItems[choosedIndex.value]['onnext'] != null) {
                      ismovetoText = await stepLayoutItems[choosedIndex.value]['onnext']();
                    }
                    if (onTaponSaveExit != null && ismovetoText) {
                      onTaponSaveExit();
                    }
                  }
                },
                child:  Center(
                  child: Obx(()=>
                      CustomText(text: btn_label_save_exit.tr,
                        color:  controller.isLoading.value ? appColors.secondaryColor.withAlpha(50) : appColors.secondaryColor,
                      ),
                  ),
                ).toResizeWidget(height: 50),

              ),
           if(progressShowArea == 'bottom')
            const Spacer(),
            toOnTap(
                isRetainFocus: stepLayoutItems[choosedIndex.value]['isRetainFocus'] != null,
              onTap: () async{
                bool isNetConnected = await controller.isNetworkConnected();
                if(!controller.isLoading.value && isNetConnected) {
                  bool ismovetoText = true;
                  FocusManager.instance.primaryFocus?.unfocus();
                  if (stepLayoutItems[choosedIndex.value]['onnext'] != null) {
                    ismovetoText = await stepLayoutItems[choosedIndex.value]['onnext']();
                  }


                  if (ismovetoText &&
                      choosedIndex.value != (stepLayoutItems.length - 1)) {
                    oldindex = choosedIndex.value;
                    nextindex = choosedIndex.value + 1;
                    isupdate.value = true;
                    await Future.delayed(Duration(milliseconds: 50));
                    currentindex = nextindex;
                    choosedIndex.value = nextindex;

                    if (!stepBasedPages.contains(choosedIndex.value)) {
                      stepBasedPages.add(choosedIndex.value);
                    } else {
                      stepBasedPages.remove(choosedIndex.value);
                      stepBasedPages.add(choosedIndex.value);
                    }
                  }
                }
              },
              child: AbsorbPointer(
                absorbing: true,
                child: stepLayoutItems[choosedIndex.value]['nextbtn'] ??
                Obx(()=> CancelButton(
                        isExpand: false,
                        verticalPadding: 10,
                        fillcolor: controller.isLoading.value ? appColors.primaryColor.withAlpha(50) : appColors.primaryColor,
                        color: controller.isLoading.value ? appColors.primaryColor.withAlpha(5) : appColors.primaryColor,
                        onTap: (){},
                        buttonText: (choosedIndex.value == (stepLayoutItems.length - 1))
                            ? buttonText ?? btn_label_finish.tr
                            :  btn_label_next.tr,
                        textColor: appColors.buttonTextColor)),
                  )
            ).toStretch(isReturnChild: progressShowArea == 'bottom')
          ].toRow(),
        ),
        if(bottomWidget !=null) bottomWidget

      ].toColumn(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max
      ).toResizeWidget(color: containerColor ?? appColors.theme4AppBarBg
      );
    }
  );
}



Widget getLinearIndicator({required String progress,double? minHeight, int? duration, String? previousprogress,Color? BGColor,Color? progressColor}){
  return   TweenAnimationBuilder<double>(
    duration:  Duration(milliseconds: duration!=null ? duration+300 : 0),
    curve: Curves.linear,
    tween: Tween<double>(
      begin: ((double.parse(previousprogress ?? '0'))/100),
      end: ((double.parse(progress))/100),
    ),
    builder: (context, value, _) =>
        LinearProgressIndicator(
          backgroundColor:  BGColor ?? appColors. shimmerplaceholderColor,
          valueColor: AlwaysStoppedAnimation<Color>(progressColor ?? appColors.secondaryColor),
          minHeight:minHeight ?? 4,
          value: value,
          borderRadius: BorderRadius.circular(40),
        )
  );
}


extension TabBarItemModelExtension on TabBarItemModel {
  TabBarItemModel copyWith({int? totalCount,
    int? listCurrentpage,
    PageStorageKey? pageStorageKey,
    bool? isTabLoading,
    ScrollController? tabliistScrollController,
    List<dynamic>? tabBarListData,
  String? type,
    List<dynamic>? nonFilterTabBarListData}) {
    if(listCurrentpage !=null) {
      this.listCurrentpage.value = listCurrentpage;
    }
    return  (
    totalCount: totalCount ?? this.totalCount,
    listCurrentpage:  this.listCurrentpage,
    tabliistScrollController: tabliistScrollController ?? this.tabliistScrollController,
    pageStorageKey: pageStorageKey ?? this.pageStorageKey,
    tabBarListData: tabBarListData ?? this.tabBarListData,
    nonFilterTabBarListData: tabBarListData ?? this.tabBarListData,
    isTabLoading: isTabLoading ?? this.isTabLoading,
    type: type ?? this.type
    );
  }
}

Widget toTabBarView(
    {required List<String> tabs,
    required List<Widget> tabBarWidgets,
    required TabController tabController,
    BaseController? controller,
    ScrollPhysics? physics,
    int? themeType,
    bool? isDynamicWidth}) {
  bool isLoading =controller !=null ? (!controller.isLoading.value) : false;
Color? underlineColor, selectedTextColor,selectedTabBGColor, unSelectedTabBGColor;
double? labelPad = 36;
bool isFullWidth = false,isUnselectDecorate = false, isUnderLineNeeded = false;
    switch(themeType ?? overALLThemeType) {
      case 1:
        underlineColor = appColors.secondaryColor;
        selectedTextColor = appColors.secondaryColor;
        unSelectedTabBGColor = appColors.customTextColor;
        isUnderLineNeeded = true;
      case 2:
      underlineColor = appColors.primaryColor;
      unSelectedTabBGColor = appColors.tabbarSecondaryColor;
      isUnderLineNeeded = true;
      case 3:
       isFullWidth = true;
        labelPad = 0;
        selectedTextColor = appColors.primaryColor;
        selectedTabBGColor = appColors.myTripsBGColor;
      default:
        isUnselectDecorate = true;
        labelPad = 12;
        selectedTextColor = appColors.secondaryColor;
        selectedTabBGColor = appColors.theme4AppBarBg;
    }
  return [
    ConditionalParentWidget(
      condition: isFullWidth,
      parentBuilder: (child) =>
          CustomBorderContainer(
        margin: pad(w: AppDimen.startMargin),
        padding: pad(a: 5),
        height: 50,
        borderRadius: AppDimen.appBorderRadius,
        alignment: AlignmentDirectional.center,
        body: child,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(AppDimen.appBorderRadius),
        child: TabBar(
          controller: tabController,
          indicatorWeight: 0,
          dividerColor: selectedTextColor != null && !isUnderLineNeeded ? Colors.transparent : null,
          indicator: underlineColor !=null ?
          UnderlineTabIndicator(
            borderRadius: BorderRadius.all(Radius.circular(AppDimen.appBorderRadius)),
            borderSide: BorderSide(
              width: 1.5,
              color:underlineColor,
            ),
          ): BoxDecoration(
            borderRadius: BorderRadius.circular(
              AppDimen.appBorderRadius,
            ),
            border: isUnselectDecorate ? Border.all(color: appColors.secondaryColor) : null,
            color: selectedTabBGColor,
          ),
          labelStyle: TextStyle(
              color: selectedTextColor ?? appColors.customTextColor,
              fontSize: AppDimen.textSize_18,
              fontFamily: AppFont.font,
              fontWeight: FontWeight.w500
          ),

          unselectedLabelStyle: TextStyle(
              color: unSelectedTabBGColor ?? appColors.placeholderColor,
              fontSize: AppDimen.textSize_18,
              fontFamily: AppFont.font,
              fontWeight: FontWeight.w500
          ),
          isScrollable: true,
          tabAlignment: TabAlignment.start,
          labelPadding: pad(end: labelPad,h:0),
          tabs: tabs.asMap().entries.map((entry) =>
               ConditionalParentWidget(
                 condition: isUnselectDecorate || isFullWidth,
                 parentBuilder: (child) =>
                 isFullWidth ? CustomContainer(
                   constraints: BoxConstraints(minWidth: (themeType ?? overALLThemeType) == 3 ? ((deviceWidth-60)/tabs.length) : 0),
                   height: 40,
                   padding: pad(w: 15),
                   body: child,
                 ) :
                 CustomBorderContainer(
                     padding: pad(w: 15,h: 5),
                     borderRadius: AppDimen.appBorderRadius,
                     body: child),
                   child:  Tab(text: entry.value, iconMargin: EdgeInsets.zero,height: 30,))

          )
              .toList(),
        ).toPad(horizontal: isFullWidth ? 0 : AppDimen.startMargin),
      ),
    ),
    if(isDynamicWidth ?? false) 10.toHeight(),
    TabBarView(
      controller:tabController,
      physics:physics ?? (!isLoading  ? const ClampingScrollPhysics() : const NeverScrollableScrollPhysics()),
      children:  tabBarWidgets,
    ).toStretch()
  ].toColumn(mainAxisSize: MainAxisSize.max).toResizeWidget(width: deviceWidth,height: deviceHeight);

}


Widget showSearchableSpanWidget(
    {required String primary,
    Color? primaryColor,
    required String search,
    GestureTapCallback? searchTextNavigation,
    double? fontSize,
    FontWeight? searchTextFontWeight,
    bool? isShowContainerForSearchText,
    Color? containerColor,
    Color? highlightColor}) {
  return !(isShowContainerForSearchText ?? false)
      ? RichText(
          text: TextSpan(
            children: getTextSpans(
                searchTextWithLinks: {search: searchTextNavigation ?? () {}},
                primaryText: primary,
                primaryColor: primaryColor,
                fontWeight: searchTextFontWeight,
                highlightColor: highlightColor ?? appColors.secondaryColor),
            style: TextStyle(
              fontFamily: AppFont.font,
              color: appColors.black,
              fontSize: fontSize ?? AppDimen.textSize_14,
            ),
          ),
        )
      : [
          RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: primary.split('\n\n')[0],
            style: TextStyle(
              fontFamily: AppFont.font,
              color: primaryColor ?? appColors.black,
              fontSize:fontSize ?? AppDimen.textSize_14,
            ),
          ),
        ]
      )
    ),
    15.toHeight(),
    primary.split('\n\n').length > 1 ? CustomContainer(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: appLayoutMap[AppLayout.viewCar]?.themeType == 4 ? appColors.cancellationColor :  containerColor ?? appColors.myTripsBGColor,
      ),
      padding: pad(h: 15, w: 15),
      body: containerColor != null ? RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "${primary.split('\n\n')[1].split(":")[0]}:",
              style: TextStyle(
                fontFamily: AppFont.font,
                color: primaryColor ?? appColors.secondaryColor,
                fontSize:fontSize ?? AppDimen.textSize_14,
              ),
            ),
            TextSpan(
              text: primary.split('\n\n')[1].split(":")[1],
              style: TextStyle(
                fontFamily: AppFont.font,
                color: primaryColor ?? appColors.customTextColor,
                fontSize:fontSize ?? AppDimen.textSize_14,
              ),
            )
          ]
        )
      ) : RichText(
          text: TextSpan(
              children: [
                TextSpan(
                  text: primary.split('\n\n')[1],
                  style: TextStyle(
                    fontFamily: AppFont.font,
                    color: primaryColor ?? (containerColor != null ? appColors.customTextColor : appColors.secondaryColor),
                    fontSize:fontSize ?? AppDimen.textSize_14,
                  ),
                ),
              ]
          )
      )
    ) : const SizedBox.shrink(),
  ].toColumn();
}


(String,DateTime) getDateFormat({String? dateFormat, required dynamic milliSec, bool localized = true}) {
  String msStr = milliSec?.toString() ?? "";
  if (msStr == "null" || msStr.isEmpty || msStr == "undefined") {
    msStr = DateTime.now().millisecondsSinceEpoch.toString();
  }
  final value = DateTime.fromMillisecondsSinceEpoch(int.parse(msStr));
  final pattern = dateFormat ?? commonDateFormat;
  if (!localized) return value.convert_MDY(format: pattern);

  final locale = (Get.locale ?? const Locale('en')).toLanguageTag();
  if (pattern == commonDateFormat || pattern == dobformat) {
    return (LocalizedDateTime.shortDate(value, locale), value);
  }
  if (pattern == userProfileCreateFormat) {
    return (intl.DateFormat.yMMM(locale).format(value), value);
  }
  if (pattern == checkAvailabilityCalenderFormat || pattern == transactionFromatMD) {
    return (intl.DateFormat.MMMd(locale).format(value), value);
  }
  if (pattern == filterCalendarformat) {
    return ('${intl.DateFormat.E(locale).format(value)}\n${intl.DateFormat.MMMd(locale).format(value)}', value);
  }
  if (pattern == reservationDateformat || pattern == servicePlanDateFormat) {
    return (LocalizedDateTime.dateWithWeekday(value, locale), value);
  }
  if (pattern == filterselectedDateformat || pattern == propertyListDateformat || pattern == transactionFromat) {
    return (LocalizedDateTime.mediumDate(value, locale), value);
  }
  return (intl.DateFormat(pattern, locale).format(value), value);
}

extension FormattedPrice on num {
  String toFormattedString() {
    if (this == toInt()) {
      return toInt().toString();
    }
    return toString();
  }
}

String removeLastCharacter(String input) {
  return input.substring(0, input.length - 1);
}

Widget toListImageRow(
    {required String photo,
    required int id,
    required List<Widget> ListItemWidgets,
    bool isshimmerloading = false,
    double? width,
    String? placeholderURL,
    Widget? selectedIconWidget,
    bool removePaddingAfterImage = false,
    bool? showBorderForImage,
    double? containerBorderRadius,
    double? borderRadius,
    double? height,
    Color? borderColor,
    double? borderWidth,
      Color? bgColor,
      Clip? clipBehavior,}) {
  return IntrinsicHeight(
    child: [
      [
        ConditionalParentWidget(
            condition: (showBorderForImage ?? false),
            parentBuilder: (Widget child) {
              return CustomBorderContainer(
                padding: pad(a: 7),
                borderRadius: containerBorderRadius,
                borderColor: borderColor,
                borderWidth: borderWidth,
                color: bgColor?? Colors.transparent,
                body: child,
              );
            },
            child: CustomClipNetworkImage(
              imageUrl: (photo.isNotEmpty ? photo : 'photo'),
              width: width ?? 115,
              height: height ?? (width != null ? width - 20 : 90),
              shimmerColor: appColors.shimmerplaceholderColor,
              isShimmerView: isshimmerloading,
              borderRadius: BorderRadius.all(
                  Radius.circular(borderRadius ?? AppDimen.appBorderRadius)),
              placeholderURL: placeholderURL,
              placeholderWidget: CustomContainer(
                padding: pad(a: 30),
                color: (overALLThemeType == 1) ? appColors.white : Colors.white12,
                body: isshimmerloading
                    ? null
                    : ((overALLThemeType == 1 ? Assets.drawablePropertyListImageTheme1 : (overALLThemeType == 2) ? Assets.drawablePropertyListImageTheme2 : (overALLThemeType == 3) ? Assets.drawablePropertyListImageTheme3 : Assets.drawablePropertyListImageTheme4)
                    .toSVG(height: 5, width: 5, fit: BoxFit.scaleDown, colour: appColors.black.withOpacity(0.26))
                    .toResizeWidget(height: 5, width: 5))
              ),
            ),
          ),
          if (selectedIconWidget != null)
            PositionedDirectional(
              top: -5,
              end: 0,
              child: selectedIconWidget,
            ),
            // selectedIconWidget.toPositionedAlign(
            //     alignment: AlignmentDirectional.topEnd)
      ].toStack(clipBehavior: clipBehavior).toResizeWidget(
            width: (width ?? 115)+(removePaddingAfterImage ? 0 : 20),
          ),
      12.toWidth(),
      [
        for (Widget itemWidget in ListItemWidgets) itemWidget,
      ].toColumn().toStretch(isExpanded: false)
    ].toRow(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start),
  );
}

class HTMLWidgetFactory extends WidgetFactory with UrlLauncherFactory {}

mixin UrlLauncherFactory on WidgetFactory {
  @override
  Future<bool> onTapUrl(String url) async {
    final result = await super.onTapUrl(url);
    if (result) {
      return result;
    }
    final ok = await canLaunchUrl(Uri.parse(url));
    if (!ok) {
      return false;
    }
    return launchUrl(Uri.parse(url));
  }
}


Widget getLinearProgress({required RxBool isShowLoad}){
  return Obx(() {
    debugPrint('isShowLoad.value: ${isShowLoad.value}');
    return  isShowLoad.value ?
    LinearProgressIndicator(
      backgroundColor: Colors.transparent,
      valueColor: AlwaysStoppedAnimation<Color>(appColors.secondaryColor),
      minHeight: 2,
      borderRadius: BorderRadius.circular(40),
    ) : const SizedBox.shrink();

  });
}
