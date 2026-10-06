import 'package:get_secure_storage/get_secure_storage.dart';
import 'package:gozy/constant.dart';

class AppPreference  {
  var pref = GetSecureStorage(container: "${APP_NAME}SharedPref");

  Future<void> removePreference() async{
    Map<String,dynamic> updatedaddress =  bookingPostalCodeAddresses;
    String? downLoadLang = downloadedLanguages;
    String? preferredLang = preferredLanguage;
    String? defaultLang = defaultLanguages;
    pref.erase().then((_){
      bookingPostalCodeAddresses = updatedaddress;
      downloadedLanguages =downLoadLang;
      preferredLanguage  = preferredLang;
      defaultLanguages = defaultLang;
    });
  }


  @override
  String? get accessToken => pref.read("accessToken") ?? "";
  @override
  set accessToken(String? accessToken) {
    pref.write("accessToken", accessToken);
  }

  @override
  String? get userID => pref.read("userID") ?? "";
  @override
  set userID(String? userID) {
    pref.write("userID", userID);
  }


  int? get profileID => pref.read("profileID") ?? 0;
  set profileID(int? profileID) {
    pref.write("profileID", profileID);
  }

  String? get downloadedLanguages => pref.read("downloadedLanguages") ?? "";
  set downloadedLanguages(String? downloadedLanguages) {
    pref.write("downloadedLanguages", downloadedLanguages);
  }

  String? get appTheme => pref.read("appTheme") ?? defaultThemeMode;
  set appTheme(String? appTheme) {
    pref.write("appTheme", appTheme);
  }


  @override
  String? get deviceID => pref.read("deviceID") ?? "";
  @override
  set deviceID(String? deviceID) {
    pref.write("deviceID", deviceID);
  }

  @override
  String? get profileImage => pref.read("profileImage") ?? "";
  @override
  set profileImage(String? profileImage) {
    pref.write("profileImage", profileImage);
  }

  @override
  String? get firstName => pref.read("firstName") ?? "";
  @override
  set firstName(String? firstName) {
    pref.write("firstName", firstName);
  }

  String? get lastName => pref.read("lastName") ?? "";
  set lastName(String? lastName) {
    pref.write("lastName", lastName);
  }

  bool? get isOwner => pref.read("isOwner") ?? false;
  set isOwner(bool? isOwner) {
    pref.write("isOwner", isOwner);
  }

  String? get notificationid => pref.read("notificationid") ?? "";
  set notificationid(String? notificationid) {
    pref.write("notificationid", notificationid);
  }

  dynamic get isUserVerified => pref.read("isUserVerified") ?? {};
  set isUserVerified(dynamic UserVerified) {
    pref.write("isUserVerified", UserVerified);
  }



  Map<String,dynamic> get bookingPostalCodeAddresses => pref.read("bookingPostalCodeAddresses") ?? {};
  set bookingPostalCodeAddresses(Map<String,dynamic> bookingPostalCodeAddresses) {
    pref.write("bookingPostalCodeAddresses", bookingPostalCodeAddresses);
  }

  @override
  String? get description => pref.read("description") ?? "";
  @override
  set description(String? description) {
    pref.write("description", description);
  }

  @override
  String? get email => pref.read("email") ?? "";
  @override
  set email(String? email) {
    pref.write("email", email);
  }

  @override
  String? get phoneNumber => pref.read("phoneNumber") ?? "";
  @override
  set phoneNumber(String? phoneNumber) {
    pref.write("phoneNumber", phoneNumber);
  }

  int? get createdListingCount => pref.read("createdListingCount") ?? 0;
  set createdListingCount(int? createdListingCount) {
    pref.write("createdListingCount", createdListingCount);
  }

  @override
  String? get dialCode => pref.read("dialCode") ?? "";
  @override
  set dialCode(String? dialCode) {
    pref.write("dialCode", dialCode);
  }

  @override
  String? get countryCode => pref.read("countryCode") ?? "";
  @override
  set countryCode(String? countryCode) {
    pref.write("countryCode", countryCode);
  }

  @override
  String? get preferredLanguage => pref.read("preferredLanguage") ?? defaultLanguage;
  @override
  set preferredLanguage(String? preferredLanguage) {
    pref.write("preferredLanguage", preferredLanguage);
  }

  @override
  String? get defaultLanguages => pref.read("defaultLanguage")?? defaultLanguage;

  @override
  set defaultLanguages(String? defaultLanguages){
    pref.write("defaultLanguages", defaultLanguages);
  }

  @override
  String? get preferredCurrency => pref.read("preferredCurrency") ?? defaultCurrency;
  @override
  set preferredCurrency(String? preferredCurrency) {
    pref.write("preferredCurrency", preferredCurrency);
  }

  String? get gender => pref.read("gender") ?? "";
  set gender(String? gender) {
    pref.write("gender", gender);
  }

  String? get birthDate => pref.read("birthDate") ?? "";
  set birthDate(String? birthDate) {
    pref.write("birthDate", birthDate);
  }

  int? get pendingPawaPayReservationId => pref.read('pendingPawaPayReservationId');
  set pendingPawaPayReservationId(int? value) {
    value == null
        ? pref.remove('pendingPawaPayReservationId')
        : pref.write('pendingPawaPayReservationId', value);
  }

  int? get pendingPawaPayListingId => pref.read('pendingPawaPayListingId');
  set pendingPawaPayListingId(int? value) {
    value == null
        ? pref.remove('pendingPawaPayListingId')
        : pref.write('pendingPawaPayListingId', value);
  }

  String? get location => pref.read("location") ?? "";
  set location(String? location) {
    pref.write("location", location);
  }

  String? get type => pref.read("type") ?? "";
  set type(String? type) {
    pref.write("type", type);
  }

  bool get showBrand => pref.read("showBrand") ?? true;
  set showBrand(bool showBrand) {
    pref.write("showBrand", showBrand);
  }
}
