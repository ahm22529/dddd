import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:e_coomer/core/error/fauiler.dart';
import 'package:e_coomer/fetures/metrics/data/model/Iteam_model.dart';
import 'package:e_coomer/fetures/metrics/domain/repo/metrices_repo.dart';
import 'package:flutter/services.dart';

class MetricesRepImp extends MetricesRepo {
  @override
  Future<Either<Failure, List<Item>>> loadData() async {
    try {
      final String response =
          await rootBundle.loadString('assets/json/orders.json');

      final List<dynamic> data = jsonDecode(response);
      print(data.map((item) => Item.fromJson(item)).toList());
      return right(data.map((item) => Item.fromJson(item)).toList());
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
}