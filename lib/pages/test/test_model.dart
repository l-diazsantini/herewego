import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/instant_timer.dart';
import '/custom_code/actions/index.dart' as actions;
import 'test_widget.dart' show TestWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TestModel extends FlutterFlowModel<TestWidget> {
  ///  Local state fields for this page.

  List<double> bleDataList = [];
  void addToBleDataList(double item) => bleDataList.add(item);
  void removeFromBleDataList(double item) => bleDataList.remove(item);
  void removeAtIndexFromBleDataList(int index) => bleDataList.removeAt(index);
  void insertAtIndexInBleDataList(int index, double item) =>
      bleDataList.insert(index, item);
  void updateBleDataListAtIndex(int index, Function(double) updateFn) =>
      bleDataList[index] = updateFn(bleDataList[index]);

  ///  State fields for stateful widgets in this page.

  InstantTimer? instantTimer;
  // Stores action output result for [Custom Action - receiveAndPlotData] action in test widget.
  List<double>? bleDataListy;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    instantTimer?.cancel();
  }
}
