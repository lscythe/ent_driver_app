// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_response.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetScheduleResponseCollection on Isar {
  IsarCollection<ScheduleResponse> get scheduleResponses => this.collection();
}

const ScheduleResponseSchema = CollectionSchema(
  name: r'ScheduleResponse',
  id: -6403832705475339582,
  properties: {
    r'dataTo': PropertySchema(
      id: 0,
      name: r'dataTo',
      type: IsarType.string,
    ),
    r'dateFrom': PropertySchema(
      id: 1,
      name: r'dateFrom',
      type: IsarType.string,
    ),
    r'dateTo': PropertySchema(
      id: 2,
      name: r'dateTo',
      type: IsarType.string,
    ),
    r'employee': PropertySchema(
      id: 3,
      name: r'employee',
      type: IsarType.string,
    ),
    r'id': PropertySchema(
      id: 4,
      name: r'id',
      type: IsarType.long,
    ),
    r'leaveCode': PropertySchema(
      id: 5,
      name: r'leaveCode',
      type: IsarType.string,
    ),
    r'leaveStatus': PropertySchema(
      id: 6,
      name: r'leaveStatus',
      type: IsarType.string,
    ),
    r'leaveType': PropertySchema(
      id: 7,
      name: r'leaveType',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 8,
      name: r'name',
      type: IsarType.string,
    ),
    r'shift': PropertySchema(
      id: 9,
      name: r'shift',
      type: IsarType.string,
    ),
    r'shiftGroup': PropertySchema(
      id: 10,
      name: r'shiftGroup',
      type: IsarType.string,
    )
  },
  estimateSize: _scheduleResponseEstimateSize,
  serialize: _scheduleResponseSerialize,
  deserialize: _scheduleResponseDeserialize,
  deserializeProp: _scheduleResponseDeserializeProp,
  idName: r'isarId',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _scheduleResponseGetId,
  getLinks: _scheduleResponseGetLinks,
  attach: _scheduleResponseAttach,
  version: '3.1.0+1',
);

int _scheduleResponseEstimateSize(
  ScheduleResponse object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.dataTo;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.dateFrom;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.dateTo;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.employee;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.leaveCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.leaveStatus;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.leaveType;
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
    final value = object.shift;
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
  return bytesCount;
}

void _scheduleResponseSerialize(
  ScheduleResponse object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.dataTo);
  writer.writeString(offsets[1], object.dateFrom);
  writer.writeString(offsets[2], object.dateTo);
  writer.writeString(offsets[3], object.employee);
  writer.writeLong(offsets[4], object.id);
  writer.writeString(offsets[5], object.leaveCode);
  writer.writeString(offsets[6], object.leaveStatus);
  writer.writeString(offsets[7], object.leaveType);
  writer.writeString(offsets[8], object.name);
  writer.writeString(offsets[9], object.shift);
  writer.writeString(offsets[10], object.shiftGroup);
}

ScheduleResponse _scheduleResponseDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ScheduleResponse(
    dataTo: reader.readStringOrNull(offsets[0]),
    dateFrom: reader.readStringOrNull(offsets[1]),
    dateTo: reader.readStringOrNull(offsets[2]),
    employee: reader.readStringOrNull(offsets[3]),
    id: reader.readLongOrNull(offsets[4]),
    leaveCode: reader.readStringOrNull(offsets[5]),
    leaveStatus: reader.readStringOrNull(offsets[6]),
    leaveType: reader.readStringOrNull(offsets[7]),
    name: reader.readStringOrNull(offsets[8]),
    shift: reader.readStringOrNull(offsets[9]),
    shiftGroup: reader.readStringOrNull(offsets[10]),
  );
  object.isarId = id;
  return object;
}

