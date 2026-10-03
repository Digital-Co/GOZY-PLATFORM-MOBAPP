import 'dart:async';
import 'dart:io';
import 'package:camera/camera.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:get/get.dart';
import 'package:gql/language.dart';
import 'package:gql_exec/gql_exec.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:gozy/config/client.dart';
import 'package:gozy/resources/app_lang.dart';
import 'package:gozy/resources/app_layout.dart';
import 'package:gozy/screens/views/base_controller.dart';
import 'package:gozy/utils/common_api_controller.dart';
import 'package:gozy/utils/common_file_picker.dart';
import 'package:gozy/widgets/bottom_sheet/add_phone_number/add_phone_number_bottom_sheet.dart';
import 'package:gozy/widgets/bottom_sheet/bottom_sheet_refresh_controller.dart';
import 'package:gozy/widgets/conditional_parent_widget.dart';
import 'package:gozy/widgets/custom_text.dart';
import 'package:gozy/widgets/theme4/custom_dash_divider.dart';
import '../../../../app.dart';
import '../../../../constant.dart';
import '../../../../graphql/UserProfile/__generated__/user_profile.req.gql.dart';
import '../../../../graphql/document_list/__generated__/documentList.data.gql.dart';
import '../../../../graphql/document_list/__generated__/documentList.req.gql.dart';
import '../../../../resources/app_dimen.dart';
import '../../../../resources/app_font.dart';
import '../../../../utils/text_editing_controller.dart';
import '../../../../widgets/checkbox_group.dart';
import '../../../../widgets/common/custom_dialog/custom_dialog.dart';
import '../../../../widgets/common_extension_functions.dart';
import '../../../../widgets/custom_list_item.dart';
import '../document_verification/document_verification.dart';

class EditProfileController extends BaseController {
  RxString profileImage = ''.obs;
  RxBool isProfileImageLoading = false.obs;
  String firstName = '';
  String fieldName = '';
  String fieldValue = '';
  RxString about = ''.obs;
  String phoneNumber = '';
  (String, DateTime) dob = ('', DateTime.now());
  String documentName = '';
  String email = '';
  int fileId = 1;
  AppLifecycleListener? lifecycleListener;
  static Rx<VerifyStatusForEmail> isEmailVerified =
      VerifyStatusForEmail.Verify.obs;
  Rx<VerifyStatusForEmail> isPhoneNumberVerified =
      VerifyStatusForEmail.Verify.obs;
  Rx<VerifyStatusForEmail> isDocumentVerified = VerifyStatusForEmail.Verify.obs;
  Rx<VerifyStatusForSocialLogin> isGoogleVerified =
      VerifyStatusForSocialLogin.Connect.obs;
  var rxSelectedGender = ReactiveVariable("rxSelectedGender", Gender.None);
  CustomTextEditingController firstNameController =
      CustomTextEditingController();
  CustomTextEditingController lastNameController =
      CustomTextEditingController();
  CustomTextEditingController aboutController = CustomTextEditingController();
  CustomFocusNode firstNameFocusNode = CustomFocusNode();
  CustomFocusNode lastNameFocusNode = CustomFocusNode();
  CustomFocusNode editAboutMeFocusNode = CustomFocusNode();
  RxBool isCheckDocumentVerification = false.obs;

  RxList<Map<String, dynamic>> personalInfoList = <Map<String, dynamic>>[].obs;
  RxString selectedImageOption = ''.obs;
  DateTime currentDate = DateTime.now();
  DateTime lastDate = DateTime.now();
  RxList<String> uploadingPhotos = RxList<String>();

  ScrollController scrollController = ScrollController();
  var rxIsFilesPicking = ReactiveVariable('rxIsFilesPicking', false);
  bool isInUploadpage = false;
  int photocount = 0;
  bool isDocumentUpload = false;

  RxList<dynamic> getImages = [].obs;
  List<String> removeablePhotos = [];

  Map<String, Widget> uploadingplaceholder = {};
  int heavyImageCount = 0;
  Future? photoUploadingFuture;
  String pdfURl = '';
  String genderDividerType = '';

  Completer<bool> photoUploadCompleter = Completer<bool>();

  @override
  onReady() {
    availableCameras().then((value) {
      cameras = value;
    });

    lastDate =
        DateTime(currentDate.year - 18, currentDate.month, currentDate.day);
    super.onReady();
  }

