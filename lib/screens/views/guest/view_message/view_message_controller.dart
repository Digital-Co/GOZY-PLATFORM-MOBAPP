import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:gozy/config/client.dart';
import 'package:gozy/constant.dart';
import 'package:gozy/graphql/ListDetail/__generated__/ListingDetails.req.gql.dart';
import 'package:gozy/graphql/__generated__/all_thread_fragment.data.gql.dart';
import 'package:gozy/graphql/__generated__/all_thread_fragment.req.gql.dart';
import 'package:gozy/graphql/__generated__/listing_fragment.data.gql.dart';
import 'package:gozy/graphql/__generated__/listing_fragment.req.gql.dart';
import 'package:gozy/graphql/__generated__/user_profile_fragment.data.gql.dart';
import 'package:gozy/graphql/__generated__/user_profile_fragment.req.gql.dart';
import 'package:gozy/graphql/booking/getBillingCalculation/__generated__/get_billing_calculation.data.gql.dart';
import 'package:gozy/graphql/booking/getBillingCalculation/__generated__/get_billing_calculation.req.gql.dart';
import 'package:gozy/graphql/inbox/__generated__/Inbox.data.gql.dart';
import 'package:gozy/graphql/inbox/__generated__/Inbox.req.gql.dart';
import 'package:gozy/screens/views/guest/inbox/inbox_controller.dart';
import 'package:gozy/screens/views/guest/my_trips/my_trip_list_navigator.dart';
import 'package:gozy/screens/views/home/home_controller.dart';
import 'package:gozy/utils/common_api_controller.dart';
import 'package:gozy/utils/text_editing_controller.dart';
import 'package:gozy/widgets/common_extension_functions.dart';

class ViewMessageController extends InboxController {
  RxInt viewMessageCurrentpage = 1.obs;
  RxInt messagelength = 0.obs;
  RxInt updatedThreadId = 0.obs;

  List<GgetThreadsData_getThreads_results_threadItems?>? viewMessageList = [];
  GuserProfileFragmentData? senterProfile, receiverProfile;
  GgetThreadsData_getThreads_results_threadItemForType? threadItemForType;
  int viewMessageListCount = 0, listId = 0;
  int  threadid = 0;
  String? lastMessageContent;
  bool updatePendingViewMessage = false;

  GuserProfileFragmentData? userInfo;

  ScrollController viewMessageScrollController = ScrollController();
  var sentMessageController = CustomTextEditingController();
  String? sentMessageText;
  CustomFocusNode messageFocusNode = CustomFocusNode();
  GallThreadsFragmentData? threaditem;
  String timeleft = '';
  dynamic listingdata;
  String messageType = 'message';

