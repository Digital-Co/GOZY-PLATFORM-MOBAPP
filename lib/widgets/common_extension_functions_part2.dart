part of 'common_extension_functions.dart';

List<BoxShadow> getBottomBoxShadows(){
  return [
    BoxShadow(
      color: Colors.grey.withValues(alpha:0.1),
      blurRadius: 8.0,
      spreadRadius: 0.0,
      offset: Offset(0, -6.0),),
  ];
}

Widget get filterDivider => Divider(height: 1,thickness: 0.5,color: appColors.filterDividerColor,);
void appUpdate(){
  isDisableForceUpdate = true;
  Get.forceAppUpdate().then((_){
    isDisableForceUpdate = false;
  });
}
Widget get myTripsDivider => Divider(height: 1,thickness: 1,color: appColors.myTripsDividerColor,);
Widget get appReviewDivider => Divider(height: 1,thickness: 1,color: appColors.listingItemActionsBGColor,);
GestureTapCallback get onBack => (){Get.back();};
CustomFocusNode? currentFocusNode;
List<Widget> ListItemsWithDivider({required List<Widget> WidgetList,  Set<int>? noSpaceIndices,
  Set<int>? noDividerIndices, double space = 20, double? horizontalPad, bool? isPadForDivider, double? dividerWidth}){

  print("isPadForDivider-> $isPadForDivider");
  return [
    for (var (index, widget) in WidgetList.indexed) ...[
      // 1. Add the widget itself
      widget,

      // 2. Add Spacing (unless specifically removed or is the last item)
      if (index != WidgetList.length - 1 && !(noSpaceIndices?.contains(index) ?? false))
        space.toHeight(),

      // 3. Add Divider (unless specifically removed or is the last item)
      if (index != WidgetList.length - 1 && !(noDividerIndices?.contains(index) ?? false))
        ...[
          (isPadForDivider ?? false)
              ? filterDivider.toFitToDeviceWidth(width: dividerWidth).toResizeWidget(height: 1)
              : filterDivider.toPad(horizontal: horizontalPad),
        ],
      // 4. Add Spacing after Divider if one was added
      if (index != WidgetList.length - 1 && !(noDividerIndices?.contains(index) ?? false))
        space.toHeight(),
    ]
  ];
}

void showAppDatePicker({
  required BuildContext context,
  required dynamic controller,
  required AppLayout appLayout,
  required DateTime firstDate,
  required DateTime lastDate,
  required String dateFormat,
  DateTime? initialDate,
  String? okButtonContent,
  Locale? locale,
  required Function((String, DateTime)? selectedDate) onConfirm,
}) {
  DatePicker.showSimpleDatePicker(
    context,
    controller: controller,
    appLayout: appLayout,
    initialDate: initialDate ?? lastDate,
    firstDate: firstDate,
    lastDate: lastDate,
    okButtonContent: okButtonContent,
    locale: locale,
    dateFormat: dateFormat,
    itemTextStyle: const TextStyle(
      fontFamily: AppFont.font,
      fontSize: AppDimen.textSize_14,
    ),
    looping: false,
    onConfirmDate: (selectedFirstDate) {
      if (selectedFirstDate != null) {
        FocusManager.instance.primaryFocus?.unfocus();
        onConfirm(selectedFirstDate);
      }
    },
  );
}

ScrollingDotsEffect getScrollingDotEffect({Color? dotColor ,Color? inActiveStrokeColor , double? DotSize,int? maxVisibleDots}){
  return ScrollingDotsEffect(
    inActiveStrokeColor: inActiveStrokeColor ?? appColors.ratingBarDefaultColor,
    activeDotColor: dotColor ?? appColors.primaryColor,
    dotColor: inActiveStrokeColor!=null ? appColors.appBGColor : appColors.ratingBarDefaultColor,
    activeStrokeWidth: 2.6,
    activeDotScale: 1.3,
    maxVisibleDots: maxVisibleDots ?? 3,
    radius: DotSize ?? 8,
    spacing: 8,
    dotHeight: DotSize ?? 8,
    dotWidth: DotSize ?? 8,
  );
}