  void getProfileData() {
    profileImage.value = appPreference.profileImage ?? "";
    firstNameController.text = appPreference.firstName ?? "";
    lastNameController.text = appPreference.lastName ?? "";
    aboutController.text = appPreference.description ?? "";
    about.value = appPreference.description ?? '';
    change(
        rxVariable: rxSelectedGender,
        value: Gender.fromString(appPreference.gender));
    email = appPreference.email ?? '';
    phoneNumber =
        "${appPreference.countryCode ?? ''} ${appPreference.phoneNumber ?? ''}";

    isEmailVerified.value =
        appPreference.isUserVerified['isEmailConfirmed'] ?? false
            ? VerifyStatusForEmail.Verified
            : VerifyStatusForEmail.Verify;
    isGoogleVerified.value =
        appPreference.isUserVerified['isGoogleConnected'] ?? false
            ? VerifyStatusForSocialLogin.Disconnect
            : VerifyStatusForSocialLogin.Connect;
    isPhoneNumberVerified.value =
        appPreference.isUserVerified['isPhoneVerified'] ?? false
            ? VerifyStatusForEmail.Verified
            : VerifyStatusForEmail.Verify;
    isDocumentVerified.value =
        appPreference.isUserVerified['isIdVerification'] ?? false
            ? VerifyStatusForEmail.Verified
            : VerifyStatusForEmail.Verify;

    try {
      dob = (
        appPreference.birthDate ?? '',
        getDateFromString(appPreference.birthDate ?? '')
      );
    } catch (e) {
      if (appPreference.birthDate?.isEmpty == true) {
        dob = (dob.$2.convert_MDY(format: dobformat).$1, lastDate);
      } else {
        dob = (appPreference.birthDate ?? '', DateTime.now());
      }
    }

    personalInfoList.value = [
      {
        "name": label_gender.tr,
        "link": Gender.getMultiLanguage(rxSelectedGender.value),
        "onTap": () {
          _getGenderSelectionDialog();
        }
      },
      {
        "name": label_birth_date.tr,
        "link": appPreference.birthDate?.isEmpty == true
            ? ''
            : dob.$2.convert_MDY(format: dobformat).$1,
        "onTap": () async {
          DateTime firstDate = DateTime(1920, 01, 01);
          showAppDatePicker(
              context: Get.context!,
              controller: this,
              appLayout: AppLayout.profile,
              initialDate: dob.$2,
              firstDate: firstDate,
              locale: Get.locale,
              okButtonContent: label_confirm.tr,
              lastDate: lastDate,
              dateFormat: dobDialogFormat,
              onConfirm: ((String, DateTime)? selectedDate) {
                if (selectedDate != null) {
                  dob = (selectedDate.$1, selectedDate.$2);
                  updateUserProfile(EditProfileField.dateOfBirth);
                }
              });
        }
      },
      {"name": label_login_email.tr, "link": email, "onTap": () {}},
      {
        "name": label_phone_number.tr,
        "link": phoneNumber,
        "onTap": () {
          AddPhoneNumberBottomSheet();
        }
      },
    ];
  }

  void _getGenderSelectionDialog() {
    showAlertDialog(
      padding: pad(w: 18, h: 18),
      content: _getGenderSelectionOptions(
          isFullWidthDivider: appLayoutMap[AppLayout.profile]?.themeType == 2 ||
              appLayoutMap[AppLayout.profile]?.themeType == 3 ||
              appLayoutMap[AppLayout.profile]?.themeType == 4),
      barrierDismissible: true,
      appLayout: AppLayout.profile,
      title: label_gender.tr,
    );
  }

