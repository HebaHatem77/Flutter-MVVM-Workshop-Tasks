import 'package:dartz/dartz.dart';
import 'package:metals/core/networking/api_constants.dart';
import 'package:metals/core/networking/dio_helper.dart';
import '../models/silver_model.dart';

class SilverRepo {
  Future<Either<String, SilverModel>> getSilver() async {
    try {
      final res = await DioHelper.getData(endPoint: ApiConstants.silverEndPoint);
      return right(SilverModel.fromJson(res.data));
    } catch (e) {
      return left(e.toString());
    }
  }
}
