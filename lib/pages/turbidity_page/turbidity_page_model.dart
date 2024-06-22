import '/flutter_flow/flutter_flow_util.dart';
import 'turbidity_page_widget.dart' show TurbidityPageWidget;
import 'package:flutter/material.dart';

class TurbidityPageModel extends FlutterFlowModel<TurbidityPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
