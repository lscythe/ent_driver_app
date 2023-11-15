// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_trip_form_response.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetListTripFormResponseCollection on Isar {
  IsarCollection<ListTripFormResponse> get listTripFormResponses =>
      this.collection();
}

const ListTripFormResponseSchema = CollectionSchema(
  name: r'ListTripFormResponse',
  id: 7281520845852050768,
  properties: {
    r'containerNumber': PropertySchema(
      id: 0,
      name: r'containerNumber',
      type: IsarType.string,
    ),
    r'deliveryTo': PropertySchema(
      id: 1,
      name: r'deliveryTo',
      type: IsarType.string,
    ),
    r'driverId': PropertySchema(
      id: 2,
      name: r'driverId',
      type: IsarType.long,
    ),
    r'id': PropertySchema(
      id: 3,
      name: r'id',
      type: IsarType.long,
    ),
    r'name': PropertySchema(
      id: 4,
      name: r'name',
      type: IsarType.string,
    ),
    r'shiftDate': PropertySchema(
      id: 5,
      name: r'shiftDate',
      type: IsarType.dateTime,
    ),
    r'shiftGroup': PropertySchema(
      id: 6,
      name: r'shiftGroup',
      type: IsarType.string,
    ),
    r'shiftGroupId': PropertySchema(
      id: 7,
      name: r'shiftGroupId',
      type: IsarType.long,
    ),
    r'size': PropertySchema(
      id: 8,
      name: r'size',
      type: IsarType.long,
    ),
    r'transportFrom': PropertySchema(
      id: 9,
      name: r'transportFrom',
      type: IsarType.string,
    ),
    r'vehicle': PropertySchema(
      id: 10,
      name: r'vehicle',
      type: IsarType.string,
    )
  },
  estimateSize: _listTripFormResponseEstimateSize,
  serialize: _listTripFormResponseSerialize,
  deserialize: _listTripFormResponseDeserialize,
  deserializeProp: _listTripFormResponseDeserializeProp,
  idName: r'colId',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _listTripFormResponseGetId,
  getLinks: _listTripFormResponseGetLinks,
  attach: _listTripFormResponseAttach,
  version: '3.1.0+1',
);

int _listTripFormResponseEstimateSize(
  ListTripFormResponse object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.containerNumber;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.deliveryTo;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.shiftGroup;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.transportFrom;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.vehicle;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _listTripFormResponseSerialize(
  ListTripFormResponse object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.containerNumber);
  writer.writeString(offsets[1], object.deliveryTo);
  writer.writeLong(offsets[2], object.driverId);
  writer.writeLong(offsets[3], object.id);
  writer.writeString(offsets[4], object.name);
  writer.writeDateTime(offsets[5], object.shiftDate);
  writer.writeString(offsets[6], object.shiftGroup);
  writer.writeLong(offsets[7], object.shiftGroupId);
  writer.writeLong(offsets[8], object.size);
  writer.writeString(offsets[9], object.transportFrom);
  writer.writeString(offsets[10], object.vehicle);
}

ListTripFormResponse _listTripFormResponseDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ListTripFormResponse(
    containerNumber: reader.readStringOrNull(offsets[0]),
    deliveryTo: reader.readStringOrNull(offsets[1]),
    driverId: reader.readLongOrNull(offsets[2]),
    id: reader.readLongOrNull(offsets[3]),
    name: reader.readStringOrNull(offsets[4]),
    shiftDate: reader.readDateTimeOrNull(offsets[5]),
    shiftGroup: reader.readStringOrNull(offsets[6]),
    shiftGroupId: reader.readLongOrNull(offsets[7]),
    size: reader.readLongOrNull(offsets[8]),
    transportFrom: reader.readStringOrNull(offsets[9]),
    vehicle: reader.readStringOrNull(offsets[10]),
  );
  object.colId = id;
  return object;
}

