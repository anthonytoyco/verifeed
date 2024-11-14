import '/flutter_flow/flutter_flow_util.dart';
import 'post_widget.dart' show PostWidget;
import 'package:flutter/material.dart';

class PostModel extends FlutterFlowModel<PostWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for TitleTextField widget.
  FocusNode? titleTextFieldFocusNode;
  TextEditingController? titleTextFieldTextController;
  String? Function(BuildContext, String?)?
      titleTextFieldTextControllerValidator;
  // State field(s) for BodyTextField widget.
  FocusNode? bodyTextFieldFocusNode;
  TextEditingController? bodyTextFieldTextController;
  String? Function(BuildContext, String?)? bodyTextFieldTextControllerValidator;
  // State field(s) for SourcesTextField widget.
  FocusNode? sourcesTextFieldFocusNode;
  TextEditingController? sourcesTextFieldTextController;
  String? Function(BuildContext, String?)?
      sourcesTextFieldTextControllerValidator;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    titleTextFieldFocusNode?.dispose();
    titleTextFieldTextController?.dispose();

    bodyTextFieldFocusNode?.dispose();
    bodyTextFieldTextController?.dispose();

    sourcesTextFieldFocusNode?.dispose();
    sourcesTextFieldTextController?.dispose();
  }
}