P _scheduleResponseDeserializeProp<P>(
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
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _scheduleResponseGetId(ScheduleResponse object) {
  return object.isarId ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _scheduleResponseGetLinks(ScheduleResponse object) {
  return [];
}

void _scheduleResponseAttach(
    IsarCollection<dynamic> col, Id id, ScheduleResponse object) {
  object.isarId = id;
}

extension ScheduleResponseQueryWhereSort
    on QueryBuilder<ScheduleResponse, ScheduleResponse, QWhere> {
  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ScheduleResponseQueryWhere
    on QueryBuilder<ScheduleResponse, ScheduleResponse, QWhereClause> {
  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterWhereClause>
      isarIdEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterWhereClause>
      isarIdNotEqualTo(Id isarId) {
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

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterWhereClause>
      isarIdGreaterThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterWhereClause>
      isarIdLessThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterWhereClause>
      isarIdBetween(
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

extension ScheduleResponseQueryFilter
    on QueryBuilder<ScheduleResponse, ScheduleResponse, QFilterCondition> {
  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      dataToIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dataTo',
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      dataToIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dataTo',
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      dataToEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dataTo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      dataToGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dataTo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      dataToLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dataTo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      dataToBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dataTo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      dataToStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'dataTo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      dataToEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'dataTo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      dataToContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'dataTo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      dataToMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'dataTo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      dataToIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dataTo',
        value: '',
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      dataToIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'dataTo',
        value: '',
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      dateFromIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dateFrom',
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      dateFromIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dateFrom',
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      dateFromEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateFrom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      dateFromGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dateFrom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      dateFromLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dateFrom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      dateFromBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dateFrom',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      dateFromStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'dateFrom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      dateFromEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'dateFrom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      dateFromContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'dateFrom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      dateFromMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'dateFrom',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      dateFromIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateFrom',
        value: '',
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      dateFromIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'dateFrom',
        value: '',
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      dateToIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dateTo',
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      dateToIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dateTo',
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      dateToEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateTo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      dateToGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dateTo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      dateToLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dateTo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      dateToBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dateTo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      dateToStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'dateTo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      dateToEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'dateTo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      dateToContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'dateTo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      dateToMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'dateTo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      dateToIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateTo',
        value: '',
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      dateToIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'dateTo',
        value: '',
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      employeeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'employee',
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      employeeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'employee',
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      employeeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'employee',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      employeeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'employee',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      employeeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'employee',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      employeeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'employee',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      employeeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'employee',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      employeeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'employee',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      employeeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'employee',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      employeeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'employee',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      employeeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'employee',
        value: '',
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      employeeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'employee',
        value: '',
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      idEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      idBetween(
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

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      isarIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isarId',
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      isarIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isarId',
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      isarIdEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      isarIdGreaterThan(
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

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      isarIdLessThan(
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

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      isarIdBetween(
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

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      leaveCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'leaveCode',
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      leaveCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'leaveCode',
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      leaveCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'leaveCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      leaveCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'leaveCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      leaveCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'leaveCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      leaveCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'leaveCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      leaveCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'leaveCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      leaveCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'leaveCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      leaveCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'leaveCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      leaveCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'leaveCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      leaveCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'leaveCode',
        value: '',
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      leaveCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'leaveCode',
        value: '',
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      leaveStatusIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'leaveStatus',
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      leaveStatusIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'leaveStatus',
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      leaveStatusEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'leaveStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      leaveStatusGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'leaveStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      leaveStatusLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'leaveStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      leaveStatusBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'leaveStatus',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      leaveStatusStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'leaveStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      leaveStatusEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'leaveStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      leaveStatusContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'leaveStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      leaveStatusMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'leaveStatus',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      leaveStatusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'leaveStatus',
        value: '',
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      leaveStatusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'leaveStatus',
        value: '',
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      leaveTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'leaveType',
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      leaveTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'leaveType',
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      leaveTypeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'leaveType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      leaveTypeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'leaveType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      leaveTypeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'leaveType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      leaveTypeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'leaveType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      leaveTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'leaveType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      leaveTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'leaveType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      leaveTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'leaveType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      leaveTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'leaveType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      leaveTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'leaveType',
        value: '',
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      leaveTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'leaveType',
        value: '',
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      nameEqualTo(
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

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      nameGreaterThan(
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

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      nameLessThan(
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

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      nameBetween(
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

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      nameStartsWith(
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

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      nameEndsWith(
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

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      shiftIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'shift',
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      shiftIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'shift',
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      shiftEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'shift',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      shiftGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'shift',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      shiftLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'shift',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      shiftBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'shift',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      shiftStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'shift',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      shiftEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'shift',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      shiftContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'shift',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      shiftMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'shift',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      shiftIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'shift',
        value: '',
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      shiftIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'shift',
        value: '',
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      shiftGroupIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'shiftGroup',
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      shiftGroupIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'shiftGroup',
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      shiftGroupEqualTo(
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

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      shiftGroupGreaterThan(
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

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      shiftGroupLessThan(
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

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      shiftGroupBetween(
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

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      shiftGroupStartsWith(
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

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      shiftGroupEndsWith(
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

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      shiftGroupContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'shiftGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      shiftGroupMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'shiftGroup',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      shiftGroupIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'shiftGroup',
        value: '',
      ));
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterFilterCondition>
      shiftGroupIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'shiftGroup',
        value: '',
      ));
    });
  }
}

extension ScheduleResponseQueryObject
    on QueryBuilder<ScheduleResponse, ScheduleResponse, QFilterCondition> {}

extension ScheduleResponseQueryLinks
    on QueryBuilder<ScheduleResponse, ScheduleResponse, QFilterCondition> {}

extension ScheduleResponseQuerySortBy
    on QueryBuilder<ScheduleResponse, ScheduleResponse, QSortBy> {
  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterSortBy>
      sortByDataTo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dataTo', Sort.asc);
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterSortBy>
      sortByDataToDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dataTo', Sort.desc);
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterSortBy>
      sortByDateFrom() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateFrom', Sort.asc);
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterSortBy>
      sortByDateFromDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateFrom', Sort.desc);
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterSortBy>
      sortByDateTo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateTo', Sort.asc);
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterSortBy>
      sortByDateToDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateTo', Sort.desc);
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterSortBy>
      sortByEmployee() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'employee', Sort.asc);
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterSortBy>
      sortByEmployeeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'employee', Sort.desc);
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterSortBy>
      sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterSortBy>
      sortByLeaveCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leaveCode', Sort.asc);
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterSortBy>
      sortByLeaveCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leaveCode', Sort.desc);
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterSortBy>
      sortByLeaveStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leaveStatus', Sort.asc);
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterSortBy>
      sortByLeaveStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leaveStatus', Sort.desc);
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterSortBy>
      sortByLeaveType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leaveType', Sort.asc);
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterSortBy>
      sortByLeaveTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leaveType', Sort.desc);
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterSortBy>
      sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterSortBy> sortByShift() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shift', Sort.asc);
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterSortBy>
      sortByShiftDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shift', Sort.desc);
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterSortBy>
      sortByShiftGroup() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shiftGroup', Sort.asc);
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterSortBy>
      sortByShiftGroupDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shiftGroup', Sort.desc);
    });
  }
}

extension ScheduleResponseQuerySortThenBy
    on QueryBuilder<ScheduleResponse, ScheduleResponse, QSortThenBy> {
  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterSortBy>
      thenByDataTo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dataTo', Sort.asc);
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterSortBy>
      thenByDataToDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dataTo', Sort.desc);
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterSortBy>
      thenByDateFrom() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateFrom', Sort.asc);
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterSortBy>
      thenByDateFromDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateFrom', Sort.desc);
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterSortBy>
      thenByDateTo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateTo', Sort.asc);
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterSortBy>
      thenByDateToDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateTo', Sort.desc);
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterSortBy>
      thenByEmployee() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'employee', Sort.asc);
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterSortBy>
      thenByEmployeeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'employee', Sort.desc);
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterSortBy>
      thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterSortBy>
      thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterSortBy>
      thenByLeaveCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leaveCode', Sort.asc);
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterSortBy>
      thenByLeaveCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leaveCode', Sort.desc);
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterSortBy>
      thenByLeaveStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leaveStatus', Sort.asc);
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterSortBy>
      thenByLeaveStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leaveStatus', Sort.desc);
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterSortBy>
      thenByLeaveType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leaveType', Sort.asc);
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterSortBy>
      thenByLeaveTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leaveType', Sort.desc);
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterSortBy>
      thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterSortBy> thenByShift() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shift', Sort.asc);
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterSortBy>
      thenByShiftDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shift', Sort.desc);
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterSortBy>
      thenByShiftGroup() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shiftGroup', Sort.asc);
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QAfterSortBy>
      thenByShiftGroupDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shiftGroup', Sort.desc);
    });
  }
}

extension ScheduleResponseQueryWhereDistinct
    on QueryBuilder<ScheduleResponse, ScheduleResponse, QDistinct> {
  QueryBuilder<ScheduleResponse, ScheduleResponse, QDistinct> distinctByDataTo(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dataTo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QDistinct>
      distinctByDateFrom({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateFrom', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QDistinct> distinctByDateTo(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateTo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QDistinct>
      distinctByEmployee({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'employee', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QDistinct> distinctById() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id');
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QDistinct>
      distinctByLeaveCode({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'leaveCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QDistinct>
      distinctByLeaveStatus({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'leaveStatus', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QDistinct>
      distinctByLeaveType({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'leaveType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QDistinct> distinctByShift(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'shift', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ScheduleResponse, ScheduleResponse, QDistinct>
      distinctByShiftGroup({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'shiftGroup', caseSensitive: caseSensitive);
    });
  }
}

extension ScheduleResponseQueryProperty
    on QueryBuilder<ScheduleResponse, ScheduleResponse, QQueryProperty> {
  QueryBuilder<ScheduleResponse, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<ScheduleResponse, String?, QQueryOperations> dataToProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dataTo');
    });
  }

  QueryBuilder<ScheduleResponse, String?, QQueryOperations> dateFromProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateFrom');
    });
  }

  QueryBuilder<ScheduleResponse, String?, QQueryOperations> dateToProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateTo');
    });
  }

  QueryBuilder<ScheduleResponse, String?, QQueryOperations> employeeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'employee');
    });
  }

  QueryBuilder<ScheduleResponse, int?, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ScheduleResponse, String?, QQueryOperations>
      leaveCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'leaveCode');
    });
  }

  QueryBuilder<ScheduleResponse, String?, QQueryOperations>
      leaveStatusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'leaveStatus');
    });
  }

  QueryBuilder<ScheduleResponse, String?, QQueryOperations>
      leaveTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'leaveType');
    });
  }

  QueryBuilder<ScheduleResponse, String?, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<ScheduleResponse, String?, QQueryOperations> shiftProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'shift');
    });
  }

  QueryBuilder<ScheduleResponse, String?, QQueryOperations>
      shiftGroupProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'shiftGroup');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScheduleResponse _$ScheduleResponseFromJson(Map<String, dynamic> json) =>
    ScheduleResponse(
      id: json['Id'] as int?,
      name: json['Name'] as String?,
      dateFrom: json['DateFrom'] as String?,
      dateTo: json['DateTo'] as String?,
      dataTo: json['DataTo'] as String?,
      employee: json['Employee'] as String?,
      shift: json['Shift'] as String?,
      shiftGroup: json['ShiftGroup'] as String?,
      leaveType: json['LeaveType'] as String?,
      leaveCode: json['LeaveCode'] as String?,
      leaveStatus: json['LeaveStatus'] as String?,
    )..isarId = json['isarId'] as int?;

Map<String, dynamic> _$ScheduleResponseToJson(ScheduleResponse instance) =>
    <String, dynamic>{
      'isarId': instance.isarId,
      'Id': instance.id,
      'Name': instance.name,
      'DateFrom': instance.dateFrom,
      'DateTo': instance.dateTo,
      'DataTo': instance.dataTo,
      'Employee': instance.employee,
      'Shift': instance.shift,
      'ShiftGroup': instance.shiftGroup,
      'LeaveType': instance.leaveType,
      'LeaveCode': instance.leaveCode,
      'LeaveStatus': instance.leaveStatus,
    };
