import 'package:angel_migration/angel_migration.dart';
import 'package:angel_model/angel_model.dart';
import 'package:angel_orm/angel_orm.dart';
import 'package:angel_serialize/angel_serialize.dart';
part 'foo.g.dart';

@serializable
@orm
abstract class _Foo extends Model {
  String get text;

  @nullable
  int get number;
}
