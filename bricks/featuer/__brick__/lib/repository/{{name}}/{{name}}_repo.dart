import '../../model/{{name}}/{{name}}_model.dart';
import 'package:dartz/dartz.dart';

abstract class {{name.pascalCase()}}RepoAbs {
  Future<Either<KFailure, {{name.pascalCase()}}Model>> get();

}

class {{name.pascalCase()}}RepoImp implements {{name.pascalCase()}}RepoAbs {
  @override
  Future get() {
    throw UnimplementedError();
  }

}
