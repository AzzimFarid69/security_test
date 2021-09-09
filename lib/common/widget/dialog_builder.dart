import 'package:flutter/material.dart';

class DialogBuilder {
  final BuildContext context;

  DialogBuilder(this.context);

  void showLoadingIndicator(String textVal, String title) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return WillPopScope(
            child: AlertDialog(
              title: Text(title),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
              backgroundColor: Colors.white,
              content: LoadingIndicator(
                text: textVal,
              ),
            ),
            onWillPop: () async => false);
      },
    );
  }

  void hideOpenDialog() {
    Navigator.of(context).pop();
  }
}

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({this.text = ''});

  final String text;

  @override
  Widget build(BuildContext context) {
    var displayedText = text;
    return Container(
      padding: EdgeInsets.all(16),
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _getLoadingIndicator(),
          _getText(displayedText),
        ],
      ),
    );
  }

  Padding _getLoadingIndicator() {
    return Padding(
      child: Container(
        child: CircularProgressIndicator(
          strokeWidth: 3,
        ),
        width: 32,
        height: 32,
      ),
      padding: EdgeInsets.only(bottom: 16),
    );
  }

  Widget _getHeading(context, String title) {
    return Padding(
      child: Text(
        title,
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
        ),
        textAlign: TextAlign.start,
      ),
      padding: EdgeInsets.only(bottom: 4),
    );
  }

  Widget _getText(String displayedText) {
    return Padding(
      padding: EdgeInsets.all(12.0),
      child: Text(
        displayedText,
        style: TextStyle(
          color: Colors.black,
          fontSize: 14,
        ),
      ),
    );
  }
}