P _listTripFormResponseDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readLongOrNull(offset)) as P;
    case 8:
      return (reader.readLongOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _listTripFormResponseGetId(ListTripFormResponse object) {
  return object.colId;
}

List<IsarLinkBase<dynamic>> _listTripFormResponseGetLinks(
    ListTripFormResponse object) {
  return [];
}

void _listTripFormResponseAttach(
    IsarCollection<dynamic> col, Id id, ListTripFormResponse object) {
  object.colId = id;
}

extension ListTripFormResponseQueryWhereSort
    on QueryBuilder<ListTripFormResponse, ListTripFormResponse, QWhere> {
  QueryBuilder<ListTripFormResponse, ListTripFormResponse, QAfterWhere>
      anyColId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ListTripFormResponseQueryWhere
    on QueryBuilder<ListTripFormResponse, ListTripFormResponse, QWhereClause> {
  QueryBuilder<ListTripFormResponse, ListTripFormResponse, QAfterWhereClause>
      colIdEqualTo(Id colId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: colId,
        upper: colId,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse, QAfterWhereClause>
      colIdNotEqualTo(Id colId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: colId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: colId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: colId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: colId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse, QAfterWhereClause>
      colIdGreaterThan(Id colId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: colId, includeLower: include),
      );
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse, QAfterWhereClause>
      colIdLessThan(Id colId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: colId, includeUpper: include),
      );
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse, QAfterWhereClause>
      colIdBetween(
    Id lowerColId,
    Id upperColId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerColId,
        includeLower: includeLower,
        upper: upperColId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ListTripFormResponseQueryFilter on QueryBuilder<ListTripFormResponse,
    ListTripFormResponse, QFilterCondition> {
  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> colIdEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'colId',
        value: value,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> colIdGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'colId',
        value: value,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> colIdLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'colId',
        value: value,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> colIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'colId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> containerNumberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'containerNumber',
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> containerNumberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'containerNumber',
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> containerNumberEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'containerNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> containerNumberGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'containerNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> containerNumberLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'containerNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> containerNumberBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'containerNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> containerNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'containerNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> containerNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'containerNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
          QAfterFilterCondition>
      containerNumberContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'containerNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
          QAfterFilterCondition>
      containerNumberMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'containerNumber',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> containerNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'containerNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> containerNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'containerNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> deliveryToIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'deliveryTo',
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> deliveryToIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'deliveryTo',
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> deliveryToEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deliveryTo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> deliveryToGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'deliveryTo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> deliveryToLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'deliveryTo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> deliveryToBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'deliveryTo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> deliveryToStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'deliveryTo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> deliveryToEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'deliveryTo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
          QAfterFilterCondition>
      deliveryToContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'deliveryTo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
          QAfterFilterCondition>
      deliveryToMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'deliveryTo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> deliveryToIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deliveryTo',
        value: '',
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> deliveryToIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'deliveryTo',
        value: '',
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> driverIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'driverId',
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> driverIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'driverId',
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> driverIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'driverId',
        value: value,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> driverIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'driverId',
        value: value,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> driverIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'driverId',
        value: value,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> driverIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'driverId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> idEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
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

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
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

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
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

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> nameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> nameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> nameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
          QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
          QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> shiftDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'shiftDate',
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> shiftDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'shiftDate',
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> shiftDateEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'shiftDate',
        value: value,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> shiftDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'shiftDate',
        value: value,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> shiftDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'shiftDate',
        value: value,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> shiftDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'shiftDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> shiftGroupIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'shiftGroup',
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> shiftGroupIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'shiftGroup',
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> shiftGroupEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'shiftGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> shiftGroupGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'shiftGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> shiftGroupLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'shiftGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> shiftGroupBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'shiftGroup',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> shiftGroupStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'shiftGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> shiftGroupEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'shiftGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
          QAfterFilterCondition>
      shiftGroupContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'shiftGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
          QAfterFilterCondition>
      shiftGroupMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'shiftGroup',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> shiftGroupIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'shiftGroup',
        value: '',
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> shiftGroupIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'shiftGroup',
        value: '',
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> shiftGroupIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'shiftGroupId',
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> shiftGroupIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'shiftGroupId',
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> shiftGroupIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'shiftGroupId',
        value: value,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> shiftGroupIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'shiftGroupId',
        value: value,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> shiftGroupIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'shiftGroupId',
        value: value,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> shiftGroupIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'shiftGroupId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> sizeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'size',
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> sizeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'size',
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> sizeEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'size',
        value: value,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> sizeGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'size',
        value: value,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> sizeLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'size',
        value: value,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> sizeBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'size',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> transportFromIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'transportFrom',
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> transportFromIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'transportFrom',
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> transportFromEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'transportFrom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> transportFromGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'transportFrom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> transportFromLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'transportFrom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> transportFromBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'transportFrom',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> transportFromStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'transportFrom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> transportFromEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'transportFrom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
          QAfterFilterCondition>
      transportFromContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'transportFrom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
          QAfterFilterCondition>
      transportFromMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'transportFrom',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> transportFromIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'transportFrom',
        value: '',
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> transportFromIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'transportFrom',
        value: '',
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> vehicleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'vehicle',
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> vehicleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'vehicle',
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> vehicleEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'vehicle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> vehicleGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'vehicle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> vehicleLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'vehicle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> vehicleBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'vehicle',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> vehicleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'vehicle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> vehicleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'vehicle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
          QAfterFilterCondition>
      vehicleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'vehicle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
          QAfterFilterCondition>
      vehicleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'vehicle',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> vehicleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'vehicle',
        value: '',
      ));
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse,
      QAfterFilterCondition> vehicleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'vehicle',
        value: '',
      ));
    });
  }
}

