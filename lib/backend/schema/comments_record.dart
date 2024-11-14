import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CommentsRecord extends FirestoreRecord {
  CommentsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "comment_user" field.
  DocumentReference? _commentUser;
  DocumentReference? get commentUser => _commentUser;
  bool hasCommentUser() => _commentUser != null;

  // "comment_text" field.
  String? _commentText;
  String get commentText => _commentText ?? '';
  bool hasCommentText() => _commentText != null;

  // "time_commented" field.
  DateTime? _timeCommented;
  DateTime? get timeCommented => _timeCommented;
  bool hasTimeCommented() => _timeCommented != null;

  // "comment_voters" field.
  List<DocumentReference>? _commentVoters;
  List<DocumentReference> get commentVoters => _commentVoters ?? const [];
  bool hasCommentVoters() => _commentVoters != null;

  // "commenter_username" field.
  String? _commenterUsername;
  String get commenterUsername => _commenterUsername ?? '';
  bool hasCommenterUsername() => _commenterUsername != null;

  // "commenter_display_name" field.
  String? _commenterDisplayName;
  String get commenterDisplayName => _commenterDisplayName ?? '';
  bool hasCommenterDisplayName() => _commenterDisplayName != null;

  // "commenter_avatar" field.
  String? _commenterAvatar;
  String get commenterAvatar => _commenterAvatar ?? '';
  bool hasCommenterAvatar() => _commenterAvatar != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _commentUser = snapshotData['comment_user'] as DocumentReference?;
    _commentText = snapshotData['comment_text'] as String?;
    _timeCommented = snapshotData['time_commented'] as DateTime?;
    _commentVoters = getDataList(snapshotData['comment_voters']);
    _commenterUsername = snapshotData['commenter_username'] as String?;
    _commenterDisplayName = snapshotData['commenter_display_name'] as String?;
    _commenterAvatar = snapshotData['commenter_avatar'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('comments')
          : FirebaseFirestore.instance.collectionGroup('comments');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('comments').doc(id);

  static Stream<CommentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CommentsRecord.fromSnapshot(s));

  static Future<CommentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CommentsRecord.fromSnapshot(s));

  static CommentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CommentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CommentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CommentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CommentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CommentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCommentsRecordData({
  DocumentReference? commentUser,
  String? commentText,
  DateTime? timeCommented,
  String? commenterUsername,
  String? commenterDisplayName,
  String? commenterAvatar,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'comment_user': commentUser,
      'comment_text': commentText,
      'time_commented': timeCommented,
      'commenter_username': commenterUsername,
      'commenter_display_name': commenterDisplayName,
      'commenter_avatar': commenterAvatar,
    }.withoutNulls,
  );

  return firestoreData;
}

class CommentsRecordDocumentEquality implements Equality<CommentsRecord> {
  const CommentsRecordDocumentEquality();

  @override
  bool equals(CommentsRecord? e1, CommentsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.commentUser == e2?.commentUser &&
        e1?.commentText == e2?.commentText &&
        e1?.timeCommented == e2?.timeCommented &&
        listEquality.equals(e1?.commentVoters, e2?.commentVoters) &&
        e1?.commenterUsername == e2?.commenterUsername &&
        e1?.commenterDisplayName == e2?.commenterDisplayName &&
        e1?.commenterAvatar == e2?.commenterAvatar;
  }

  @override
  int hash(CommentsRecord? e) => const ListEquality().hash([
        e?.commentUser,
        e?.commentText,
        e?.timeCommented,
        e?.commentVoters,
        e?.commenterUsername,
        e?.commenterDisplayName,
        e?.commenterAvatar
      ]);

  @override
  bool isValidKey(Object? o) => o is CommentsRecord;
}
