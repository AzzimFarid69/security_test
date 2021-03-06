import 'package:flutter/material.dart';
import 'package:security_test/common/base/BaseResponseDTO.dart';
import 'package:security_test/common/utils/activity_type.dart';
import 'package:security_test/common/utils/service_call_control.dart';
import 'package:security_test/common/utils/service_header.dart';
import 'package:security_test/common/widget/dialog_builder.dart';

class RabbitMQServices {
  static T retrieveData1<T extends BaseResponseDTO>(
      BuildContext context,
      ServiceHeader serviceRequest,
      Function customValidation,
      String dialogTitle,
      String dialogMessage) {
    return retrieveData1<T>(
      context,
      serviceRequest,
      customValidation,
      dialogTitle,
      dialogMessage,
    );
  }

  static T retrieveData2<T extends BaseResponseDTO>(
    BuildContext context,
    ServiceHeader serviceRequest,
    Type nextActivity,
    String dialogTitle,
    String dialogMessage,
  ) {
    return retrieveData2<T>(
      context,
      serviceRequest,
      nextActivity,
      dialogTitle,
      dialogMessage,
    );
  }

  static T retrieveData3<T extends BaseResponseDTO>(
      BuildContext context,
      ServiceHeader serviceRequest,
      Type nextActivity,
      ActivityType activityType,
      String dialogTitle,
      String dialogMessage) {
    return retrieveData3(
      context,
      serviceRequest,
      nextActivity,
      activityType,
      dialogTitle,
      dialogMessage,
    );
  }

  static T retrieveData4<T extends BaseResponseDTO>(
    BuildContext context,
    ServiceHeader serviceRequest,
    Function customValidation,
    Type nextActivity,
    ActivityType activityType,
    String dialogTitle,
    String dialogMessage,
  ) {
    return retrieveData4(
      context,
      serviceRequest,
      customValidation,
      nextActivity,
      activityType,
      dialogTitle,
      dialogMessage,
    );
  }

  static retrieveData5<T extends BaseResponseDTO>(
    BuildContext context,
    ServiceHeader serviceRequest,
    Function customValidation,
    Type nextActivity,
    ActivityType activityType,
    String dialogTitle,
    String dialogMessage,
    Function failedAction,
  ) {
    T serviceRespond;

    if (ServiceCallControl.validServiceCall(serviceRequest)) {
      String title = dialogTitle;
      String message = dialogMessage.isEmpty
          ? 'Submiting Additional Request'
          : dialogMessage;

      DialogBuilder(context).showLoadingIndicator(message, title);

      Future<void> task() {
        try {} catch (e) {}
      }
    } else {}

    return serviceRespond;
  }
}