extension NumExtensions on num {
  bool get isInt => (this % 1) == 0;
}

extension DurationExtensions on Duration {
  String convertToReadableDuration() {
    var components = <String>[];

    var days = inDays;
    if (days != 0) {
      components.add('${days.toString().padLeft(2, '0')}d : ');
    }
    var hours = inHours % 24;
    if (hours != 0) {
      components.add('${hours.toString().padLeft(2, '0')}h : ');
    }
    var minutes = inMinutes % 60;
    if (minutes != 0) {
      components.add('${minutes.toString().padLeft(2, '0')}m : ');
    }

    var seconds = inSeconds % 60;
    var centiseconds =
        (inMilliseconds % 1000) ~/ 10;
    if (components.isEmpty || seconds != 0 || centiseconds != 0) {
      components.add(seconds.toString().padLeft(2, '0'));

      components.add('s');
    }
    return components.join();
  }
}

extension dynamicExtension on dynamic{
  String toNumberFormat({required String symbol, bool canConvertDouble = true, int? maximumFractionDigits, String? overrideLocale}){
    dynamic price = double.parse(toString()).roundOfDigit();

    // 1. Format numeric part with fixed en_US locale for consistent separators (comma for thousands, dot for decimal)
    var numberFormat = intl.NumberFormat.decimalPattern('en_US');
    if (canConvertDouble) {
      numberFormat.minimumFractionDigits = (maximumFractionDigits != null) ? 0 : 2;
      if (maximumFractionDigits != null) {
        numberFormat.maximumFractionDigits = maximumFractionDigits;
      }
    } else {
      numberFormat.minimumFractionDigits = 0;
      numberFormat.maximumFractionDigits = 0;
    }
    String formattedNumber = numberFormat.format(price);

    // 2. Determine symbol position based on current locale
    String localeString = overrideLocale ?? (Get.locale != null ? Get.locale.toString() : 'en');
    var currencyFormat = intl.NumberFormat.currency(locale: localeString, symbol: symbol);
    String example = currencyFormat.format(100);
    bool isSymbolAtEnd = example.trim().endsWith(symbol);

    // 3. Combine formatted number and symbol
    if (isSymbolAtEnd) {
      return "$formattedNumber $symbol".trim();
    } else {
      return "$symbol$formattedNumber".trim();
    }
  }
}
extension currencyTextSpanExtension on TextSpan{
  List<InlineSpan> toCurrencyTextSpan({required String symbol}){
    if (symbol.isEmpty) {
      return [TextSpan(text: text, style: style)];
    }

    final String formatted = text!;

    // Detect locale-determined symbol position from the already-formatted string
    final bool isSymbolAtEnd = formatted.trimRight().endsWith(symbol);

    final List<String> parts = formatted.split(symbol);
    final List<String> amountParts = parts.where((e) => e.isNotEmpty).toList();

    final TextSpan symbolSpan = TextSpan(
      text: symbol,
      style: style!.copyWith(fontFamilyFallback: ['Roboto']),
    );

    final List<InlineSpan> amountSpans = [
      for (final part in amountParts)
        TextSpan(text: part, style: style),
    ];

    // Respect locale-determined symbol position:
    // symbol-at-end: amount parts first, then symbol (e.g. French "1 234,56 A$")
    // symbol-at-start: symbol first, then amount parts (e.g. English "$1,234.56")
    if (isSymbolAtEnd) {
      return [...amountSpans, symbolSpan];
    } else {
      return [symbolSpan, ...amountSpans];
    }
  }
}