extension ListTripFormResponseQueryObject on QueryBuilder<ListTripFormResponse,
    ListTripFormResponse, QFilterCondition> {}

extension ListTripFormResponseQueryLinks on QueryBuilder<ListTripFormResponse,
    ListTripFormResponse, QFilterCondition> {}

extension ListTripFormResponseQuerySortBy
    on QueryBuilder<ListTripFormResponse, ListTripFormResponse, QSortBy> {
  QueryBuilder<ListTripFormResponse, ListTripFormResponse, QAfterSortBy>
      sortByContainerNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'containerNumber', Sort.asc);
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse, QAfterSortBy>
      sortByContainerNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'containerNumber', Sort.desc);
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse, QAfterSortBy>
      sortByDeliveryTo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deliveryTo', Sort.asc);
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse, QAfterSortBy>
      sortByDeliveryToDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deliveryTo', Sort.desc);
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse, QAfterSortBy>
      sortByDriverId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'driverId', Sort.asc);
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse, QAfterSortBy>
      sortByDriverIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'driverId', Sort.desc);
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse, QAfterSortBy>
      sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse, QAfterSortBy>
      sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse, QAfterSortBy>
      sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse, QAfterSortBy>
      sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse, QAfterSortBy>
      sortByShiftDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shiftDate', Sort.asc);
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse, QAfterSortBy>
      sortByShiftDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shiftDate', Sort.desc);
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse, QAfterSortBy>
      sortByShiftGroup() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shiftGroup', Sort.asc);
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse, QAfterSortBy>
      sortByShiftGroupDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shiftGroup', Sort.desc);
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse, QAfterSortBy>
      sortByShiftGroupId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shiftGroupId', Sort.asc);
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse, QAfterSortBy>
      sortByShiftGroupIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shiftGroupId', Sort.desc);
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse, QAfterSortBy>
      sortBySize() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'size', Sort.asc);
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse, QAfterSortBy>
      sortBySizeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'size', Sort.desc);
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse, QAfterSortBy>
      sortByTransportFrom() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transportFrom', Sort.asc);
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse, QAfterSortBy>
      sortByTransportFromDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transportFrom', Sort.desc);
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse, QAfterSortBy>
      sortByVehicle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vehicle', Sort.asc);
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse, QAfterSortBy>
      sortByVehicleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vehicle', Sort.desc);
    });
  }
}

extension ListTripFormResponseQuerySortThenBy
    on QueryBuilder<ListTripFormResponse, ListTripFormResponse, QSortThenBy> {
  QueryBuilder<ListTripFormResponse, ListTripFormResponse, QAfterSortBy>
      thenByColId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colId', Sort.asc);
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse, QAfterSortBy>
      thenByColIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colId', Sort.desc);
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse, QAfterSortBy>
      thenByContainerNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'containerNumber', Sort.asc);
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse, QAfterSortBy>
      thenByContainerNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'containerNumber', Sort.desc);
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse, QAfterSortBy>
      thenByDeliveryTo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deliveryTo', Sort.asc);
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse, QAfterSortBy>
      thenByDeliveryToDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deliveryTo', Sort.desc);
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse, QAfterSortBy>
      thenByDriverId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'driverId', Sort.asc);
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse, QAfterSortBy>
      thenByDriverIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'driverId', Sort.desc);
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse, QAfterSortBy>
      thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse, QAfterSortBy>
      thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse, QAfterSortBy>
      thenByShiftDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shiftDate', Sort.asc);
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse, QAfterSortBy>
      thenByShiftDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shiftDate', Sort.desc);
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse, QAfterSortBy>
      thenByShiftGroup() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shiftGroup', Sort.asc);
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse, QAfterSortBy>
      thenByShiftGroupDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shiftGroup', Sort.desc);
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse, QAfterSortBy>
      thenByShiftGroupId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shiftGroupId', Sort.asc);
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse, QAfterSortBy>
      thenByShiftGroupIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shiftGroupId', Sort.desc);
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse, QAfterSortBy>
      thenBySize() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'size', Sort.asc);
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse, QAfterSortBy>
      thenBySizeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'size', Sort.desc);
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse, QAfterSortBy>
      thenByTransportFrom() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transportFrom', Sort.asc);
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse, QAfterSortBy>
      thenByTransportFromDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transportFrom', Sort.desc);
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse, QAfterSortBy>
      thenByVehicle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vehicle', Sort.asc);
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse, QAfterSortBy>
      thenByVehicleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vehicle', Sort.desc);
    });
  }
}

