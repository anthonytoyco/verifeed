import '/flutter_flow/flutter_flow_util.dart';
import 'create_comment_widget.dart' show CreateCommentWidget;
import 'package:flutter/material.dart';

class CreateCommentModel extends FlutterFlowModel<CreateCommentWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for CommentContentTextField widget.
  FocusNode? commentContentTextFieldFocusNode;
  TextEditingController? commentContentTextFieldTextController;
  String? Function(BuildContext, String?)?
      commentContentTextFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    commentContentTextFieldFocusNode?.dispose();
    commentContentTextFieldTextController?.dispose();
  }
}
