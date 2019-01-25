// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bar.dart';

// **************************************************************************
// MigrationGenerator
// **************************************************************************

class BarMigration extends Migration {
  @override
  up(Schema schema) {
    schema.create('bars', (table) {
      table.serial('id')..primaryKey();
      table.varChar('description');
      table.timeStamp('created_at');
      table.timeStamp('updated_at');
      table.integer('foo_id').references('foos', 'id');
    });
  }

  @override
  down(Schema schema) {
    schema.drop('bars');
  }
}

// **************************************************************************
// OrmGenerator
// **************************************************************************

class BarQuery extends Query<Bar, BarQueryWhere> {
  BarQuery() {
    _where = new BarQueryWhere(this);
    leftJoin('foos', 'foo_id', 'id',
        additionalFields: const ['text', 'number', 'created_at', 'updated_at']);
  }

  @override
  final BarQueryValues values = new BarQueryValues();

  BarQueryWhere _where;

  @override
  get tableName {
    return 'bars';
  }

  @override
  get fields {
    return const ['id', 'foo_id', 'description', 'created_at', 'updated_at'];
  }

  @override
  BarQueryWhere get where {
    return _where;
  }

  @override
  BarQueryWhere newWhereClause() {
    return new BarQueryWhere(this);
  }

  static Bar parseRow(List row) {
    if (row.every((x) => x == null)) return null;
    var model = new Bar(
        id: row[0].toString(),
        description: (row[2] as String),
        createdAt: (row[3] as DateTime),
        updatedAt: (row[4] as DateTime));
    if (row.length > 5) {
      model = model.copyWith(foo: FooQuery.parseRow(row.skip(5).toList()));
    }
    return model;
  }

  @override
  deserialize(List row) {
    return parseRow(row);
  }
}

class BarQueryWhere extends QueryWhere {
  BarQueryWhere(BarQuery query)
      : id = new NumericSqlExpressionBuilder<int>(query, 'id'),
        fooId = new NumericSqlExpressionBuilder<int>(query, 'foo_id'),
        description = new StringSqlExpressionBuilder(query, 'description'),
        createdAt = new DateTimeSqlExpressionBuilder(query, 'created_at'),
        updatedAt = new DateTimeSqlExpressionBuilder(query, 'updated_at');

  final NumericSqlExpressionBuilder<int> id;

  final NumericSqlExpressionBuilder<int> fooId;

  final StringSqlExpressionBuilder description;

  final DateTimeSqlExpressionBuilder createdAt;

  final DateTimeSqlExpressionBuilder updatedAt;

  @override
  get expressionBuilders {
    return [id, fooId, description, createdAt, updatedAt];
  }
}

class BarQueryValues extends MapQueryValues {
  @override
  get casts {
    return {};
  }

  int get id {
    return (values['id'] as int);
  }

  set id(int value) => values['id'] = value;
  int get fooId {
    return (values['foo_id'] as int);
  }

  set fooId(int value) => values['foo_id'] = value;
  String get description {
    return (values['description'] as String);
  }

  set description(String value) => values['description'] = value;
  DateTime get createdAt {
    return (values['created_at'] as DateTime);
  }

  set createdAt(DateTime value) => values['created_at'] = value;
  DateTime get updatedAt {
    return (values['updated_at'] as DateTime);
  }

  set updatedAt(DateTime value) => values['updated_at'] = value;
  void copyFrom(Bar model) {
    description = model.description;
    createdAt = model.createdAt;
    updatedAt = model.updatedAt;
    if (model.foo != null) {
      values['foo_id'] = int.parse(model.foo.id);
    }
  }
}

// **************************************************************************
// JsonModelGenerator
// **************************************************************************

@generatedSerializable
class Bar extends _Bar {
  Bar({this.id, this.foo, this.description, this.createdAt, this.updatedAt});

  @override
  final String id;

  @override
  final Foo foo;

  @override
  final String description;

  @override
  final DateTime createdAt;

  @override
  final DateTime updatedAt;

  Bar copyWith(
      {String id,
      Foo foo,
      String description,
      DateTime createdAt,
      DateTime updatedAt}) {
    return new Bar(
        id: id ?? this.id,
        foo: foo ?? this.foo,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  bool operator ==(other) {
    return other is _Bar &&
        other.id == id &&
        other.foo == foo &&
        other.description == description &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return hashObjects([id, foo, description, createdAt, updatedAt]);
  }

  Map<String, dynamic> toJson() {
    return BarSerializer.toMap(this);
  }
}

// **************************************************************************
// SerializerGenerator
// **************************************************************************

abstract class BarSerializer {
  static Bar fromMap(Map map) {
    return new Bar(
        id: map['id'] as String,
        foo: map['foo'] != null
            ? FooSerializer.fromMap(map['foo'] as Map)
            : null,
        description: map['description'] as String,
        createdAt: map['created_at'] != null
            ? (map['created_at'] is DateTime
                ? (map['created_at'] as DateTime)
                : DateTime.parse(map['created_at'].toString()))
            : null,
        updatedAt: map['updated_at'] != null
            ? (map['updated_at'] is DateTime
                ? (map['updated_at'] as DateTime)
                : DateTime.parse(map['updated_at'].toString()))
            : null);
  }

  static Map<String, dynamic> toMap(_Bar model) {
    if (model == null) {
      return null;
    }
    return {
      'id': model.id,
      'foo': FooSerializer.toMap(model.foo),
      'description': model.description,
      'created_at': model.createdAt?.toIso8601String(),
      'updated_at': model.updatedAt?.toIso8601String()
    };
  }
}

abstract class BarFields {
  static const List<String> allFields = const <String>[
    id,
    foo,
    description,
    createdAt,
    updatedAt
  ];

  static const String id = 'id';

  static const String foo = 'foo';

  static const String description = 'description';

  static const String createdAt = 'created_at';

  static const String updatedAt = 'updated_at';
}
