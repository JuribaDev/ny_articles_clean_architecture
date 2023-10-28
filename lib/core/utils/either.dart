// The Either class is an abstract class that represents a value of one of two possible types.
// Instances of Either are either an instance of Left or Right.
abstract class Either<L, R> {
  const Either();

  // If this instance contains a left value, isLeft will be true.
  bool get isLeft;
  // If this instance contains a right value, isRight will be true.
  bool get isRight;

  // Get the left value. Throws if this is a Right.
  L get left;
  // Get the right value. Throws if this is a Left.
  R get right;

  // Apply a function to this Either: if it's a Left, apply leftF; if it's a Right, apply rightF.
  T fold<T>(T Function(L) leftF, T Function(R) rightF);

  // Transform the Left value. If this is a Right, doesn't do anything.
  Either<L2, R> mapLeft<L2>(L2 Function(L) f);

  // Transform the Right value. If this is a Left, doesn't do anything.
  Either<L, R2> map<R2>(R2 Function(R) f);

  // Transform the Right value with a function that returns an Either. If this is a Left, doesn't do anything.
  Either<L2, R2> flatMap<L2, R2>(Either<L2, R2> Function(R) f);
}

// Left is a type of Either that represents a left value and its associated operations.
class Left<L, R> extends Either<L, R> {
  const Left(this.value);
  final L value;

  @override
  bool get isLeft => true;
  @override
  bool get isRight => false;

  @override
  L get left => value;
  @override
  R get right => throw Exception('Cannot get right value of a Left');

  @override
  T fold<T>(T Function(L) leftF, T Function(R) rightF) => leftF(value);

  @override
  Either<L2, R> mapLeft<L2>(L2 Function(L) f) => Left<L2, R>(f(value));

  @override
  Either<L, R2> map<R2>(R2 Function(R) f) => Left<L, R2>(value);

  @override
  Either<L2, R2> flatMap<L2, R2>(Either<L2, R2> Function(R) f) => Left<L2, R2>(value as L2);
}

// Right is a type of Either that represents a right value and its associated operations.
class Right<L, R> extends Either<L, R> {
  const Right(this.value);
  final R value;

  @override
  bool get isLeft => false;
  @override
  bool get isRight => true;

  @override
  L get left => throw Exception('Cannot get left value of a Right');
  @override
  R get right => value;

  @override
  T fold<T>(T Function(L) leftF, T Function(R) rightF) => rightF(value);

  @override
  Either<L2, R> mapLeft<L2>(L2 Function(L) f) => Right<L2, R>(value);

  @override
  Either<L, R2> map<R2>(R2 Function(R) f) => Right<L, R2>(f(value));

  @override
  Either<L2, R2> flatMap<L2, R2>(Either<L2, R2> Function(R) f) => f(value);
}
