import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:metals/core/constants/app_colors.dart';
import 'package:metals/core/constants/app_images.dart';
import 'package:metals/core/widgets/custom_metals_card.dart';
import '../../../data/repo/silver_repo.dart';
import '../../cubit/silver_cubit.dart';
import '../../cubit/silver_states.dart';

class SilverScreen extends StatelessWidget {
  const SilverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SilverCubit(SilverRepo())..getSilver(),
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black87,
          centerTitle: true,
          title: Text(
            'Silver Tracker',
            style: TextStyle(
              color: AppColors.silverColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: BlocBuilder<SilverCubit, SilverState>(
          builder: (context, state) {
            if (state is SilverLoadingState) {
              return Center(child: CircularProgressIndicator(color: AppColors.silverColor,));
            } else if (state is SilverErrorState) {
              return Center(child: Text(state.errMsg));
            } else if (state is SilverSuccessState) {
              return  Center(
                child: CustomMetalsCard(
                  imagePath: AppImages.silver,
                  imageHeight: 250,
                  imageWidth: 300,
                  priceText: '${state.silverModel.price} EGP',
                  textColor: AppColors.silverColor,
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
