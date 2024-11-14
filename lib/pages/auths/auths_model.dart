import '/flutter_flow/flutter_flow_util.dart';
import 'auths_widget.dart' show AuthsWidget;
import 'package:flutter/material.dart';

class AuthsModel extends FlutterFlowModel<AuthsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for AuthTabBar widget.
  TabController? authTabBarController;
  int get authTabBarCurrentIndex =>
      authTabBarController != null ? authTabBarController!.index : 0;

  // State field(s) for liEmailTextField widget.
  FocusNode? liEmailTextFieldFocusNode;
  TextEditingController? liEmailTextFieldTextController;
  String? Function(BuildContext, String?)?
      liEmailTextFieldTextControllerValidator;
  // State field(s) for liPasswordTextField widget.
  FocusNode? liPasswordTextFieldFocusNode;
  TextEditingController? liPasswordTextFieldTextController;
  late bool liPasswordTextFieldVisibility;
  String? Function(BuildContext, String?)?
      liPasswordTextFieldTextControllerValidator;
  // State field(s) for suEmailTextField widget.
  FocusNode? suEmailTextFieldFocusNode;
  TextEditingController? suEmailTextFieldTextController;
  String? Function(BuildContext, String?)?
      suEmailTextFieldTextControllerValidator;
  // State field(s) for suUsernameTextField widget.
  FocusNode? suUsernameTextFieldFocusNode;
  TextEditingController? suUsernameTextFieldTextController;
  String? Function(BuildContext, String?)?
      suUsernameTextFieldTextControllerValidator;
  // State field(s) for suPasswordTextField widget.
  FocusNode? suPasswordTextFieldFocusNode;
  TextEditingController? suPasswordTextFieldTextController;
  late bool suPasswordTextFieldVisibility;
  String? Function(BuildContext, String?)?
      suPasswordTextFieldTextControllerValidator;
  // State field(s) for suConfirmPasswordTextField widget.
  FocusNode? suConfirmPasswordTextFieldFocusNode;
  TextEditingController? suConfirmPasswordTextFieldTextController;
  late bool suConfirmPasswordTextFieldVisibility;
  String? Function(BuildContext, String?)?
      suConfirmPasswordTextFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {
    liPasswordTextFieldVisibility = false;
    suPasswordTextFieldVisibility = false;
    suConfirmPasswordTextFieldVisibility = false;
  }

  @override
  void dispose() {
    authTabBarController?.dispose();
    liEmailTextFieldFocusNode?.dispose();
    liEmailTextFieldTextController?.dispose();

    liPasswordTextFieldFocusNode?.dispose();
    liPasswordTextFieldTextController?.dispose();

    suEmailTextFieldFocusNode?.dispose();
    suEmailTextFieldTextController?.dispose();

    suUsernameTextFieldFocusNode?.dispose();
    suUsernameTextFieldTextController?.dispose();

    suPasswordTextFieldFocusNode?.dispose();
    suPasswordTextFieldTextController?.dispose();

    suConfirmPasswordTextFieldFocusNode?.dispose();
    suConfirmPasswordTextFieldTextController?.dispose();
  }
}