  void getThreads() {
    final params = GgetThreadsReq((b) => b
      ..vars.threadType = (appPreference.isOwner! ? 'owner' : 'renter')
      ..vars.currentPage = viewMessageCurrentpage.value
      ..vars.threadId = threadid
      ..vars.build());
    if(appPreference.accessToken !=null &&  appPreference.accessToken!.isNotEmpty){
      getLink();
    }
    FerryLoggerClient.makeRequest(params, this, getThreads, isViewLoader: false, isStartLoader: false)
        ?.then((res) {
      GgetThreadsData allThreadsData = res.data as GgetThreadsData;
      listId = allThreadsData.getThreads?.results?.listId ?? 0;
      GuserProfileFragmentData? guestfragment =
          getuserInfo(userId: allThreadsData.getThreads?.results?.guestProfile?.id ?? '').$1;
      GuserProfileFragmentData? hostfragment =
          getuserInfo(userId: allThreadsData.getThreads?.results?.hostProfile?.id ?? '').$1;

      if (guestfragment?.id == appPreference.userID) {
        senterProfile = guestfragment;
        receiverProfile = hostfragment;
      } else {
        receiverProfile = guestfragment;
        senterProfile = hostfragment;
      }

      if (appPreference.isOwner!) {
        userInfo = getuserInfo(userId: allThreadsData.getThreads?.results?.hostProfile?.id ?? '').$1;
      } else {
        userInfo = getuserInfo(userId: allThreadsData.getThreads?.results?.guestProfile?.id ?? '').$1;
      }

      threadItemForType = allThreadsData.getThreads?.results?.threadItemForType;
      debugPrint('threadItemForType: getthread: $threadItemForType');
      if (viewMessageCurrentpage.value == 1) {
        viewMessageList = allThreadsData.getThreads?.results?.threadItems?.toList();
        lastMessageContent = allThreadsData.getThreads?.results?.threadItems?.first?.content;
      } else {
        viewMessageList?.addAll(allThreadsData.getThreads?.results?.threadItems?.toList() ?? []);
      }
      viewMessageListCount = allThreadsData.getThreads?.results?.getThreadCount ?? 0;

      Future.delayed(const Duration(milliseconds: 100)).then((value) {
        debugPrint(
            "messageUnreadCount: intial: ${rxguestUnreadCount.value} ---host:  ${rxhostUnreadCount.value} ---api: ");
        if (appPreference.isOwner!) {
          int unreadcount = rxhostUnreadCount.value;
          change(rxVariable: rxhostUnreadCount, value: unreadcount);
        } else {
          int unreadcount = rxguestUnreadCount.value;
          change(rxVariable: rxguestUnreadCount, value: unreadcount);
        }

        debugPrint("messageUnreadCount: ${rxguestUnreadCount.value} ---host:  ${rxhostUnreadCount.value}");
        updateMessageRead();
        if (Get.arguments != null && Get.arguments['message'] != null) {
          updateOtherThread(Get.arguments['message'], isIncreaseCount: false, isRead: true);
        }
        isLoading.value = false;
        print('test9 message${isLoading.hashCode}');
      });
    });
  }

  void getThreadReservationId() {
    final params = GgetThreadsReq((b) => b
      ..vars.threadType = (appPreference.isOwner! ? 'owner' : 'renter')
      ..vars.currentPage = viewMessageCurrentpage.value
      ..vars.threadId = threadid
      ..vars.build());

    FerryLoggerClient.makeRequest(params, this, getThreads, isViewLoader: false, isStartLoader: false)
        ?.then((res) {
      GgetThreadsData allThreadsData = res.data as GgetThreadsData;
      reservationId = allThreadsData.getThreads?.results?.threadItemForType?.reservationId ?? 1;
      getReservation();
    });
  }

  void sentMessage() {
    final params = GsendMessageReq((b) => b
      ..vars.type = messageType
      ..vars.content = messageType == 'message' ? sentMessageText : null
      ..vars.threadId = threadid
      ..vars.startDate = messageType == 'message'
          ? null
          : getDateFormat(dateFormat: preApprovalDateFormat, milliSec: threadItemForType?.startDate, localized: false).$1
      ..vars.endDate = messageType == 'message'
          ? null
          : getDateFormat(dateFormat: preApprovalDateFormat, milliSec: threadItemForType?.endDate, localized: false).$1
      ..vars.personCapacity = messageType == 'message' ? null : threadItemForType?.personCapacity
      ..vars.startTime = double.tryParse(threadItemForType?.startTime.toString() ?? '0.0')
      ..vars.endTime = double.tryParse(threadItemForType?.endTime.toString() ?? '0.0')
      ..vars.build());
    updatePendingViewMessage = messageType == 'message';

    FerryLoggerClient.makeRequest(params, this, sentMessage, isViewLoader: false, isBottomSheetOpen: true)
        ?.then((res) {
      sentMessageController.clear();
      GsendMessageData sendMessageData = res.data as GsendMessageData;
      int? id = sendMessageData.sendMessage?.results?.id;
      debugPrint("messageType: $messageType");
      updateSentMessageThreads(messageType: messageType, id: id);
    });
  }

  void gethomeItemDetail({bool isbook = false}) {
    final params = GviewListingDetailsReq((b) => b
      ..vars.listId = listId
      ..vars.preview = false
      ..vars.build());
    FerryLoggerClient.makeRequest(params, this, gethomeItemDetail)?.then((res) {
      GviewListingDetailsFragmentData? fragdata = getViewlistingFragmentData();
      if (isbook) {
        listingdata = fragdata;
        checkNetwork(getBillingcalculationData);
      } else {
        isLoading.value = false;
        myTripListNavigator
            .navigateScreen(MyTripListScreen.propertyDetail, param: [fragdata, "propertydetail"]);
      }
    });
  }

