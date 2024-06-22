import '/flutter_flow/flutter_flow_util.dart';
import 't_d_s_page_widget.dart' show TDSPageWidget;
import 'package:flutter/material.dart';

class TDSPageModel extends FlutterFlowModel<TDSPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
