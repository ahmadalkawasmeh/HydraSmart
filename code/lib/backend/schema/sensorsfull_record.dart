import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SensorsfullRecord extends FirestoreRecord {
  SensorsfullRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "ec" field.
  double? _ec;
  double get ec => _ec ?? 0.0;
  bool hasEc() => _ec != null;

  // "ph" field.
  double? _ph;
  double get ph => _ph ?? 0.0;
  bool hasPh() => _ph != null;

  // "tds" field.
  double? _tds;
  double get tds => _tds ?? 0.0;
  bool hasTds() => _tds != null;

  // "turbidity" field.
  double? _turbidity;
  double get turbidity => _turbidity ?? 0.0;
  bool hasTurbidity() => _turbidity != null;

  void _initializeFields() {
    _ec = castToType<double>(snapshotData['ec']);
    _ph = castToType<double>(snapshotData['ph']);
    _tds = castToType<double>(snapshotData['tds']);
    _turbidity = castToType<double>(snapshotData['turbidity']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('sensorsfull');

  static Stream<SensorsfullRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SensorsfullRecord.fromSnapshot(s));

  static Future<SensorsfullRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SensorsfullRecord.fromSnapshot(s));

  static SensorsfullRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SensorsfullRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SensorsfullRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SensorsfullRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SensorsfullRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SensorsfullRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSensorsfullRecordData({
  double? ec,
  double? ph,
  double? tds,
  double? turbidity,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ec': ec,
      'ph': ph,
      'tds': tds,
      'turbidity': turbidity,
    }.withoutNulls,
  );

  return firestoreData;
}

class SensorsfullRecordDocumentEquality implements Equality<SensorsfullRecord> {
  const SensorsfullRecordDocumentEquality();

  @override
  bool equals(SensorsfullRecord? e1, SensorsfullRecord? e2) {
    return e1?.ec == e2?.ec &&
        e1?.ph == e2?.ph &&
        e1?.tds == e2?.tds &&
        e1?.turbidity == e2?.turbidity;
  }

  @override
  int hash(SensorsfullRecord? e) =>
      const ListEquality().hash([e?.ec, e?.ph, e?.tds, e?.turbidity]);

  @override
  bool isValidKey(Object? o) => o is SensorsfullRecord;
}
