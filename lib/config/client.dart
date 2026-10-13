import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:gozy/constant.dart' as Constants;
import 'package:gozy/constant.dart';
import 'package:gozy/pref/app_preference.dart';
import 'package:gozy/screens/views/base_controller.dart';

import '../resources/app_lang.dart';
import '../widgets/common/custom_dialog/custom_dialog.dart';

final AppPreference appPreference = Get.find();

HttpLink getLink({bool? isRemoveHeader}) {
  debugPrint("getLinkhttp: isRemoveHeader $isRemoveHeader");
  HttpLink link = HttpLink(Constants.GRAPHQL_URL,
      defaultHeaders: isRemoveHeader != null && isRemoveHeader
          ? {"auth": ""}
          : {"auth": appPreference.accessToken ?? ""},
      followRedirects: true);

  FerryLoggerClient.client = Client(
      link: link,
      defaultFetchPolicies: {
        OperationType.query: FetchPolicy.NetworkOnly,
        OperationType.mutation: FetchPolicy.NetworkOnly,
        OperationType.subscription: FetchPolicy.NetworkOnly
      },
      cache: FerryLoggerClient.ferrycache);
  return link;
}

class FerryLoggerClient extends Client {
  static Set<String> pendingRequestIds = {};
  static Map<String, int> retryCounts = {};

  FerryLoggerClient({Key? key}) : super(link: getLink());
  static Client? client;
  static Cache ferrycache = Cache(
    typePolicies: {
      'UserAccount': const TypePolicy(
        keyFields: {
          'userId': true,
        },
        queryType: true,
        mutationType: true,
      ),
      'ReservationPayment': const TypePolicy(
        keyFields: {
          'reservationId': true,
        },
        queryType: true,
        mutationType: true,
      ),
    },
  );