  Widget _getGenderSelectionOptions({bool? isFullWidthDivider}) {
    return GetBuilder<BottomSheetController>(builder: (ctrl) {
      List<Widget> getGenderLists = [];
      for (var element in Gender.values) {
        if (element != Gender.None) {
          getGenderLists.add([
            CustomText(
              text: Gender.getMultiLanguage(element),
              size: AppDimen.textSize_16,
              fontWeight: AppFont.regular,
            ),
            GetBuilder(
              init: this,
              id: rxSelectedGender.id,
              builder: (context) => toOnTap(
                onTap: () {
                  change(rxVariable: rxSelectedGender, value: element);
                  if (rxSelectedGender.value == Gender.None) {
                    change(rxVariable: rxSelectedGender, value: Gender.Male);
                  }
                  // Future.delayed(Duration(milliseconds: 200)).then((value) {
                  updateUserProfile(EditProfileField.gender);
                  Get.back();
                  // });
                },
                child: getAnimatedRadioBox(
                    isSelected: !(element == Gender.None
                        ? false
                        : rxSelectedGender.value != element),
                    size: 20.0),
              ),
            ),
          ].toRow(mainAxisAlignment: MainAxisAlignment.spaceBetween));
        }
      }
      return [
        for (Widget genderWidget in getGenderLists) ...[
          genderWidget,
          if (getGenderLists.last != genderWidget) ...[
            if (genderDividerType == 'line') ...[
              15.toHeight(),
              ConditionalParentWidget(
                  condition: isFullWidthDivider ?? false,
                  parentBuilder: (child) {
                    return child
                        .toFitToDeviceWidth(
                            width: deviceWidth - (2 * AppDimen.startMargin))
                        .toResizeWidget(height: 1);
                  },
                  child: filterDivider),
            ] else if (genderDividerType == 'dot') ...[
              GetBuilder<BottomSheetController>(
                builder: (newController) {
                  return [
                    15.toHeight(),
                    ConditionalParentWidget(
                        condition: isFullWidthDivider ?? false,
                        parentBuilder: (child) {
                          return child
                              .toFitToDeviceWidth(
                                  width:
                                      deviceWidth - (2 * AppDimen.startMargin))
                              .toResizeWidget(height: 1);
                        },
                        child: fullWidthDashDivider()),
                  ].toColumn();
                },
              ),
            ],
            15.toHeight(),
          ],
        ]
      ].toColumn(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min);
    });
  }

  void updateUserProfile(EditProfileField field) {
    checkNetwork(() {
      switch (field) {
        case EditProfileField.firstName:
          if (firstNameController.text.trim().isNotEmpty &&
              lastNameController.text.trim().isNotEmpty) {
            fieldName = field.name;
            fieldValue = [
              "\"${firstNameController.text}\"",
              "\"${appPreference.lastName ?? ''}\""
            ].toString();
            appPreference.firstName = firstNameController.text;
            userUpdate();
            Get.forceAppUpdate();
          }

        case EditProfileField.lastName:
          if (firstNameController.text.trim().isNotEmpty &&
              lastNameController.text.trim().isNotEmpty) {
            fieldName = field.name;
            fieldValue = lastNameController.text;
            appPreference.lastName = lastNameController.text;
            updateUserProfile(EditProfileField.firstName);
          }

        case EditProfileField.info:
          fieldName = field.name;
          fieldValue = aboutController.text;
          appPreference.description = aboutController.text;
          about.value = aboutController.text;
          userUpdate();

        case EditProfileField.gender:
          fieldName = field.name;
          fieldValue = rxSelectedGender.value.name;
          appPreference.gender = rxSelectedGender.value.name;
          personalInfoList[0]['link'] =
              Gender.getMultiLanguage(rxSelectedGender.value);
          userUpdate();

        case EditProfileField.dateOfBirth:
          fieldName = field.name;
          fieldValue = dob.$2.convert_MDY(format: dobAPIFormat).$1;
          appPreference.birthDate = dob.$1;
          personalInfoList[1]['link'] = dob.$1;
          userUpdate();

        case EditProfileField.email:
        case EditProfileField.phoneNumber:
          userUpdate();

        case EditProfileField.isEmailConfirmed:
        case EditProfileField.isGoogleConnected:
        case EditProfileField.isPhoneVerified:
      }
    });
  }

  void userUpdate() {
    isLoading.value = true;
    change(rxVariable: isRxBottomSheetLoading, value: true);
    final params = GuserUpdateReq((b) => b
      ..vars.userId = appPreference.userID
      ..vars.fieldName = fieldName
      ..vars.fieldValue = fieldValue
      ..vars.deviceType = Platform.isAndroid ? 'android' : 'ios'
      ..vars.deviceId = appPreference.deviceID
      ..vars.build());
    FerryLoggerClient.makeRequest(params, this, userUpdate, isViewLoader: false)
        ?.then((res) async {
      isLoading.value = false;

      personalInfoList.refresh();
    });
  }

