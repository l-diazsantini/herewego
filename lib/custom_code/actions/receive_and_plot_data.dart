// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<List<double>?> receiveAndPlotData(String data) async {
  try {
    // Expecting "x,y" format and parse it
    final xyValues = data.split(',');
    if (xyValues.length == 2) {
      final x = double.tryParse(xyValues[0]);
      final y = double.tryParse(xyValues[1]);

      // Return list if both x and y are valid doubles
      if (x != null && y != null) {
        return [x, y];
      } else {
        debugPrint("Failed to parse x or y as double");
      }
    } else {
      debugPrint("Data format incorrect: Expected 'x,y'");
    }
    return null;
  } catch (e) {
    debugPrint("Error in receiveAndPlotData: $e");
    return null; // Return null in case of error
  }
}
