// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'foo.dart';

// **************************************************************************
// MigrationGenerator
// **************************************************************************

class FooMigration extends Migration {
  @override
  up(Schema schema) {
    schema.create('foos', (table) {
      table.serial('id')..primaryKey();
      table.varChar('text');
      table.integer('number');
      table.timeStamp('created_at');
      table.timeStamp('updated_at');
    });
  }

  @override
  down(Schema schema) {
    schema.drop('foos');
  }
}

// **************************************************************************
// OrmGenerator
// **************************************************************************

class FooQuery extends Query<Foo, FooQueryWhere> {
  FooQuery() {
    _where = new FooQueryWhere(this);
  }

  @override
  final FooQueryValues values = new FooQueryValues();

  FooQueryWhere _where;

  @override
  get tableName {
    return 'foos';
  }

  @override
  get fields {
    return const ['id', 'text', 'number', 'created_at', 'updated_at'];
  }

  @override
  FooQueryWhere get where {
    return _where;
  }

  @override
  FooQueryWhere newWhereClause() {
    return new FooQueryWhere(this);
  }

  static Foo parseRow(List row) {
    if (row.every((x) => x == null)) return null;
    var model = new Foo(
        id: row[0].toString(),
        text: (row[1] as String),
        number: (row[2] as int),
        createdAt: (row[3] as DateTime),
        updatedAt: (row[4] as DateTime));
    return model;
  }

  @override
  deserialize(List row) {
    return parseRow(row);
  }
}

class FooQueryWhere extends QueryWhere {
  FooQueryWhere(FooQuery query)
      : id = new NumericSqlExpressionBuilder<int>(query, 'id'),
        text = new StringSqlExpressionBuilder(query, 'text'),
        number = new NumericSqlExpressionBuilder<int>(query, 'number'),
        createdAt = new DateTimeSqlExpressionBuilder(query, 'created_at'),
        updatedAt = new DateTimeSqlExpressionBuilder(query, 'updated_at');

  final NumericSqlExpressionBuilder<int> id;

  final StringSqlExpressionBuilder text;

  final NumericSqlExpressionBuilder<int> number;

  final DateTimeSqlExpressionBuilder createdAt;

  final DateTimeSqlExpressionBuilder updatedAt;

  @override
  get expressionBuilders {
    return [id, text, number, createdAt, updatedAt];
  }
}

class FooQueryValues extends MapQueryValues {
  @override
  get casts {
    return {};
  }

  int get id {
    return (values['id'] as int);
  }

  set id(int value) => values['id'] = value;
  String get text {
    return (values['text'] as String);
  }

  set text(String value) => values['text'] = value;
  int get number {
    return (values['number'] as int);
  }

  set number(int value) => values['number'] = value;
  DateTime get createdAt {
    return (values['created_at'] as DateTime);
  }

  set createdAt(DateTime value) => values['created_at'] = value;
  DateTime get updatedAt {
    return (values['updated_at'] as DateTime);
  }

  set updatedAt(DateTime value) => values['updated_at'] = value;
  void copyFrom(Foo model) {
    text = model.text;
    number = model.number;
    createdAt = model.createdAt;
    updatedAt = model.updatedAt;
  }
}

// **************************************************************************
// JsonModelGenerator
// **************************************************************************

@generatedSerializable
class Foo extends _Foo {
  Foo({this.id, this.text, this.number, this.createdAt, this.updatedAt});

  @override
  final String id;

  @override
  final String text;

  @override
  final int number;

  @override
  final DateTime createdAt;

  @override
  final DateTime updatedAt;

  Foo copyWith(
      {String id,
      String text,
      int number,
      DateTime createdAt,
      DateTime updatedAt}) {
    return new Foo(
        id: id ?? this.id,
        text: text ?? this.text,
        number: number ?? this.number,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  bool operator ==(other) {
    return other is _Foo &&
        other.id == id &&
        other.text == text &&
        other.number == number &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return hashObjects([id, text, number, createdAt, updatedAt]);
  }

  Map<String, dynamic> toJson() {
    return FooSerializer.toMap(this);
  }
}

// **************************************************************************
// SerializerGenerator
// **************************************************************************

abstract class FooSerializer {
  static Foo fromMap(Map map) {
    return new Foo(
        id: map['id'] as String,
        text: map['text'] as String,
        number: map['number'] as int,
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

  static Map<String, dynamic> toMap(_Foo model) {
    if (model == null) {
      return null;
    }
    return {
      'id': model.id,
      'text': model.text,
      'number': model.number,
      'created_at': model.createdAt?.toIso8601String(),
      'updated_at': model.updatedAt?.toIso8601String()
    };
  }
}

abstract class FooFields {
  static const List<String> allFields = const <String>[
    id,
    text,
    number,
    createdAt,
    updatedAt
  ];

  static const String id = 'id';

  static const String text = 'text';

  static const String number = 'number';

  static const String createdAt = 'created_at';

  static const String updatedAt = 'updated_at';
}
