import 'package:dartz/dartz.dart';
import 'package:holidays_calender/common/failures/failures.dart';

typedef FutureResult<T> = Future<Either<MainFailure, T>>;

//FAILURE OR SUCCESS
typedef FailureOrSuccess<T> = Either<MainFailure, T>;