  Future<String> requestEmailChange(String newEmail) async {
    try {
      debugPrint('[ChangeEmail] Sending requestEmailChange mutation');
      final response = await getLink().request(Request(
        operation: Operation(
          document: parseString(r'''
            mutation RequestEmailChange($newEmail: String!) {
              requestEmailChange(newEmail: $newEmail) { status email }
            }
          '''),
          operationName: 'RequestEmailChange',
        ),
        variables: {'newEmail': newEmail.trim().toLowerCase()},
      )).first;
      final status = response.data?['requestEmailChange']?['status']
              ?.toString() ??
          'failed';
      debugPrint('[ChangeEmail] Mutation response status=$status');
      if (response.errors?.isNotEmpty ?? false) {
        final safeErrors = response.errors!
            .map((error) => error.message)
            .join(' | ')
            .replaceAll(
              RegExp(
                r'\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}\b',
                caseSensitive: false,
              ),
              '[email]',
            );
        debugPrint('[ChangeEmail] GraphQL errors: $safeErrors');
      }
      return status;
    } catch (error, stackTrace) {
      final safeError = error.toString().replaceAll(
            RegExp(
              r'\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}\b',
              caseSensitive: false,
            ),
            '[email]',
          );
      debugPrint(
        '[ChangeEmail] Mutation threw ${error.runtimeType}: $safeError',
      );
      debugPrintStack(stackTrace: stackTrace);
      return 'failed';
    }
  }

  Future<String> confirmEmailChange({required String email, required String token}) async {
    try {
      final response = await getLink().request(Request(
        operation: Operation(
          document: parseString(r'''
            mutation ConfirmEmailChange($token: String!, $email: String!) {
              confirmEmailChange(token: $token, email: $email) { status email userToken }
            }
          '''),
          operationName: 'ConfirmEmailChange',
        ),
        variables: {'token': token, 'email': email.trim().toLowerCase()},
      )).first;
      final data = response.data?['confirmEmailChange'];
      final status = data?['status']?.toString() ?? 'failed';
      if (status == 'confirmed') {
        final currentToken = appPreference.accessToken ?? '';
        if (currentToken.isNotEmpty && data?['userToken'] != null) {
          appPreference.accessToken = data['userToken'].toString();
          appPreference.email = data['email']?.toString();
          getLink();
          await getProfile();
        }
        showToast(email_change_confirmed.tr);
      } else if (status == 'alreadyConfirmed') {
        showToast(email_change_already_confirmed.tr);
      } else if (status == 'email') {
        showToast(email_change_already_used.tr);
      } else {
        showToast(email_change_confirmation_failed.tr);
      }
      return status;
    } catch (_) {
      showToast(email_change_confirmation_failed.tr);
      return 'failed';
    }
  }

  void sendEmailVerification() {
    final params = GSendConfirmEmailReq();
    FerryLoggerClient.makeRequest(params, this, sendEmailVerification)
        ?.then((res) async {
      isLoading.value = false;
      showToast(message_confirm_link_sent.tr);
    });
  }

  void socialLoginVerifyForGoogle(
      {required VerifyStatusForSocialLogin actionType}) {
    final params = GSocialLoginVerifyReq((b) => b
      ..vars.actionType =
          (actionType == VerifyStatusForSocialLogin.Connect).toString()
      ..vars.verificationType = "google"
      ..vars.build());
    FerryLoggerClient.makeRequest(params, this, socialLoginVerifyForGoogle,
            isViewLoader: false)
        ?.then((res) async {
      isLoading.value = false;
      if (actionType == VerifyStatusForSocialLogin.Connect) {
        appPreference.isUserVerified['isGoogleConnected'] = true;
        isGoogleVerified.value = VerifyStatusForSocialLogin.Disconnect;
        showToast("Google ${label_connected.tr.toLowerCase()}");
      } else {
        appPreference.isUserVerified['isGoogleConnected'] = false;
        isGoogleVerified.value = VerifyStatusForSocialLogin.Connect;
        showToast("Google ${label_disconnected.tr.toLowerCase()}");
      }
    });
  }

  Future<void> getProfile() async {
    isShowLoader = true;
    getuserProfileData().then((profiledata) async {
      isLoading.value = false;
      await saveUserdataFromApiToLocalStorage(profiledata);
      getProfileData();
      debugPrint("bottomSheet_isobne ${Get.isBottomSheetOpen}");
      if (profiledata.userAccount?.result?.verification?.isIdVerification !=
              true &&
          Get.isBottomSheetOpen == false &&
          isCheckDocumentVerification.value) {
        isCheckDocumentVerification.value = false;
        UploadDocumentsBottomSheet();
      }
    });
  }

  void pickDocumentFile([bool? isFromDocument]) async {
    onBack();
    if (!rxIsFilesPicking.value) {
      callBackFunction(isFromDocument!);
    }
  }

