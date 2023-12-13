// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transport_location_response.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetTransportLocationResponseCollection on Isar {
  IsarCollection<TransportLocationResponse> get transportLocationResponses =>
      this.collection();
}

const TransportLocationResponseSchema = CollectionSchema(
  name: r'TransportLocationResponse',
  id: 2380532584899752697,
  properties: {
    r'id': PropertySchema(
      id: 0,
      name: r'id',
      type: IsarType.long,
    ),
    r'location': PropertySchema(
      id: 1,
      name: r'location',
      type: IsarType.string,
    ),
    r'shiftLocationId': PropertySchema(
      id: 2,
      name: r'shiftLocationId',
      type: IsarType.long,
    )
  },
  estimateSize: _transportLocationResponseEstimateSize,
  serialize: _transportLocationResponseSerialize,
  deserialize: _transportLocationResponseDeserialize,
  deserializeProp: _transportLocationResponseDeserializeProp,
  idName: r'isarId',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _transportLocationResponseGetId,
  getLinks: _transportLocationResponseGetLinks,
  attach: _transportLocationResponseAttach,
  version: '3.1.0+1',
);

int _transportLocationResponseEstimateSize(
  TransportLocationResponse object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.location;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _transportLocationResponseSerialize(
  TransportLocationResponse object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.id);
  writer.writeString(offsets[1], object.location);
  writer.writeLong(offsets[2], object.shiftLocationId);
}

TransportLocationResponse _transportLocationResponseDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TransportLocationResponse(
    id: reader.readLongOrNull(offsets[0]),
    location: reader.readStringOrNull(offsets[1]),
    shiftLocationId: reader.readLongOrNull(offsets[2]),
  );
  object.isarId = id;
  return object;
}

P _transportLocationResponseDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _transportLocationResponseGetId(TransportLocationResponse object) {
  return object.isarId ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _transportLocationResponseGetLinks(
    TransportLocationResponse object) {
  return [];
}

void _transportLocationResponseAttach(
    IsarCollection<dynamic> col, Id id, TransportLocationResponse object) {
  object.isarId = id;
}

extension TransportLocationResponseQueryWhereSort on QueryBuilder<
    TransportLocationResponse, TransportLocationResponse, QWhere> {
  QueryBuilder<TransportLocationResponse, TransportLocationResponse,
      QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension TransportLocationResponseQueryWhere on QueryBuilder<
    TransportLocationResponse, TransportLocationResponse, QWhereClause> {
  QueryBuilder<TransportLocationResponse, TransportLocationResponse,
      QAfterWhereClause> isarIdEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<TransportLocationResponse, TransportLocationResponse,
      QAfterWhereClause> isarIdNotEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<TransportLocationResponse, TransportLocationResponse,
      QAfterWhereClause> isarIdGreaterThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<TransportLocationResponse, TransportLocationResponse,
      QAfterWhereClause> isarIdLessThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<TransportLocationResponse, TransportLocationResponse,
      QAfterWhereClause> isarIdBetween(
    Id lowerIsarId,
    Id upperIsarId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIsarId,
        includeLower: includeLower,
        upper: upperIsarId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension TransportLocationResponseQueryFilter on QueryBuilder<
    TransportLocationResponse, TransportLocationResponse, QFilterCondition> {
  QueryBuilder<TransportLocationResponse, TransportLocationResponse,
      QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<TransportLocationResponse, TransportLocationResponse,
      QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<TransportLocationResponse, TransportLocationResponse,
      QAfterFilterCondition> idEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TransportLocationResponse, TransportLocationResponse,
      QAfterFilterCondition> idGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TransportLocationResponse, TransportLocationResponse,
      QAfterFilterCondition> idLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TransportLocationResponse, TransportLocationResponse,
      QAfterFilterCondition> idBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TransportLocationResponse, TransportLocationResponse,
      QAfterFilterCondition> isarIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isarId',
      ));
    });
  }

  QueryBuilder<TransportLocationResponse, TransportLocationResponse,
      QAfterFilterCondition> isarIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isarId',
      ));
    });
  }

  QueryBuilder<TransportLocationResponse, TransportLocationResponse,
      QAfterFilterCondition> isarIdEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<TransportLocationResponse, TransportLocationResponse,
      QAfterFilterCondition> isarIdGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<TransportLocationResponse, TransportLocationResponse,
      QAfterFilterCondition> isarIdLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<TransportLocationResponse, TransportLocationResponse,
      QAfterFilterCondition> isarIdBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isarId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TransportLocationResponse, TransportLocationResponse,
      QAfterFilterCondition> locationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'location',
      ));
    });
  }

  QueryBuilder<TransportLocationResponse, TransportLocationResponse,
      QAfterFilterCondition> locationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'location',
      ));
    });
  }

  QueryBuilder<TransportLocationResponse, TransportLocationResponse,
      QAfterFilterCondition> locationEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransportLocationResponse, TransportLocationResponse,
      QAfterFilterCondition> locationGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransportLocationResponse, TransportLocationResponse,
      QAfterFilterCondition> locationLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransportLocationResponse, TransportLocationResponse,
      QAfterFilterCondition> locationBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'location',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransportLocationResponse, TransportLocationResponse,
      QAfterFilterCondition> locationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransportLocationResponse, TransportLocationResponse,
      QAfterFilterCondition> locationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransportLocationResponse, TransportLocationResponse,
          QAfterFilterCondition>
      locationContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransportLocationResponse, TransportLocationResponse,
          QAfterFilterCondition>
      locationMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'location',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TransportLocationResponse, TransportLocationResponse,
      QAfterFilterCondition> locationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'location',
        value: '',
      ));
    });
  }

  QueryBuilder<TransportLocationResponse, TransportLocationResponse,
      QAfterFilterCondition> locationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'location',
        value: '',
      ));
    });
  }

  QueryBuilder<TransportLocationResponse, TransportLocationResponse,
      QAfterFilterCondition> shiftLocationIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'shiftLocationId',
      ));
    });
  }

  QueryBuilder<TransportLocationResponse, TransportLocationResponse,
      QAfterFilterCondition> shiftLocationIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'shiftLocationId',
      ));
    });
  }

  QueryBuilder<TransportLocationResponse, TransportLocationResponse,
      QAfterFilterCondition> shiftLocationIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'shiftLocationId',
        value: value,
      ));
    });
  }

  QueryBuilder<TransportLocationResponse, TransportLocationResponse,
      QAfterFilterCondition> shiftLocationIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'shiftLocationId',
        value: value,
      ));
    });
  }

  QueryBuilder<TransportLocationResponse, TransportLocationResponse,
      QAfterFilterCondition> shiftLocationIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'shiftLocationId',
        value: value,
      ));
    });
  }

  QueryBuilder<TransportLocationResponse, TransportLocationResponse,
      QAfterFilterCondition> shiftLocationIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'shiftLocationId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension TransportLocationResponseQueryObject on QueryBuilder<
    TransportLocationResponse, TransportLocationResponse, QFilterCondition> {}