extension DisposeAllExtension<T> on Iterable<T> {
  void disposeAll() {
    if(isNotEmpty) {
      for (var item in this) {
        try {
          final void Function()? disposeItem = switch (item) {
            ChangeNotifier() => () => item.dispose(),
            Sink() => () => item.close(),
            StreamSubscription() => () => item.cancel(),
            Timer() => () => item.cancel(),
            AnimationEagerListenerMixin() => () => item.dispose(),
            _ => null,
          };
          disposeItem?.call();
        } catch (e) {
          debugPrint('disposeAll error for ${item.runtimeType}: $e');
        }
      }
    }
  }
}
class CustomFocusNode extends FocusNode {
  CustomFocusNode(){
    disposableObjects.add(this);
  }

  @override
  void addListener(VoidCallback listener) {
    super.addListener(listener);
  }
  void changeFocus(){
    unfocus();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      requestFocus();
    });
  }

}

extension DoubleExtension on num {
  static final Map<double, SizedBox> _heightCache = {};
  static final Map<double, SizedBox> _widthCache = {};
  Widget toWidth(){
    return  _widthCache.putIfAbsent(toDouble(), () => SizedBox(width: toDouble()));
  }
  Widget toHeight({Color? color}){
    return (color !=null) ?
    Container(height: toDouble(),color: color,):
    this >0 ?
     _heightCache.putIfAbsent(toDouble(), () => SizedBox(height: toDouble())) : const SizedBox.shrink();
  }
  double roundOfDigit({int digits = 2}){
    num mod = pow(10.0, digits);
    return ((this * mod).round().toDouble() / mod);
  }

  String currencyConverted({required String convertedCurrency, int decimalDigits = 2}){
    double price = roundOfDigit();

    final AppPreference appPreference = Get.find();
    Map<String, dynamic> currencyObject = jsonDecode(currencyRates);
    if (!currencyObject.containsKey(appPreference.preferredCurrency)) {
      return error_currency_not_found.tr;
    }

    double rate = double.parse(currencyObject[appPreference.preferredCurrency].toString());
    currencyObject[convertedCurrency];
    price;

    return (rate * (1 / currencyObject[convertedCurrency]) * price).toStringAsFixed(decimalDigits);
  }

  String toGenerateEmptyString({String? character}){
    return List.generate(toInt(), (_) => character ??' ').join();
  }

  String convertTo12Hour() {
    int minute = (this % 1 * 60).toInt();

    DateTime time = DateTime(2024, 1, 1, this.floor() % 24, minute);

    int h = time.hour % 12 == 0 ? 12 : time.hour % 12;
    String m = time.minute.toString().padLeft(2, '0');
    String period = time.hour >= 12 ? "PM" : "AM";

    return "$h:$m $period";
  }

}

extension validationExtension on Map<String, bool> {
  bool isValidate({required BaseController controller, bool isShowOnToast = false}){
    debugPrint("entry.value: $entries");
    for (var entry in entries) {
      debugPrint("entry.value: $entry");
      if(entry.value){
        controller.hideKeyBoard();
        if(isShowOnToast) {
          controller.showToast(entry.key);
        } else {
          controller.showSnackBar(entry.key,isltralign: true);
        }
        return false;
      }
    }
    return true;
  }
}
extension dateTimeExtension on DateTime {

  (String,DateTime) convert_MDY({required String format}) {

    intl.DateFormat dateFormat = intl.DateFormat(format);
    String formattedDate = dateFormat.format(this).trim();
    String dateRemovespaces = formattedDate.removeAllWhitespace;
    if(dateRemovespaces == '0AM'|| dateRemovespaces == '0PM'){
      formattedDate = formattedDate.replaceFirstMapped('0', (match) => '12');
    }
    return (formattedDate,dateFormat.parse(formattedDate));
  }

  bool isSameDate(DateTime other) {
    return year == other.year &&
        month == other.month &&
        day == other.day;
  }
}