  GviewListingDetailsFragmentData? getViewlistingFragmentData() {
    GviewListingDetailsFragmentReq listingfrag =
        GviewListingDetailsFragmentReq((b) => b..idFields = {'id': listId});
    GviewListingDetailsFragmentData? fragdata = FerryLoggerClient.client?.cache.readFragment(listingfrag);
    return fragdata;
  }

  void updateReceivedMessage(
    Map<String, dynamic> notMap,
  ) {
    debugPrint("updateReceivedMessage : notMap $notMap --- ${Get.currentRoute}");
    if (threadid == 0) {
      threadid = int.parse(notMap['threadId'].toString() ?? '0');
    }

    var builder = _createAllThreadBuilder(messageMap: notMap, isRead: Get.currentRoute == '/ViewMessagePage');
    viewMessageList?.insert(
        0, GgetThreadsData_getThreads_results_threadItems.fromJson(builder.build().toJson()));
    if (viewMessageScrollController.hasClients) {
      viewMessageScrollController.jumpTo(0);
    }
    viewMessageListCount++;
    if (Get.currentRoute == '/ViewMessagePage') {
      lastMessageContent = null;
      checkNetwork(updateMessageRead);
    }

    InboxController inboxController = Get.find();
    inboxController.refreshList();
  }

  void updateOtherThread(Map<String, dynamic> notMap, {bool isIncreaseCount = true, bool isRead = false}) {
    GallThreadsFragmentData_threadItemBuilder builder;
    if (isIncreaseCount) {
      if (appPreference.isOwner!) {
        int unreadcount = rxhostUnreadCount.value + 1;
        change(rxVariable: rxhostUnreadCount, value: unreadcount);
      } else {
        int unreadcount = rxguestUnreadCount.value + 1;
        change(rxVariable: rxguestUnreadCount, value: unreadcount);
      }
    } else {
      notMap = viewMessageList?.first?.toJson() ?? {};
    }
    builder = _createAllThreadBuilder(messageMap: notMap, isRead: isRead);

    InboxController inboxController = Get.find();
    inboxController.refreshList();
  }

  void getBillingcalculationData() {
    (String, DateTime) startDate =
        getDateFormat(dateFormat: commonDateFormat, milliSec: threadItemForType?.startDate, localized: false);
    (String, DateTime) endDate =
        getDateFormat(dateFormat: commonDateFormat, milliSec: threadItemForType?.endDate, localized: false);

    debugPrint('threadItemForType: $threadItemForType');
    final getBillingCalculationReq = GgetBillingCalculationReq((b) => b
      ..vars.listId = listId
      ..vars.startDate = startDate.$1
      ..vars.startTime = viewMessageList?.last?.startTime
      ..vars.endTime = viewMessageList?.last?.endTime
      ..vars.endDate = endDate.$1
      ..vars.convertCurrency = appPreference.preferredCurrency
      ..vars.guests = threadItemForType?.personCapacity
      ..vars.build());
    FerryLoggerClient.makeRequest(getBillingCalculationReq, this, getBillingcalculationData)?.then((res) {
      GgetBillingCalculationData billingCalcuationData = res.data as GgetBillingCalculationData;
      debugPrint('threadItemForTypelistingdata: ${listingdata}');
      contactHostBookingType = 'instant';
      Map<String, dynamic> map = {};
      map['billingCalcuationData'] = billingCalcuationData;
      map['itemInfo'] = listingdata;
      map['updatedGuestCount'] = (threadItemForType?.personCapacity ?? 1).obs;
      map['selectedDates'] = [startDate.$2, endDate.$2];
      map['selectedStartTime'] = (threadItemForType?.startTime ??viewMessageList?.last?.startTime)?.convertTo12Hour().obs;
      map['selectedEndTime'] =( threadItemForType?.endTime ?? viewMessageList?.last?.startTime)?.convertTo12Hour().obs;
      map['pageType'] = 'pay';
      map['threadId'] = threadid;
      map['editDisable'] = true;
      map["isFromViewMessage"] = true;

      debugPrint("threadItemForType?.personCapacity: ${threadItemForType?.startTime} --- ${ threadItemForType?.endTime}");
      myTripListNavigator.navigateScreen(MyTripListScreen.confirmAndPay, param: map);
      isLoading.value = false;
    });
  }

