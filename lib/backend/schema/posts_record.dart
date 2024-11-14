import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PostsRecord extends FirestoreRecord {
  PostsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "post_photo" field.
  String? _postPhoto;
  String get postPhoto => _postPhoto ?? '';
  bool hasPostPhoto() => _postPhoto != null;

  // "time_posted" field.
  DateTime? _timePosted;
  DateTime? get timePosted => _timePosted;
  bool hasTimePosted() => _timePosted != null;

  // "post_text" field.
  String? _postText;
  String get postText => _postText ?? '';
  bool hasPostText() => _postText != null;

  // "post_title" field.
  String? _postTitle;
  String get postTitle => _postTitle ?? '';
  bool hasPostTitle() => _postTitle != null;

  // "poster" field.
  DocumentReference? _poster;
  DocumentReference? get poster => _poster;
  bool hasPoster() => _poster != null;

  // "poster_username" field.
  String? _posterUsername;
  String get posterUsername => _posterUsername ?? '';
  bool hasPosterUsername() => _posterUsername != null;

  // "poster_display_name" field.
  String? _posterDisplayName;
  String get posterDisplayName => _posterDisplayName ?? '';
  bool hasPosterDisplayName() => _posterDisplayName != null;

  // "poster_avatar" field.
  String? _posterAvatar;
  String get posterAvatar => _posterAvatar ?? '';
  bool hasPosterAvatar() => _posterAvatar != null;

  // "post_voters" field.
  List<DocumentReference>? _postVoters;
  List<DocumentReference> get postVoters => _postVoters ?? const [];
  bool hasPostVoters() => _postVoters != null;

  // "post_sources" field.
  String? _postSources;
  String get postSources => _postSources ?? '';
  bool hasPostSources() => _postSources != null;

  void _initializeFields() {
    _postPhoto = snapshotData['post_photo'] as String?;
    _timePosted = snapshotData['time_posted'] as DateTime?;
    _postText = snapshotData['post_text'] as String?;
    _postTitle = snapshotData['post_title'] as String?;
    _poster = snapshotData['poster'] as DocumentReference?;
    _posterUsername = snapshotData['poster_username'] as String?;
    _posterDisplayName = snapshotData['poster_display_name'] as String?;
    _posterAvatar = snapshotData['poster_avatar'] as String?;
    _postVoters = getDataList(snapshotData['post_voters']);
    _postSources = snapshotData['post_sources'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('posts');

  static Stream<PostsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PostsRecord.fromSnapshot(s));

  static Future<PostsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PostsRecord.fromSnapshot(s));

  static PostsRecord fromSnapshot(DocumentSnapshot snapshot) => PostsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PostsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PostsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PostsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PostsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPostsRecordData({
  String? postPhoto,
  DateTime? timePosted,
  String? postText,
  String? postTitle,
  DocumentReference? poster,
  String? posterUsername,
  String? posterDisplayName,
  String? posterAvatar,
  String? postSources,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'post_photo': postPhoto,
      'time_posted': timePosted,
      'post_text': postText,
      'post_title': postTitle,
      'poster': poster,
      'poster_username': posterUsername,
      'poster_display_name': posterDisplayName,
      'poster_avatar': posterAvatar,
      'post_sources': postSources,
    }.withoutNulls,
  );

  return firestoreData;
}

class PostsRecordDocumentEquality implements Equality<PostsRecord> {
  const PostsRecordDocumentEquality();

  @override
  bool equals(PostsRecord? e1, PostsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.postPhoto == e2?.postPhoto &&
        e1?.timePosted == e2?.timePosted &&
        e1?.postText == e2?.postText &&
        e1?.postTitle == e2?.postTitle &&
        e1?.poster == e2?.poster &&
        e1?.posterUsername == e2?.posterUsername &&
        e1?.posterDisplayName == e2?.posterDisplayName &&
        e1?.posterAvatar == e2?.posterAvatar &&
        listEquality.equals(e1?.postVoters, e2?.postVoters) &&
        e1?.postSources == e2?.postSources;
  }

  @override
  int hash(PostsRecord? e) => const ListEquality().hash([
        e?.postPhoto,
        e?.timePosted,
        e?.postText,
        e?.postTitle,
        e?.poster,
        e?.posterUsername,
        e?.posterDisplayName,
        e?.posterAvatar,
        e?.postVoters,
        e?.postSources
      ]);

  @override
  bool isValidKey(Object? o) => o is PostsRecord;
}
