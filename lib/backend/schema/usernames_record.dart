import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsernamesRecord extends FirestoreRecord {
  UsernamesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "used_usernames" field.
  List<String>? _usedUsernames;
  List<String> get usedUsernames => _usedUsernames ?? const [];
  bool hasUsedUsernames() => _usedUsernames != null;

  void _initializeFields() {
    _usedUsernames = getDataList(snapshotData['used_usernames']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('usernames');

  static Stream<UsernamesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsernamesRecord.fromSnapshot(s));

  static Future<UsernamesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsernamesRecord.fromSnapshot(s));

  static UsernamesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UsernamesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsernamesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsernamesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsernamesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsernamesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsernamesRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class UsernamesRecordDocumentEquality implements Equality<UsernamesRecord> {
  const UsernamesRecordDocumentEquality();

  @override
  bool equals(UsernamesRecord? e1, UsernamesRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.usedUsernames, e2?.usedUsernames);
  }

  @override
  int hash(UsernamesRecord? e) => const ListEquality().hash([e?.usedUsernames]);

  @override
  bool isValidKey(Object? o) => o is UsernamesRecord;
}
