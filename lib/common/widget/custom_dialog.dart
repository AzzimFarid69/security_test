import 'package:flutter/material.dart';
import 'package:security_test/models/month_model.dart';

import 'custom_widget.dart';

class CustomDialog {
  static Future generalDialog({
    BuildContext context,
    String title,
    String content,
    String cancelText,
    String proceedText,
    Function onProceed,
    bool isCancelButton: true,
    bool barrierDismissible: true,
  }) {
    return showGeneralDialog(
      context: context,
      barrierDismissible: barrierDismissible,
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      transitionDuration: const Duration(milliseconds: 180),
      transitionBuilder: (context, a1, a2, widget) {
        return Transform.scale(
          scale: a1.value,
          child: Opacity(
            opacity: a1.value,
            child: AlertDialog(
              contentPadding: EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 0.0),
              title: Text(
                title ?? '',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[800],
                ),
              ),
              content: Text(content ?? ''),
              actions: <Widget>[
                Visibility(
                  visible: isCancelButton,
                  child: TextButton(
                    onPressed: () => Navigator.of(context).pop(false),
                    child: Text(
                      (cancelText ?? 'Cancel').toUpperCase(),
                      style: TextStyle(color: Colors.blue[800]),
                    ),
                  ),
                ),
                Visibility(
                  visible: onProceed != null,
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(true);
                      onProceed();
                    },
                    child: Text(
                      (proceedText ?? 'Leave').toUpperCase(),
                      style: TextStyle(color: Colors.blue[800]),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      pageBuilder: (context, anim1, anim2) => null,
    );
  }

  static feesAndCharges(
    BuildContext context, {
    String title,
    List<FeesAndCharges> generalList,
  }) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            elevation: 0,
            backgroundColor: Colors.transparent,
            child: Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    color: Theme.of(context).accentColor,
                    width: double.infinity,
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      title ?? "",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: generalList != null
                          ? generalList.map((entry) {
                              return CustomWidget.generalList(
                                context,
                                title: entry.item,
                                value: entry.value,
                              );
                            }).toList()
                          : Container(),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                    child: Container(
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "Total Charges: LKR ${(generalList != null && generalList.isNotEmpty ? generalList.map((item) => item.value).reduce((item1, item2) => item1 + item2) : 0.00)}",
                      style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 8.0, right: 8.0),
                      child: TextButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: Text(
                          'OK',
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
