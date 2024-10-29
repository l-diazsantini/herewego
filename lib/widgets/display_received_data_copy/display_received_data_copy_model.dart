import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import '/custom_code/actions/index.dart' as actions;
import 'display_received_data_copy_widget.dart'
    show DisplayReceivedDataCopyWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DisplayReceivedDataCopyModel
    extends FlutterFlowModel<DisplayReceivedDataCopyWidget> {
  ///  Local state fields for this component.

  List<String> data = [];
  void addToData(String item) => data.add(item);
  void removeFromData(String item) => data.remove(item);
  void removeAtIndexFromData(int index) => data.removeAt(index);
  void insertAtIndexInData(int index, String item) => data.insert(index, item);
  void updateDataAtIndex(int index, Function(String) updateFn) =>
      data[index] = updateFn(data[index]);

  ///  State fields for stateful widgets in this component.

  InstantTimer? receivedDataTimer;
  // Stores action output result for [Custom Action - receiveAndPlotData] action in DisplayReceivedDataCopy widget.
  List<String>? pls;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    receivedDataTimer?.cancel();
  }
}