extension StringExtension on String {
  Widget toSVG({Color? colour ,
    BlendMode colourBlendMode = BlendMode.srcIn,
    double? width,
    double? height,
    AlignmentGeometry? imageAlignment,
    Map<String,String>? replaceableValues,
    bool? isSvgfile,
    double? size,
    bool? isReverseRotation,
    double? clickableSize,
    int? quarterTurns,
    BoxFit? fit,
    bool enableReverseAndRTL = true,
    GestureTapCallback? onTap,
  })
  {

    bool isRTLAlignment = false;
    if(enableReverseAndRTL ) {
      bool isBackIcon = isRTLAlignment = (this == Assets.viewcarsLeftArrow || this == Assets.drawableFilterCalendarArrow || this == Assets.theme4BackArrow);
      if(isBackIcon && isReverseRotation == null) isReverseRotation = !isBackIcon;
    }


    bool isRTLAlign = ( this == Assets.drawableViewdetailArrow|| this == Assets.drawableRightArrow  || isRTLAlignment)
        ? intl.Bidi.isRtlLanguage(Get.locale?.languageCode) :false;
    int rotation = isRTLAlign ? 2 :0;
    rotation = isReverseRotation!=null && isReverseRotation ? (isRTLAlign ? 0 :2) : (isRTLAlign ? 2 :0);


    return   Material(
      color: Colors.transparent,
      child:  toOnTap(
        onTap: onTap,
        child: RotatedBox(
          quarterTurns: quarterTurns ?? rotation,
          child:
          ConditionalParentWidget(
            condition: clickableSize!=null,
            parentBuilder: (Widget child) =>
                Align(alignment:  imageAlignment ?? AlignmentDirectional.centerStart, child: child),
            child:

            isSvgfile !=null && isSvgfile ?
            SvgPicture.file(File(this),
              height: size ?? height,
              width: size ?? width,
              alignment: imageAlignment ?? Alignment.center,
              fit: fit ?? (clickableSize!=null ?  BoxFit.scaleDown : BoxFit.contain),
            ) :
            replaceableValues !=null ?
            SvgPicture.string(modifySvg(this,replaceableValues),
              height: size ?? height,
              colorFilter: colour ==null ? null :ColorFilter.mode(colour, colourBlendMode),
              width: size ?? width,
              alignment: imageAlignment ?? Alignment.center,
              fit: fit ?? (clickableSize!=null ?  BoxFit.scaleDown : BoxFit.contain),
            ) :

            SvgPicture.asset( this,
              colorFilter: colour ==null ? null :ColorFilter.mode(colour, colourBlendMode),
              height: size ?? height,
              width: size ?? width,
              alignment: imageAlignment ?? Alignment.center,
              fit: fit ?? (clickableSize!=null ?  BoxFit.scaleDown : BoxFit.contain),
            )
          ),
        ),
      ),
    ).toResizeWidget(width: clickableSize,height: clickableSize);
  }

  Widget toPng({
    double? width,
    double? height,
    AlignmentGeometry? imageAlignment,
    int? quarterTurns,
    BoxFit? fit,
    Color? colour
  })
  {
    return Material(
      color: Colors.transparent,
      child:   RotatedBox(
        quarterTurns: quarterTurns ?? 0,
        child: Image.asset(
          this,
          color: colour,
          height: height,
          width:   width,
          fit: fit,
          alignment: imageAlignment ?? Alignment.center,
        ),
      ),
    );
  }

  List<String> getAssetList(){
    final filteredAssets = App.assetManifest!.where((String key) => key.startsWith(this)).toList();
    return filteredAssets;
  }

  String getParticularLangContent({String? langCode}) {
    Map<String, String>? enlangmap = Get.translations['en'];
    String content = enlangmap !=null && enlangmap[this] !=null  ? enlangmap[this]! : this;
    return content;
  }
  String addNewlines( {int lineLength = 30, int minLineLength = 5}) {
    List<String> chunks = [];
    int i = 0;
    while (i < length) {
      int remaining = length - i;
      if (remaining < minLineLength && chunks.isNotEmpty) {
        chunks[chunks.length - 1] += substring(i);
        break;
      } else {
        int end = (i + lineLength < length) ? i + lineLength : length;
        chunks.add(substring(i, end));
        i = end;
      }
    }
    return chunks.join('\n');
  }

