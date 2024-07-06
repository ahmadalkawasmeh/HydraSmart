import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SensorslevelsRecord extends FirestoreRecord {
  SensorslevelsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "ecLevel" field.
  String? _ecLevel;
  String get ecLevel => _ecLevel ?? '';
  bool hasEcLevel() => _ecLevel != null;

  // "phLevel" field.
  String? _phLevel;
  String get phLevel => _phLevel ?? '';
  bool hasPhLevel() => _phLevel != null;

  // "tdsLevel" field.
  String? _tdsLevel;
  String get tdsLevel => _tdsLevel ?? '';
  bool hasTdsLevel() => _tdsLevel != null;

  // "turbidityLevel" field.
  String? _turbidityLevel;
  String get turbidityLevel => _turbidityLevel ?? '';
  bool hasTurbidityLevel() => _turbidityLevel != null;

  // "rating" field.
  String? _rating;
  String get rating => _rating ?? '';
  bool hasRating() => _rating != null;

  // "consume" field.
  String? _consume;
  String get consume => _consume ?? '';
  bool hasConsume() => _consume != null;

  void _initializeFields() {
    _ecLevel = snapshotData['ecLevel'] as String?;
    _phLevel = snapshotData['phLevel'] as String?;
    _tdsLevel = snapshotData['tdsLevel'] as String?;
    _turbidityLevel = snapshotData['turbidityLevel'] as String?;
    _rating = snapshotData['rating'] as String?;
    _consume = snapshotData['consume'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('sensorslevels');

  static Stream<SensorslevelsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SensorslevelsRecord.fromSnapshot(s));

  static Future<SensorslevelsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SensorslevelsRecord.fromSnapshot(s));

  static SensorslevelsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SensorslevelsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SensorslevelsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SensorslevelsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SensorslevelsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SensorslevelsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSensorslevelsRecordData({
  String? ecLevel,
  String? phLevel,
  String? tdsLevel,
  String? turbidityLevel,
  String? rating,
  String? consume,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ecLevel': ecLevel,
      'phLevel': phLevel,
      'tdsLevel': tdsLevel,
      'turbidityLevel': turbidityLevel,
      'rating': rating,
      'consume': consume,
    }.withoutNulls,
  );

  return firestoreData;
}

class SensorslevelsRecordDocumentEquality
    implements Equality<SensorslevelsRecord> {
  const SensorslevelsRecordDocumentEquality();

  @override
  bool equals(SensorslevelsRecord? e1, SensorslevelsRecord? e2) {
    return e1?.ecLevel == e2?.ecLevel &&
        e1?.phLevel == e2?.phLevel &&
        e1?.tdsLevel == e2?.tdsLevel &&
        e1?.turbidityLevel == e2?.turbidityLevel &&
        e1?.rating == e2?.rating &&
        e1?.consume == e2?.consume;
  }

  @override
  int hash(SensorslevelsRecord? e) => const ListEquality().hash([
        e?.ecLevel,
        e?.phLevel,
        e?.tdsLevel,
        e?.turbidityLevel,
        e?.rating,
        e?.consume
      ]);

  @override
  bool isValidKey(Object? o) => o is SensorslevelsRecord;
}
