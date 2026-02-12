import 'package:dartz/dartz.dart';
import 'package:metals/core/networking/api_constants.dart';
import 'package:metals/core/networking/dio_helper.dart';
import 'package:metals/features/gold/data/models/gold_model.dart';

class GoldRepo {
  Future<Either<String, GoldModel>> getGold() async {
    try {
      final res = await DioHelper.getData(endPoint: ApiConstants.goldEndPoint);
      return right(GoldModel.fromJson(res.data));
    } catch (e) {
      return left(e.toString());
    }
  }
}
