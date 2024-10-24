import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'test_widget.dart' show TestWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TestModel extends FlutterFlowModel<TestWidget> {
  ///  Local state fields for this page.

  List<String> bleDataList = [];
  void addToBleDataList(String item) => bleDataList.add(item);
  void removeFromBleDataList(String item) => bleDataList.remove(item);
  void removeAtIndexFromBleDataList(int index) => bleDataList.removeAt(index);
  void insertAtIndexInBleDataList(int index, String item) =>
      bleDataList.insert(index, item);
  void updateBleDataListAtIndex(int index, Function(String) updateFn) =>
      bleDataList[index] = updateFn(bleDataList[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - receiveAndPlotData] action in Button widget.
  List<String>? bleDataListy;
  // Stores action output result for [Custom Action - getXValues] action in Button widget.
  List<double>? xValue;
  // Stores action output result for [Custom Action - getYValues] action in Button widget.
  List<double>? yValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
