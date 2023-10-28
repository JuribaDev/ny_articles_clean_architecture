import 'package:flutter_test/flutter_test.dart';
import 'package:ny_articles_clean_architecture/core/utils/either.dart';

void main() {
  const leftValue = 'Left Value';
  const rightValue = 'Right Value';
  const left = Left<String, dynamic>(leftValue);
  const right = Right<dynamic, String>(rightValue);
  setUp(() {});

  test('Either should return Left as String and Right as bool with correct values', () {
    testEither(isLeft: true).fold((left) {
      expect(left, 'Juriba');
    }, (right) {
      expect(right, true);
    });
  });

  test('Left should return correct isLeft and isRight values', () {
    expect(left.isLeft, true);
    expect(left.isRight, false);
  });

  test('Right should return correct isLeft and isRight values', () {
    expect(right.isLeft, false);
    expect(right.isRight, true);
  });

  test('Left should return correct value', () {
    expect(left.left, leftValue);
    expect(() => left.right, throwsException);
  });

  test('Right should return correct value', () {
    expect(right.right, rightValue);
    expect(() => right.left, throwsException);
  });

  test('fold should return correct value', () {
    expect(left.fold((l) => l, (r) => r), leftValue);
    expect(right.fold((l) => l, (r) => r), rightValue);
  });

  test('mapLeft should correctly transform Left', () {
    const transformedValue = 'Transformed Left Value';
    final transformed = left.mapLeft((l) => transformedValue);
    expect(transformed.isLeft, true);
    expect(transformed.left, transformedValue);
  });

  test('map should correctly transform Right', () {
    const transformedValue = 'Transformed Right Value';
    final transformed = right.map((r) => transformedValue);
    expect(transformed.isRight, true);
    expect(transformed.right, transformedValue);
  });

  test('flatMap should correctly transform Right', () {
    const transformedValue = 'Transformed Right Value';
    final transformed = right.flatMap((r) => const Right<dynamic, String>(transformedValue));
    expect(transformed.isRight, true);
    expect(transformed.right, transformedValue);
  });

  test('Left.mapLeft applies the function to the value', () {
    const either = Left<String, String>('left');
    final result = either.mapLeft<int>((left) => left.length);
    expect(result.left, equals(4));
    expect(result, isA<Left<int, String>>());
  });

  test('Right.mapLeft does not change the value', () {
    const either = Right<String, String>('right');
    final result = either.mapLeft<int>((left) => left.length);
    expect(result.right, equals('right'));
    expect(result, isA<Right<int, String>>());
  });

  test('Left.map does not change the value', () {
    const either = Left<String, String>('left');
    final result = either.map<int>((right) => right.length);
    expect(result.left, equals('left'));
    expect(result, isA<Left<String, int>>());
  });

  test('Right.map applies the function to the value', () {
    const either = Right<String, String>('right');
    final result = either.map<int>((right) => right.length);
    expect(result.right, equals(5));
    expect(result, isA<Right<String, int>>());
  });

  test('Left.flatMap does not change the value or type', () {
    const either = Left<int, String>(123);
    final result = either.flatMap<int, String>((right) => Left<int, String>(right.length));
    expect(result.left, equals(123));
    expect(result, isA<Left<int, String>>());
  });
}

Either<String, bool> testEither({required bool isLeft}) {
  if (isLeft) {
    return const Left('Juriba');
  } else {
    return const Right(true);
  }
}
