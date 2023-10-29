import 'package:ny_articles_clean_architecture/core/error_handling/failure.dart';
import 'package:ny_articles_clean_architecture/core/utils/either.dart';

typedef EitherFailureOrSuccess<T> = Future<Either<Failure, T>>;
