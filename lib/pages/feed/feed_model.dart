import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'feed_widget.dart' show FeedWidget;
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class FeedModel extends FlutterFlowModel<FeedWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for FeedListView widget.

  PagingController<DocumentSnapshot?, PostsRecord>?
      feedListViewPagingController;
  Query? feedListViewPagingQuery;
  List<StreamSubscription?> feedListViewStreamSubscriptions = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    for (var s in feedListViewStreamSubscriptions) {
      s?.cancel();
    }
    feedListViewPagingController?.dispose();
  }

  /// Additional helper methods.
  PagingController<DocumentSnapshot?, PostsRecord> setFeedListViewController(
    Query query, {
    DocumentReference<Object?>? parent,
  }) {
    feedListViewPagingController ??=
        _createFeedListViewController(query, parent);
    if (feedListViewPagingQuery != query) {
      feedListViewPagingQuery = query;
      feedListViewPagingController?.refresh();
    }
    return feedListViewPagingController!;
  }

  PagingController<DocumentSnapshot?, PostsRecord>
      _createFeedListViewController(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller =
        PagingController<DocumentSnapshot?, PostsRecord>(firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryPostsRecordPage(
          queryBuilder: (_) => feedListViewPagingQuery ??= query,
          nextPageMarker: nextPageMarker,
          streamSubscriptions: feedListViewStreamSubscriptions,
          controller: controller,
          pageSize: 25,
          isStream: true,
        ),
      );
  }
}