  void checkUserInfoValidation() {
    bool validate = checkUserVerficiation().isValidate(controller: this);
    if (validate) {
      if(currencyRates ==null) {
        getCurrencyRates().then((value) {
          listingdata = getViewlistingFragmentData();
          if (listingdata == null) {
            gethomeItemDetail(isbook: true);
          } else {
            getBillingcalculationData();
          }
        });
      } else {
        listingdata = getViewlistingFragmentData();
        if (listingdata == null) {
          gethomeItemDetail(isbook: true);
        } else {
          getBillingcalculationData();
        }
      }

    }
  }

  void moveToListDetailPage() {
    dynamic listingdata = threaditem?.listData;
    if (listingdata == null) {
      listingdata = getViewlistingFragmentData();

      if (listingdata == null) {
        checkNetwork(gethomeItemDetail);
      } else {
        myTripListNavigator
            .navigateScreen(MyTripListScreen.propertyDetail, param: [listingdata, "propertydetail"]);
      }
    } else {
      myTripListNavigator
          .navigateScreen(MyTripListScreen.propertyDetail, param: [listingdata, "propertydetail"]);
    }

    if (listingdata != null) {
      isLoading.value = false;
    }
  }

  void updatethreadItemforTypeBuilder({required String messageType, int? id}) {
    debugPrint("updatethreadItemforTypeBuilder: $messageType --- $id");
    debugPrint("updatethreadItemforTypeBuilder: ${viewMessageList?.last}");
    var threadItemtypebuilder = GgetThreadsData_getThreads_results_threadItemForTypeBuilder();
    threadItemtypebuilder
      ..id = id
      ..threadId = threadid
      ..content = messageType == 'message' ? sentMessageText : null
      ..isRead = true
      ..personCapacity = viewMessageList?.last?.personCapacity ?? noOfGuests ?? 0
      ..createdAt = DateTime.now().millisecondsSinceEpoch.toString()
      ..sentBy = appPreference.userID
      ..reservationId = reservationId
      ..startDate = viewMessageList?.last?.startDate
      ..endDate = viewMessageList?.last?.endDate
      ..startTime = viewMessageList?.last?.startTime
      ..endTime = viewMessageList?.last?.endTime
      ..type = messageType;
    threadItemForType = threadItemtypebuilder.build();
    update();
  }

  void updateSentMessageThreads({required String messageType, String? message, int? id}) {
    debugPrint("updateSentMessageThreads: ${viewMessageList?.last} --- ${messageType}");
    debugPrint("updateSentMessageThreads: bookingUserId --- ${bookingUserId} <-> ${appPreference.userID}");
    change(rxVariable: isRxBottomSheetLoading, value: false);
    isLoading.value = false;
    var builder = GallThreadsFragmentData_threadItemBuilder();
    builder
      ..id = id
      ..threadId = threadid
      ..sentBy =  bookingUserId?.toString() ?? appPreference.userID
      ..content = (messageType == 'message' || messageType.contains('cancel')) && message != null && message.isNotEmpty ?
      message : sentMessageText
      ..isRead = true
      ..createdAt = DateTime.now().millisecondsSinceEpoch.toString()
      ..personCapacity = (viewMessageList?.isEmpty ?? true)
          ? 1
          : viewMessageList?.last != null
              ? viewMessageList?.last?.personCapacity ?? 1
              : 1
      ..startDate = messageType == 'message' ? null : viewMessageList?.last?.startDate
      ..endDate = messageType == 'message' ? null : viewMessageList?.last?.endDate
      ..startTime = messageType == 'message' ? null : viewMessageList?.last?.startTime
      ..endTime = messageType == 'message' ? null : viewMessageList?.last?.endTime
      ..type = messageType;
    bookingUserId = null;

    viewMessageList?.insert(0, GgetThreadsData_getThreads_results_threadItems.fromJson(builder.build().toJson()));
    viewMessageListCount++;
    InboxController inboxController = Get.find();
    inboxController.refreshList();
    debugPrint("updateSentMessageThreads: $messageType ,,, $id ,,, $builder ,,, $threadid");
    if (messageType != 'message') {
      updatethreadItemforTypeBuilder(messageType: messageType, id: id);
    }
    if(sentMessageController.text.isEmpty) {
      sentMessageText = "";
      messagelength.value = 0;
    }
  }

