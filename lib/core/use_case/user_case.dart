import 'package:ny_articles_clean_architecture/core/constants/type_devs.dart';

// ignore: one_member_abstracts
abstract class UseCase<T, Params> {
  EitherFailureOrSuccess<T> call({Params params});
}
