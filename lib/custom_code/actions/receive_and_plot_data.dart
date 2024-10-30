// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_blue_plus/flutter_blue_plus.dart';

Future<List<double>?> receiveAndPlotData(BTDeviceStruct deviceInfo) async {
  try {
    final device = BluetoothDevice.fromId(deviceInfo.id);
    final services = await device.discoverServices();
    List<double> chartData = []; // Store received x and y values as doubles

    for (BluetoothService service in services) {
      for (BluetoothCharacteristic characteristic in service.characteristics) {
        if (characteristic.properties.read) {
          final value = await characteristic.read();
          final receivedString = String.fromCharCodes(value);

          // Expecting "x,y" format and parse it
          final xyValues = receivedString.split(',');
          if (xyValues.length == 2) {
            final x = double.tryParse(xyValues[0]);
            final y = double.tryParse(xyValues[1]);

            // Add valid x and y values to the chartData list
            if (x != null && y != null) {
              chartData.addAll([x, y]);
            }
          }
        }
      }
    }
    return chartData; // Return the list of doubles containing x and y values
  } catch (e) {
    debugPrint(e.toString());
    return null; // Return null in case of error
  }
}
