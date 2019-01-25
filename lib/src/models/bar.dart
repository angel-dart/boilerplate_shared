import 'package:angel_migration/angel_migration.dart';
import 'package:angel_model/angel_model.dart';
import 'package:angel_orm/angel_orm.dart';
import 'package:angel_serialize/angel_serialize.dart';
import 'foo.dart';
part 'bar.g.dart';

@serializable
@orm
abstract class _Bar extends Model {
  @belongsTo
  Foo get foo;

  String get description;
}