  void updateMessageRead() {
    final params = GreadMessageReq((b) => b
      ..vars.threadId = threadid
      ..vars.build());
    FerryLoggerClient.makeRequest(params, this, updateMessageRead, isViewLoader: false)?.then((res) {
      (GallThreadsFragmentData?, GallThreadsFragmentReq) info = getallThreadsInfo(threadId: threadid);
      bool isRead = info.$1?.isRead ?? false;
      HomeController homeCtrl = Get.find<HomeController>();
       getUnreadCount(isViewLoader: false);
      if (!appPreference.isOwner!) {
        homeCtrl.change(rxVariable: rxguestUnreadCount, value: rxguestUnreadCount.value);
      } else {
        homeCtrl.change(rxVariable: rxhostUnreadCount, value: rxhostUnreadCount.value);
      }
      homeCtrl.isLoading.value = false;
      isLoading.value = false;
      if (!isRead) {
        debugPrint(
            "updateMessageRead: ${info.$1?.threadItem?.type} --- ${threadItemForType?.type} ---${viewMessageList?.first?.content}");
        if (info.$1 != null) {
          FerryLoggerClient.client?.cache.writeFragment(info.$2, info.$1?.rebuild((builder) {
            builder.isRead = true;
            builder.threadItem.content = lastMessageContent;
            builder.threadItem.type =
                viewMessageList?.first?.id == threadItemForType?.id ? threadItemForType?.type : 'message';
          }));
        }

        isLoading.refresh();
        InboxController inboxController = Get.find();
        inboxController.isLoading.refresh();
        Get.forceAppUpdate();
      }
    });
  }

  (GuserProfileFragmentData?, GuserProfileFragmentReq) getuserInfo({required String userId}) {
    GuserProfileFragmentReq fragmentReq = GuserProfileFragmentReq((b) => b..idFields = {'id': userId});
    return (FerryLoggerClient.client?.cache.readFragment(fragmentReq), fragmentReq);
  }

  GallThreadsFragmentData_threadItemBuilder _createAllThreadBuilder(
      {required Map<String, dynamic> messageMap, required bool isRead}) {
    var builder = GallThreadsFragmentData_threadItemBuilder();
    builder
      ..threadId = int.parse(messageMap['threadId'].toString() ?? '0')
      ..sentBy =  messageMap['senderId']?.toString() ?? (messageMap['guestId'].toString() != appPreference.userID.toString() ? messageMap['guestId'].toString() : messageMap['hostId'].toString())
      ..content = messageMap['content'] ?? messageMap['messageContent']
      ..isRead = isRead
      ..personCapacity = threadItemForType?.personCapacity
      ..createdAt = DateTime.now().millisecondsSinceEpoch.toString()
      ..startDate = viewMessageList!.isNotEmpty && viewMessageList?.last != null
          ? viewMessageList?.last?.startDate
          : DateTime.now().millisecondsSinceEpoch.toString()
      ..endDate = viewMessageList!.isNotEmpty && viewMessageList?.last != null
          ? viewMessageList?.last?.endDate
          : DateTime.now().millisecondsSinceEpoch.toString()
      ..startTime = viewMessageList!.isNotEmpty && viewMessageList?.last != null
          ? viewMessageList?.last?.startTime
          : 0.0
      ..endTime = viewMessageList!.isNotEmpty && viewMessageList?.last != null
          ? viewMessageList?.last?.endTime
          : 0.0
      ..type = messageMap['screenType'];
    return builder;
  }
}
