// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<List<String>> receiveAndPlotData(String data) async {
  List<String> result = []; // Initialize an empty list to return

  try {
    debugPrint("Input data: '$data'"); // Print the input data for debugging

    // Expecting "x,y" format and parse it
    final xyValues = data.split(',');
    debugPrint("Split values: $xyValues"); // Debug the split result

    if (xyValues.length == 2) {
      final x = xyValues[0].trim(); // Trim whitespace from x
      final y = xyValues[1].trim(); // Trim whitespace from y

      // Add valid x and y values to the result list as strings
      result.addAll([x, y]);
      debugPrint("Successfully added values to the result: $result");
    } else {
      debugPrint("Data format incorrect: Expected 'x,y', received: '$data'");
    }
  } catch (e) {
    debugPrint("Error in receiveAndPlotData: $e");
  }

  // Return the result list (could be empty if parsing failed)
  return result;
}
