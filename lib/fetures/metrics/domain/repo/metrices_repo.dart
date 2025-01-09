import 'package:dartz/dartz.dart';
import 'package:e_coomer/core/error/fauiler.dart';
import 'package:e_coomer/fetures/metrics/data/model/Iteam_model.dart';

abstract class MetricesRepo {
  Future<Either<Failure, List<Item>>> loadData();
}
