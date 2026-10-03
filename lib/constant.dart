import 'dart:async';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:gozy/model/reason_guest_model.dart';
import 'package:gozy/resources/app_layout.dart';
import 'package:gozy/screens/views/base_controller.dart';
import 'graphql/getCountries/__generated__/getcountries.data.gql.dart';
import 'graphql/servicePlan/__generated__/servicePlan.data.gql.dart';


const String _gozyEnvironment =
    String.fromEnvironment('GOZY_ENV', defaultValue: 'production');
const String _defaultUploadUrl = _gozyEnvironment == 'qa'
    ? 'https://qa.gozyapp.com'
    : 'https://www.gozyapp.com';
const String _defaultGraphqlDomain = _gozyEnvironment == 'qa'
    ? 'https://qa.gozyapp.com/api'
    : 'https://www.gozyapp.com/api';

const String UPLOAD_URL = String.fromEnvironment(
  'UPLOAD_URL',
  defaultValue: _defaultUploadUrl,
);
const String GRAPHQL_DOMAIN = String.fromEnvironment(
  'GRAPHQL_DOMAIN',
  defaultValue: _defaultGraphqlDomain,
);
const String GRAPHQL_URL = "$GRAPHQL_DOMAIN/graphql";

String? SECURE_MAP_KEY;
const String APP_NAME = 'Gozy';
const String IOS_PACKAGE_NAME = 'com.gozy.app';

String stripeKey = "";

const String profileImagePath = "$UPLOAD_URL/images/avatar/";
const String servicePlanImagePath = "$UPLOAD_URL/images/servicePlans/";
const String servicePlanImagePathSmall = "$UPLOAD_URL/images/servicePlans/small_";
const String profileSmallImagePath = "$UPLOAD_URL/images/avatar/small_";
const String claimURL = "$UPLOAD_URL/images/claims/";

const String imgListingPopularLarge = "$UPLOAD_URL/images/popularLocation/";
const String imgListingPopularSmall = "$UPLOAD_URL/images/popularLocation/small_";
const String imgListingPopularMedium = "$UPLOAD_URL/images/popularLocation/medium_";

const String imgListingOriginal = "$UPLOAD_URL/images/upload/";
const String imgListingMedium = "$UPLOAD_URL/images/upload/x_medium_";
const String imgListingSmall = "$UPLOAD_URL/images/upload/small_";
const String documentImages = "$UPLOAD_URL/images/document/";

const String imgBanner = "$UPLOAD_URL/images/banner/";
const String imgAmenities = "$UPLOAD_URL/images/amenities/";

const String shareUrl = "$UPLOAD_URL/cars/";

const  uploadPhoto = "$UPLOAD_URL/uploadPhoto";
const  uploadListPhoto = "$UPLOAD_URL/uploadListPhoto";
const uploadDocumentPhoto = "$UPLOAD_URL/documentUpload";
const uploadWhyHostMedium = "$UPLOAD_URL/images/whyhost/medium_";
const uploadWhyHostOriginal = "$UPLOAD_URL/images/whyhost/";
const uploadClaimDamage = "$UPLOAD_URL/claim/photos";
const removeClaimDamage = "$UPLOAD_URL/remove/claim/photos/";

const getReservationMessage = "$GRAPHQL_DOMAIN/getReservationMessage";
const getCarTitleDescription = "$GRAPHQL_DOMAIN/getCarTitleDescription";
const getCarSuggestedRentPrice = "$GRAPHQL_DOMAIN/getCarSuggestedRentPrice";

var changeTextFieldFocus = true.obs;
var isDeletingFile = false.obs;
String? authToken="";
int sdkversion = 0;
String versionCode = "";
int StepBtnclickInterval = 250;
String dobformat = "MM / dd / yyyy";
String dobDialogFormat = "MMM-dd-yyyy";
String birthdayHintFormat = "MM / DD / YYYY";
String licenseFormat = "MM/DD/YYYY";
String dobAPIFormat = "MM-yyyy-dd";
String commonDateFormat = "MM/dd/yyyy";
String checkAvailabilityCalenderFormat = "MMM d";
String filterCalendarformat = "EEE\n$checkAvailabilityCalenderFormat";
String filterselectedDateformat = "$checkAvailabilityCalenderFormat, yyyy";
String reservationDateformat = "EEE, $checkAvailabilityCalenderFormat, yyyy";
String propertyListDateformat = "MMM d, yyyy";
String userProfileCreateFormat = "MMM, yyyy";
String transactionFromatMD = "MMM d,";
String transactionFromat = "$transactionFromatMD yyyy";
String isPaymentFrom = "";
GgetAllUserServicePlanData_getAllUserServicePlan_results? servicePlanList;
int placesListFetchDurationInSec = 400;
String preApprovalDateFormat = "EEE LLL dd HH:mm:ss Z yyyy";
String servicePlanDateFormat = "EEE, MMM dd, yyyy";
String receiptTimeFormat = "hh:mm a";
List<ReasonGuestsModel> reasonForBooking = [];
bool showErrorMsg = true;
bool hideGoogleMap = false;
List<ReasonGuestsModel> targetGuest = [];
String localImagePath ="";
String zipCodeHint = "94101";

