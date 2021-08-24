import 'package:flutter/material.dart';
import 'package:security_test/utils/user_device_info.dart';

class DeviceInfoScreen extends StatefulWidget {
  const DeviceInfoScreen({Key key}) : super(key: key);

  @override
  _DeviceInfoScreenState createState() => _DeviceInfoScreenState();
}

class _DeviceInfoScreenState extends State<DeviceInfoScreen> {
  Map<String, dynamic> _deviceData = <String, dynamic>{};
  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  Future<void> initPlatformState() async {
    var deviceData = <String, dynamic>{};
    deviceData = await UserDeviceInfo.getDeviceData();
    if (!mounted) {
      return;
    }
    setState(() {
      _deviceData = deviceData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: _deviceData != null
            ? Column(
                children: _deviceData.keys.map(
                  (String property) {
                    return Row(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            property,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                            child: Text(
                              '${_deviceData[property]}',
                              maxLines: 10,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ).toList(),
              )
            : null,
      ),
    );
  }
}