extension ListTripFormResponseQueryWhereDistinct
    on QueryBuilder<ListTripFormResponse, ListTripFormResponse, QDistinct> {
  QueryBuilder<ListTripFormResponse, ListTripFormResponse, QDistinct>
      distinctByContainerNumber({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'containerNumber',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse, QDistinct>
      distinctByDeliveryTo({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'deliveryTo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse, QDistinct>
      distinctByDriverId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'driverId');
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse, QDistinct>
      distinctById() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id');
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse, QDistinct>
      distinctByName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse, QDistinct>
      distinctByShiftDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'shiftDate');
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse, QDistinct>
      distinctByShiftGroup({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'shiftGroup', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse, QDistinct>
      distinctByShiftGroupId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'shiftGroupId');
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse, QDistinct>
      distinctBySize() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'size');
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse, QDistinct>
      distinctByTransportFrom({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'transportFrom',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ListTripFormResponse, ListTripFormResponse, QDistinct>
      distinctByVehicle({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'vehicle', caseSensitive: caseSensitive);
    });
  }
}

extension ListTripFormResponseQueryProperty on QueryBuilder<
    ListTripFormResponse, ListTripFormResponse, QQueryProperty> {
  QueryBuilder<ListTripFormResponse, int, QQueryOperations> colIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'colId');
    });
  }

  QueryBuilder<ListTripFormResponse, String?, QQueryOperations>
      containerNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'containerNumber');
    });
  }

  QueryBuilder<ListTripFormResponse, String?, QQueryOperations>
      deliveryToProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'deliveryTo');
    });
  }

  QueryBuilder<ListTripFormResponse, int?, QQueryOperations>
      driverIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'driverId');
    });
  }

  QueryBuilder<ListTripFormResponse, int?, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ListTripFormResponse, String?, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<ListTripFormResponse, DateTime?, QQueryOperations>
      shiftDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'shiftDate');
    });
  }

  QueryBuilder<ListTripFormResponse, String?, QQueryOperations>
      shiftGroupProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'shiftGroup');
    });
  }

  QueryBuilder<ListTripFormResponse, int?, QQueryOperations>
      shiftGroupIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'shiftGroupId');
    });
  }

  QueryBuilder<ListTripFormResponse, int?, QQueryOperations> sizeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'size');
    });
  }

  QueryBuilder<ListTripFormResponse, String?, QQueryOperations>
      transportFromProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'transportFrom');
    });
  }

  QueryBuilder<ListTripFormResponse, String?, QQueryOperations>
      vehicleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'vehicle');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListTripFormResponse _$ListTripFormResponseFromJson(
        Map<String, dynamic> json) =>
    ListTripFormResponse(
      id: json['Id'] as int?,
      shiftGroupId: json['ShiftGroupId'] as int?,
      driverId: json['DriverId'] as int?,
      name: json['Name'] as String?,
      shiftGroup: json['ShiftGroup'] as String?,
      shiftDate: json['ShiftDate'] == null
          ? null
          : DateTime.parse(json['ShiftDate'] as String),
      vehicle: json['Vehicle'] as String?,
      containerNumber: json['ContainerNumber'] as String?,
      transportFrom: json['TransportFrom'] as String?,
      deliveryTo: json['DeliveryTo'] as String?,
      size: json['Size'] as int?,
    );

Map<String, dynamic> _$ListTripFormResponseToJson(
        ListTripFormResponse instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'ShiftGroupId': instance.shiftGroupId,
      'DriverId': instance.driverId,
      'Name': instance.name,
      'ShiftGroup': instance.shiftGroup,
      'ShiftDate': instance.shiftDate?.toIso8601String(),
      'Vehicle': instance.vehicle,
      'ContainerNumber': instance.containerNumber,
      'TransportFrom': instance.transportFrom,
      'DeliveryTo': instance.deliveryTo,
      'Size': instance.size,
    };