  String modifySvg(String svg, Map<String, String> replacements) {
    if(replacements.isNotEmpty) {
      replacements.forEach((key, value) {
        svg = svg.replaceAll(key, value);
      });
    }
    return svg;
  }



  CachedNetworkImage toNetworkImage2({Key? key,required String Url, double? width , double? height,BoxFit? fit, bool isRoundIcon = false, Widget? placeholderWidget,Widget? errorWidget, Color? color, ValueChanged<ImageProvider?>? imageBuilder, bool isFutureBuilderEnabled = false,double? borderRadius }){
    CachedNetworkImage? netimage;
    int cachesize = 100;
    netimage =    CachedNetworkImage(
      imageUrl: Url,
      key: key,
      memCacheWidth: cachesize,
      memCacheHeight: cachesize,
      imageBuilder: (context, imageProvider) => Container(
        width:width,
        height: height,
        decoration: BoxDecoration(
          shape: isRoundIcon ? BoxShape.circle : BoxShape.rectangle,
          borderRadius: isRoundIcon ? null :BorderRadius.circular(borderRadius ?? 0.2),
          color: color,
          image: DecorationImage(
              image: imageProvider, fit: fit),
        ),
      ),
      placeholder: (context, url) => placeholderWidget ?? const SizedBox.shrink(),
      errorWidget: (context, url, error) => errorWidget ?? placeholderWidget ?? const SizedBox.shrink(),
    ) ;
    return netimage;
  }



  Widget toNetworkIconImg({double? width, double? height,double? size,  String placeHolder = Assets.drawableFilterAmenitiesDefault, required GetxController controller , Color? iconColor, bool? isUpdateImage }){
    Widget? placeholderWidget = placeHolder.toSVG(colour: iconColor ?? appColors.black, size: size, fit: BoxFit.fitWidth);
    Widget?  netImage;
    debugPrint('networkiconwidget: ${NetworkiconsWidget[this]} -- $this');

    return NetworkiconsWidget[this] !=null ?
    Image(
      image: (NetworkiconsWidget[this] as Image).image,
      width:size ?? width,
      height: size ??  height,
      color: palletImages.contains(this)  ? null : iconColor ?? appColors.black,
    ) :
    !contains('null') && !contains('undefined') ?

    CachedNetworkImage(
      imageUrl: this,
      width: size ?? width,
      height: size ?? height,
      maxWidthDiskCache: 200,
      maxHeightDiskCache: 200,
      placeholder: (context, url) => placeholderWidget,
      errorWidget: (context, url, error) => placeholderWidget,
      imageBuilder: (context, imageProvider) {

        debugPrint('toNetworkIconImg: $this');

        netImage = Image(
          image: imageProvider,
          width: size ?? width,
          height: size ?? height,
          color: iconColor ?? appColors.black,
          colorBlendMode: BlendMode.srcIn,
        );

        NetworkiconsWidget[this] = netImage;

        WidgetsBinding.instance.addPostFrameCallback((_) {
          controller.update();
        });

        return netImage!;
      },
    ).toFutureBuilder(
      imageUrl: this,
      placeHolderWidget: placeholderWidget,
    ) : placeholderWidget;
  }

  String toUpperLowerCase() {
    return isNotEmpty ? "${this[0].toUpperCase()}${substring(1).toLowerCase()}" : "";
  }

  Widget toHTMLWidget({BaseController? controller, String? url}){
    return  HtmlWidget(replaceAll("\"", ""),
      baseUrl: Uri.parse(url ?? ''),
      factoryBuilder: () => HTMLWidgetFactory(),
      onLoadingBuilder: (a,b,c) =>  const SizedBox.shrink(),
      customStylesBuilder: (element) {
        if (element.localName == "p" ||
            element.localName == "body" ||
            element.localName == "h1" ||
            element.localName == "h2") {
          return {'padding': '0', 'margin': '0'};
        } else if (element.localName == "a") {
          return {"color": "#5e17eb","text-decoration-color": "#5e17eb" };
        }
        return null;
      },
      textStyle: TextStyle(
          color: appColors.textColor
      ),
    );


  }

