import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:metals/core/constants/app_colors.dart';
import 'package:metals/core/constants/app_images.dart';
import 'package:metals/core/widgets/custom_metals_card.dart';
import 'package:metals/features/gold/presentation/cubit/gold_cubit.dart';
import 'package:metals/features/gold/presentation/cubit/gold_states.dart';

import '../../../data/repo/gold_repo.dart';

class GoldScreen extends StatelessWidget {
  const GoldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GoldCubit(GoldRepo())..getGold(),
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black87,
          centerTitle: true,
          title: Text(
            'Gold Tracker',
            style: TextStyle(
              color: AppColors.goldColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: BlocBuilder<GoldCubit, GoldState>(
          builder: (context, state) {
            if (state is GoldLoadingState) {
              return Center(child: CircularProgressIndicator(color: AppColors.goldColor,));
            } else if (state is GoldErrorState) {
              return Center(child: Text(state.errMsg));
            } else if (state is GoldSuccessState) {
              return  Center(
                child: CustomMetalsCard(
                  imagePath: AppImages.gold,
                  imageHeight: 250,
                  imageWidth: 250,
                  priceText: '${state.goldModel.price} EGP',
                  textColor: AppColors.goldColor,
                ),
              );
            }
            else {
              return SizedBox();
            }
          }
        ),
      ),
    );
  }
}