extension TransportLocationResponseQueryLinks on QueryBuilder<
    TransportLocationResponse, TransportLocationResponse, QFilterCondition> {}

extension TransportLocationResponseQuerySortBy on QueryBuilder<
    TransportLocationResponse, TransportLocationResponse, QSortBy> {
  QueryBuilder<TransportLocationResponse, TransportLocationResponse,
      QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<TransportLocationResponse, TransportLocationResponse,
      QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<TransportLocationResponse, TransportLocationResponse,
      QAfterSortBy> sortByLocation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'location', Sort.asc);
    });
  }

  QueryBuilder<TransportLocationResponse, TransportLocationResponse,
      QAfterSortBy> sortByLocationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'location', Sort.desc);
    });
  }

  QueryBuilder<TransportLocationResponse, TransportLocationResponse,
      QAfterSortBy> sortByShiftLocationId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shiftLocationId', Sort.asc);
    });
  }

  QueryBuilder<TransportLocationResponse, TransportLocationResponse,
      QAfterSortBy> sortByShiftLocationIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shiftLocationId', Sort.desc);
    });
  }
}

extension TransportLocationResponseQuerySortThenBy on QueryBuilder<
    TransportLocationResponse, TransportLocationResponse, QSortThenBy> {
  QueryBuilder<TransportLocationResponse, TransportLocationResponse,
      QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<TransportLocationResponse, TransportLocationResponse,
      QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<TransportLocationResponse, TransportLocationResponse,
      QAfterSortBy> thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<TransportLocationResponse, TransportLocationResponse,
      QAfterSortBy> thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<TransportLocationResponse, TransportLocationResponse,
      QAfterSortBy> thenByLocation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'location', Sort.asc);
    });
  }

  QueryBuilder<TransportLocationResponse, TransportLocationResponse,
      QAfterSortBy> thenByLocationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'location', Sort.desc);
    });
  }

  QueryBuilder<TransportLocationResponse, TransportLocationResponse,
      QAfterSortBy> thenByShiftLocationId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shiftLocationId', Sort.asc);
    });
  }

  QueryBuilder<TransportLocationResponse, TransportLocationResponse,
      QAfterSortBy> thenByShiftLocationIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shiftLocationId', Sort.desc);
    });
  }
}

extension TransportLocationResponseQueryWhereDistinct on QueryBuilder<
    TransportLocationResponse, TransportLocationResponse, QDistinct> {
  QueryBuilder<TransportLocationResponse, TransportLocationResponse, QDistinct>
      distinctById() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id');
    });
  }

  QueryBuilder<TransportLocationResponse, TransportLocationResponse, QDistinct>
      distinctByLocation({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'location', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TransportLocationResponse, TransportLocationResponse, QDistinct>
      distinctByShiftLocationId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'shiftLocationId');
    });
  }
}

extension TransportLocationResponseQueryProperty on QueryBuilder<
    TransportLocationResponse, TransportLocationResponse, QQueryProperty> {
  QueryBuilder<TransportLocationResponse, int, QQueryOperations>
      isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<TransportLocationResponse, int?, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<TransportLocationResponse, String?, QQueryOperations>
      locationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'location');
    });
  }

  QueryBuilder<TransportLocationResponse, int?, QQueryOperations>
      shiftLocationIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'shiftLocationId');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransportLocationResponse _$TransportLocationResponseFromJson(
        Map<String, dynamic> json) =>
    TransportLocationResponse(
      id: json['Id'] as int?,
      location: json['Location'] as String?,
      shiftLocationId: json['ShiftLocationId'] as int?,
    )..isarId = json['isarId'] as int?;

Map<String, dynamic> _$TransportLocationResponseToJson(
        TransportLocationResponse instance) =>
    <String, dynamic>{
      'isarId': instance.isarId,
      'Id': instance.id,
      'Location': instance.location,
      'ShiftLocationId': instance.shiftLocationId,
    };