  String RTLAlignmentalText(){
    if(intl.Bidi.hasAnyRtl(this)) {
      return intl.Bidi.enforceRtlInText(this);
    } else {
      return intl.Bidi.enforceLtrInText(this);
    }
  }


  Widget toExplanationTip(){
    return [
      Assets.drawableStepOneTip.toSVG(size: 15),
      5.toWidth(),
      CustomText(text: this,size: AppDimen.textSize_12,color: appColors.placeholderColor,maxLines: 10, fontWeight: AppFont.regular,).toStretch(isExpanded: false)
    ].toRow(crossAxisAlignment: CrossAxisAlignment.start,mainAxisSize: MainAxisSize.max,mainAxisAlignment: MainAxisAlignment.start);
  }


  String toNormalizeSpaces() {
    return replaceAll(RegExp(r'\s+'), ' ');
  }
}

Future<bool> validateImage(String imageUrl) async {

  http.Response res;
  try {
    res = await http.get(Uri.parse(imageUrl));
  } catch (e) {
    return false;
  }
  if (res.statusCode != 200) {
    return false;
  }
  return true;
}

/// Provides a reliable method in Flutter (Dart) to calculate billing days accurately
/// Handling edge cases:
/// - Same start and end time across dates (e.g., 23rd 1:30 PM to 24th 1:30 PM) -> 1 day
/// - End time exceeds start time (e.g., 23rd 1:30 PM to 24th 2:00 PM) -> 2 days
/// - Time range crosses midnight but duration is <= 24 hours -> 1 day
int calculateAccurateBillingDays({
  required DateTime startDate,
  required DateTime endDate,
  required String startTimeStr,
  required String endTimeStr,
}) {
  try {
    if (startTimeStr.isEmpty || endTimeStr.isEmpty) {
      int days = endDate.difference(startDate).inDays;
      return days > 0 ? days : 1;
    }

    // Parse time strings ("h:mm a" format, e.g. "1:30 PM")
    // Use fallback to catching other formats if needed
    final locale = (Get.locale ?? const Locale('en')).toLanguageTag();
    intl.DateFormat timeFormat = intl.DateFormat.jm(locale);
    DateTime startT = timeFormat.parse(startTimeStr);
    DateTime endT = timeFormat.parse(endTimeStr);

    // Create precise DateTime objects in UTC to prevent Daylight Saving Time (DST) 
    // anomalies from altering the duration by an hour.
    DateTime fullStart = DateTime.utc(
      startDate.year,
      startDate.month,
      startDate.day,
      startT.hour,
      startT.minute,
    );
    DateTime fullEnd = DateTime.utc(
      endDate.year,
      endDate.month,
      endDate.day,
      endT.hour,
      endT.minute,
    );

    // Calculate total duration in minutes
    // Using integer minutes avoids fractional hours rounding issues
    int durationInMinutes = fullEnd.difference(fullStart).inMinutes;

    if (durationInMinutes <= 0) {
      return 1; // Minimum billing day is 1
    }

    // A full day is 1440 minutes (24 * 60).
    // Pure integer division to completely avoid any floating-point `.ceil()` precision errors.
    int billingDays = durationInMinutes ~/ 1440;
    
    // If there is any minute remaining beyond exact 24-hour boundaries, it counts as an extra day
    if (durationInMinutes % 1440 > 0) {
      billingDays += 1;
    }

    return billingDays;
  } catch (e) {
    debugPrint("calculateAccurateBillingDays error: $e");
    // Fallback to simple date difference
    int backupDays = endDate.difference(startDate).inDays;
    return backupDays > 0 ? backupDays : 1;
  }
}
