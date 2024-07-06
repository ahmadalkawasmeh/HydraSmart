import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Sample2Record extends FirestoreRecord {
  Sample2Record._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "x" field.
  int? _x;
  int get x => _x ?? 0;
  bool hasX() => _x != null;

  // "y1" field.
  int? _y1;
  int get y1 => _y1 ?? 0;
  bool hasY1() => _y1 != null;

  // "y2" field.
  int? _y2;
  int get y2 => _y2 ?? 0;
  bool hasY2() => _y2 != null;

  // "y3" field.
  int? _y3;
  int get y3 => _y3 ?? 0;
  bool hasY3() => _y3 != null;

  // "y4" field.
  int? _y4;
  int get y4 => _y4 ?? 0;
  bool hasY4() => _y4 != null;

  void _initializeFields() {
    _x = castToType<int>(snapshotData['x']);
    _y1 = castToType<int>(snapshotData['y1']);
    _y2 = castToType<int>(snapshotData['y2']);
    _y3 = castToType<int>(snapshotData['y3']);
    _y4 = castToType<int>(snapshotData['y4']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('sample2');

  static Stream<Sample2Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Sample2Record.fromSnapshot(s));

  static Future<Sample2Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Sample2Record.fromSnapshot(s));

  static Sample2Record fromSnapshot(DocumentSnapshot snapshot) =>
      Sample2Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Sample2Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Sample2Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Sample2Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Sample2Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSample2RecordData({
  int? x,
  int? y1,
  int? y2,
  int? y3,
  int? y4,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'x': x,
      'y1': y1,
      'y2': y2,
      'y3': y3,
      'y4': y4,
    }.withoutNulls,
  );

  return firestoreData;
}

class Sample2RecordDocumentEquality implements Equality<Sample2Record> {
  const Sample2RecordDocumentEquality();

  @override
  bool equals(Sample2Record? e1, Sample2Record? e2) {
    return e1?.x == e2?.x &&
        e1?.y1 == e2?.y1 &&
        e1?.y2 == e2?.y2 &&
        e1?.y3 == e2?.y3 &&
        e1?.y4 == e2?.y4;
  }

  @override
  int hash(Sample2Record? e) =>
      const ListEquality().hash([e?.x, e?.y1, e?.y2, e?.y3, e?.y4]);

  @override
  bool isValidKey(Object? o) => o is Sample2Record;
}
