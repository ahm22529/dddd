import 'package:e_coomer/core/error/fauiler.dart';
import 'package:dartz/dartz.dart';
import 'package:e_coomer/fetures/metrics/data/model/Iteam_model.dart';

abstract class DetailsRepo {
  Future<Either<Failure, List<int>>> getYearlydata(List<Item> iteams);
  Future<Either<Failure, Map<String, dynamic>>> getMontly(
      List<Item> iteams, int namberOfmonthly);
}