  void callBackFunction(bool isImage) async {
    bool isNetconnected = await isNetworkConnected();
    isShowLoader = false;
    if (isNetconnected) {
      CommonFilePicker.pickFiles(
        type: isImage ? FileType.image : FileType.custom,
        allowedExtensions: isImage ? null : ['pdf'],
        allowMultiple: true,
        compressionQuality: compressImageQuality,
        onFileLoading: (status) {
          change(
              rxVariable: rxIsFilesPicking,
              value: (status == FilePickerStatus.picking));
        },
      ).then((result) async {
        debugPrint("FilePicker: $result");
        change(rxVariable: rxIsFilesPicking, value: false);
        bool isnetConnected = await isNetworkConnected();
        if (isnetConnected) {
          List<PlatformFile> files = [];
          if (result != null) {
            heavyImageCount = 0;
            Get.closeCurrentSnackbar();
            for (var pickedFile in result.files) {
              files.add(pickedFile);
            }
            files.sort((a, b) {
              return b.size.compareTo(a.size);
            });
            List<Future<XFile?>> compressingFuture = [];
            for (var pickfile in files) {
              final documentSize =
                  File(pickfile.path!).readAsBytesSync().lengthInBytes;
              final kb = documentSize / 1024;
              final mb = kb / 1024;
              debugPrint("imageSize ${mb.round()}");
              if (mb.round() <= maximumImageUpload) {
                if (isInUploadpage) {
                  compressingFuture
                      .add(compressImage(pickfile.path!, pickfile.extension));
                }
              } else {
                heavyImageCount++;
              }
            }
            if (heavyImageCount != 0) {
              showToast(
                  '${'pdfsmaller'.tr} $maximumImageUpload ${'mb_not_allowed'.tr}');
            }
            Future.wait(compressingFuture).then((xfilesList) {
              for (var xfile in xfilesList) {
                if (isInUploadpage) {
                  uploadingPhotos.add(xfile!.path);
                  if (xfilesList.last == xfile) {
                    if (photoUploadingFuture != null) {
                      Future.wait([photoUploadingFuture!]).then((value) {
                        photoUploadingFuture = uploadSelectedFiles();
                      });
                    } else {
                      photoUploadingFuture = uploadSelectedFiles();
                    }
                  }
                }
              }
            });
          }
        }
      });
    }
  }

  Future<XFile?> compressImage(String filePath, String? fileextension) async {
    var filepathlist = filePath.split('.');
    var dir = Directory.systemTemp;
    var targetPath =
        "${dir.absolute.path}/temp_${DateTime.now().millisecondsSinceEpoch}_$photocount.${filepathlist.last}";
    photocount++;
    if (fileextension == 'pdf') {
      File copiedFile = await File(filePath).copy(targetPath);
      return XFile(copiedFile.path);
    }
    String extension = 'png';
    if (filepathlist.last == 'png' ||
        filepathlist.last == 'jpeg' ||
        filepathlist.last == 'jpg') {
      extension = filepathlist.last;
    }

    final compressedImage = await FlutterImageCompress.compressAndGetFile(
        filePath, targetPath,
        minWidth: 700,
        minHeight: 700,
        quality: compressImageQuality,
        format: extension == 'png' ? CompressFormat.png : CompressFormat.jpeg);

    return compressedImage;
  }