final urlRegExp = RegExp(
    r"((https?:www\.)|(https?:\/\/)|(www\.))[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9]{1,6}(\/[-a-zA-Z0-9()@:%_\+.~#?&\/=]*)?");

String defaultLanguageName = "English";
String defaultLanguage = "en";
String defaultThemeMode = "auto";
String defaultCurrency = "USD";
WidgetStateProperty<Color?> inkwellOverlayColor = WidgetStateProperty.resolveWith<Color?>(
     (Set<WidgetState> states) {
  return Colors.transparent;
 },
);
String defaultDialCode = "+1";
double bottomPadForExtendBody = 60.0;
double bottomViewPadding = 0,topViewPadding = 0;
Widget? dotCenter120HeightLoader, dotCenter60HeightLoader;
Map<String,Widget> cachedWidgets = {};
RxBool appThemeChanged = false.obs;
RxBool isDateChange = false.obs;
BaseController basecontroller = BaseController();
Set<String> downloadedLanguages = Set();
int showLessFilterItemCount = 2;

int respondHours = 24;
double aiContainerBottomRadius = 12.0;
var photoUploadSizeInMb = 500;
var maximumImageUpload = 20;
String notificationChannelId = "$APP_NAME"+"notificationChannelId";
String notificationChannelName = "$APP_NAME"+"notificationChannelName";
String notificationChannelDesc = "$APP_NAME"+"notificationChannelDescription";



bool aiTextGeneration = false;

bool guestContactMessage = false;
bool guestBookingRequest = false;
bool aiAccessTitleDescription = false;
bool aiAccessMarketPricing = false;
bool aiOwnerAccess = false;
bool ownerServicePlanAIFeatureStatus = false;
bool renterServicePlanAIFeatureStatus = false;
bool isServicePlanEnabled = false;

double signUpTextFieldPadding = 16;
int textFieldCharacterLength = 25;
bool isClaimMenuAdded = false;
String? ViewdetailArrowsvg;
CameraController? cameraController;
List disposableObjects = [];
Map<String,List> disbpsablePageObjects = {};
String playStoreLink = '', appStoreLink = '';
InternetStatus? internetStatus;

var compressImageQuality = 99;
int characterLengthOTP = 4;
String googleMapStyle= '';
var isShowLoader = true;
var isDisableForceUpdate = false;
Map<String,String>? bookingTimeList;
Map<String,dynamic> NetworkiconsWidget = {};
Map<AppLayout,AppLayoutModel> appLayoutMap = {};
int overALLThemeType = 1;
AppLayoutModel? overALLAppLayoutModel;
bool isShowTextFieldIcon = false;
List<String> palletImages = [];
List<int> wishlistedIds = [];
List<dynamic> reportReasons = [];
var cameras;
var isPopUpMenuOpen = false;
Timer? PlatformBrightnessUpdateTimer;
var rxhostUnreadCount = ReactiveVariable("rxhostUnreadCount", 0);
var rxguestUnreadCount = ReactiveVariable("rxguestUnreadCount", 0);

List elementsItemVal = [];
var allLanguages = <String, String>{};
var securityKey = "";
int listingApproval = 0;
bool? isPastReservationSection;
int searchDebounce = 650;
String contactHostBookingType = '';
Duration FCMClickFunctionDuration = const Duration(seconds: 1);
var currencyRates;
RxInt isSocketConnected = 1.obs;//1 - connected, 0 - not connected, 2 - API update enable, 3 - Reconnect,4 - Reconnect based on inbox tab, 5 -API update based on inbox tab
GgetCountriesData? countriesData;
String selectedCurrencySymbol = '\$';
const symbols = {
'HKD': 'HK\$',
'MXN': 'MX\$',
'NZD': 'NZ\$',
'CNY': '¥',
'AUD': 'A\$',
'CAD': 'CA\$',
'ARS': 'AR\$',
'TRY': '₺',
'ZAR': 'R',
};

bool isSocketDataUpdate = false;
RxBool isTerminateMessage = false.obs;
InternetConnection internetConnection = InternetConnection.createInstance(checkInterval:Duration(seconds: 15) );
late double deviceWidth , deviceHeight;
String? verificationEmail, confirmationCode;
const String FIREBASE_PROJECT_ID = "gozy-8d3e0";

const String ANDROID_FIREBASE_CLIENT_ID = "1043149604949-0fgna0ee9rt0qe44r6dfa0aedsu2svri.apps.googleusercontent.com";
const String IOS_FIREBASE_CLIENT_ID = "1043149604949-745jfv54jr0pdb7o81kf2smjvbqmq7bu.apps.googleusercontent.com";