  static Future<OperationResponse>? makeRequest(
      OperationRequest request, BaseController controller, Function callback,
      {bool isViewLoader = true,
        bool isViewErrorMessage = true,
        bool isToGet400Message = false,
        bool isDisableNavigation = true,
        bool isBottomSheetOpen = false,
        bool isRemoveHeader = false,
        bool isAutoCloseLoader = true,
        bool isStartLoader = true}) async {
    final point = StackTrace.current.toString().split('\n')[1];
    print('makeRequest --- test9 $point <-> $isAutoCloseLoader');
    print('isViewErrorMessage--> $isViewErrorMessage');
    const JsonEncoder encoder = JsonEncoder.withIndent('');
    const JsonDecoder decoder = JsonDecoder();
    if (isRemoveHeader) {
      getLink(isRemoveHeader: true);
    }
    isShowLoader = isViewLoader;
    Completer<OperationResponse> ferryCompleter =
    Completer<OperationResponse>();
    final operationName = request.operation.operationName ?? '';

    void stopLoading() {
      if (isBottomSheetOpen) {
        controller.change(
            rxVariable: controller.isRxBottomSheetLoading, value: false);
      } else {
        controller.isLoading.value = false;
      }
    }

    void clearRequestState() {
      pendingRequestIds.remove(operationName);
      retryCounts.remove(operationName);
    }

    Future<void> retryRequestAfterLocalNetworkPermission() async {
      final retryCount = retryCounts[operationName] ?? 0;
      if (!Platform.isIOS || retryCount >= 1) {
        return;
      }
      retryCounts[operationName] = retryCount + 1;
      pendingRequestIds.remove(operationName);
      getLink(isRemoveHeader: isRemoveHeader);
      await Future.delayed(const Duration(milliseconds: 800));
      callback();
    }

    if (isStartLoader) {
      if (isBottomSheetOpen) {
        controller.change(
            rxVariable: controller.isRxBottomSheetLoading, value: true);
      } else {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          controller.isLoading.value = true;
        });
      }
    }
    Map<String, dynamic> requestMap = request.varsToJson();
    if (requestMap.isNotEmpty &&
        requestMap.containsKey('deviceId') &&
        (requestMap['deviceId'] == null ||
            requestMap['deviceId'].toString().isEmpty ||
            requestMap['deviceId'] == 'null')) {
      controller.getFCMToken();
      debugPrint("requestMap: $requestMap--");
      await Future.delayed(const Duration(milliseconds: 1000));
      callback();
    } else {
      if (isRemoveHeader || FerryLoggerClient.client == null) {
        getLink();
      }
      debugPrint('pendingRequestIds: $pendingRequestIds');
      pendingRequestIds.add(operationName);

      debugPrint("request: ${encoder.convert(request)}");
      var ferryResponse = FerryLoggerClient.client!
          .request(request)
          .timeout(Duration(seconds: 60));
      ferryResponse.listen((response) {
        Future.microtask(() {
          if (isAutoCloseLoader) {
            controller.isLoading.value = false;
          }
          if (response.data != null) {
            controller.netOFFFunction = null;
            clearRequestState();
            Map<String, dynamic> map =
            decoder.convert(encoder.convert(response.data))
            as Map<String, dynamic>;
            for (var entry in map.entries) {
              if (entry.value is! String) {
                Map<String, dynamic> querystatusmap =
                entry.value as Map<String, dynamic>;
                if (querystatusmap.entries.length > 1) {
                  for (var queryvaluemap in querystatusmap.entries) {
                    if (queryvaluemap.key != '__typename' &&
                        queryvaluemap.key == 'status') {
                      if (queryvaluemap.value == 500) {
                        debugPrint(
                            "Getting data:${request.operation.operationName!}---- ${map.entries}---");
                        showAlertDialog(
                            contentText: querystatusmap['errorMessage'],
                            okButtonContent: label_okay.tr,
                            onOkPressed: () {
                              controller.clearLoginSession(
                                  isDisableNavigation: isDisableNavigation);
                            });
                        if (isBottomSheetOpen) {
                          controller.change(
                              rxVariable: controller.isRxBottomSheetLoading,
                              value: false);
                        } else {
                          controller.isLoading.value = false;
                        }
                      } else if (queryvaluemap.value != 200) {
                        if (isViewErrorMessage && showErrorMsg) {
                          controller.showSnackBar(
                              querystatusmap['errorMessage'],
                              isltralign: true);
                        }
                        if (isToGet400Message) {
                          if (!ferryCompleter.isCompleted) {
                            ferryCompleter.complete(response);
                          }
                        } else {
                          debugPrint(
                              "queryvaluemap.value--- status: ${queryvaluemap.value}---$callback");
                          if (isBottomSheetOpen) {
                            controller.change(
                                rxVariable: controller.isRxBottomSheetLoading,
                                value: false);
                          } else {
                            controller.isLoading.value = false;
                          }
                        }
                      } else {
                        if (!ferryCompleter.isCompleted) {
                          ferryCompleter.complete(response);
                        }
                      }
                    }
                  }
                } else {
                  controller.showSnackBarWithRetry(callback);
                }
              }
            }
          } else {
            debugPrint("graphqlErrors: ${response.graphqlErrors}");
            if (response.graphqlErrors != null &&
                response.graphqlErrors!.isNotEmpty) {
              clearRequestState();
              stopLoading();
              controller.showSnackBar(response.graphqlErrors!.first.message,
                  isltralign: true);
            } else if (Platform.isIOS &&
                (retryCounts[operationName] ?? 0) == 0) {
              debugPrint(
                  "Retrying iOS GraphQL request after local network permission: $operationName");
              retryRequestAfterLocalNetworkPermission();
            } else {
              final linkException = response.linkException?.toString();
              debugPrint("linkException: ${response.linkException}");
              clearRequestState();
              stopLoading();
              // controller.showSnackBarWithRetry(
              //   callback,
              //   msg: linkException ??
              //       'Unable to connect to $GRAPHQL_URL. Please check that the API server is reachable on the same Wi-Fi.',
              // );
            }
          }
        });
      }, onError: (error) {
        debugPrint(
            "Getting Error: ${error.toString()} <-> ${request.operation.operationName} <-> ${request.toString()}");
        clearRequestState();
        stopLoading();
        // controller.showSnackBarWithRetry(callback, msg: error.toString());
      });
    }
    return ferryCompleter.future;
  }

  static void clearPendingRequestIds({String? reason}) {
    if (pendingRequestIds.isEmpty) return;
    debugPrint(
        'pendingRequestIds cleared ${reason ?? ''} -> $pendingRequestIds');
    pendingRequestIds.clear();
  }
}