  Future<void> uploadSelectedFiles() async {
    uploadProgress.value = '0';
    final List<String> pendingFiles = uploadingPhotos
        .where((path) => !removeablePhotos.contains(path))
        .toList();

    if (pendingFiles.isEmpty) return;

    final bool isConnected = await isNetworkConnected(isshowToast: false);
    if (!isConnected) {
      checkNetwork(uploadSelectedFiles);
      return;
    }

    for (final pickfile in pendingFiles) {
      if (!isInUploadpage || removeablePhotos.contains(pickfile)) continue;
      if (scrollController.hasClients) {
        scrollController.animateTo(
          scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }

      final File compressedFile = File(pickfile);
      Get.closeCurrentSnackbar();
      if (!removeablePhotos.contains(compressedFile.path)) {
        removeablePhotos.add(compressedFile.path);
      }
      photoUploadCompleter = Completer();

      final uploadedFile = await uploadImage(
        file: compressedFile,
        uploadUrl: uploadDocumentPhoto,
        uploadingImages: uploadingPhotos,
      );

      if (uploadedFile is Map<String, dynamic> && uploadedFile.isNotEmpty) {
        final filename = uploadedFile['filename'].toString();
        uploadingplaceholder[filename] = getuploadingWidget(pickfile);
        debugPrint("uploadingfilename: $filename");

        await updateDocumentOnFragment(fileName: filename, functionName: 'add');
        uploadingPhotos.remove(pickfile);
        if (!photoUploadCompleter.isCompleted) {
          photoUploadCompleter.complete(true);
        }
      } else if (uploadedFile == 'network') {
        checkNetwork(uploadSelectedFiles);
        return;
      } else if (uploadedFile == '') {
        removeablePhotos.clear();
        uploadingPhotos.clear();
        break;
      }
    }
  }

  Future<void> getDocumentImages() {
    Completer<void> completer = Completer<void>();
    final params = GShowDocumentListReq();
    FerryLoggerClient.makeRequest(params, this, getDocumentImages,
            isBottomSheetOpen: false, isViewLoader: false)
        ?.then((res) async {
      GShowDocumentListData? getPayoutsResponse =
          res.data as GShowDocumentListData;
      getImages.clear();
      getImages
          .addAll(getPayoutsResponse.showDocumentList?.results?.toList() ?? []);
      isLoading.refresh();
      change(rxVariable: isRxBottomSheetLoading, value: false);
      Get.forceAppUpdate();
      completer.complete();
    });
    return completer.future;
  }

  void removeListPhotos() {
    isShowLoader = false;
    final params = GRemoveDocumentsReq((b) => b
      ..vars.fileName = documentName
      ..vars.build());
    FerryLoggerClient.makeRequest(params, this, removeListPhotos,
            isToGet400Message: true,
            isViewLoader: true,
            isViewErrorMessage: false)
        ?.then((res) {
      GRemoveDocumentsData? removeData = res.data as GRemoveDocumentsData;
      if (removeData.removeDocuments?.status == 400) {
        showToast(removeData.removeDocuments?.errorMessage ?? "");
        change(rxVariable: isRxBottomSheetLoading, value: false);
      } else {
        getDocumentImages();
      }
      isLoading.value = false;
    });
  }

  Future<void> updateDocumentOnFragment(
      {required dynamic fileName, required String functionName}) async {
    if (functionName == 'add') {
      fileId++;
      await getDocumentImages();
    } else if (functionName == 'remove') {
      getImages.removeWhere((item) => item?.name == fileName);
      removeListPhotos();
    }
    Get.forceAppUpdate();
  }

  static void checkEmailVerification() {
    isEmailVerified.value = VerifyStatusForEmail.Verified;
    appPreference.isUserVerified["isEmailConfirmed"] = true;
  }

  Future<void> confirmEmailVerification(
      {required String email, required String confirmCode}) async {
    final params = GCodeVerificationReq((v) => v
      ..vars.email = email
      ..vars.token = confirmCode
      ..vars.build());
    FerryLoggerClient.makeRequest(params, this, confirmEmailVerification)
        ?.then((res) async {
      checkEmailVerification();
      isLoading.value = false;
      showToast("${label_login_email.tr} ${label_verified.tr}");
    });
  }
}

enum EditProfileField {
  firstName,
  lastName,
  info,
  gender,
  dateOfBirth,
  email,
  phoneNumber,
  isEmailConfirmed,
  isGoogleConnected,
  isPhoneVerified
}

enum Gender {
  Male,
  Female,
  Other,
  None;

  static Gender fromString(String? value) {
    return Gender.values.firstWhere(
      (gender) => gender.name == value,
      orElse: () => Gender.None,
    );
  }

  static String getMultiLanguage(Gender gender) {
    return switch (gender) {
      Gender.Male => label_male.tr,
      Gender.Female => label_female.tr,
      Gender.Other => label_other.tr,
      Gender.None => "",
    };
  }
}

enum VerifyStatusForEmail {
  Verify,
  Verified;

  static String getMultiString(VerifyStatusForEmail verifyStatusForEmail) {
    return switch (verifyStatusForEmail) {
      VerifyStatusForEmail.Verify => label_verify.tr,
      VerifyStatusForEmail.Verified => label_verified.tr
    };
  }
}

enum VerifyStatusForSocialLogin {
  Connect,
  Disconnect;

  static String getMultiString(
      VerifyStatusForSocialLogin verifyStatusForSocialLogin) {
    return switch (verifyStatusForSocialLogin) {
      VerifyStatusForSocialLogin.Connect => label_connect.tr,
      VerifyStatusForSocialLogin.Disconnect => label_disconnect.tr
    };
  }
}
