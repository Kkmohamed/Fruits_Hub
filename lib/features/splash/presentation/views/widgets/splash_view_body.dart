import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_hub/core/utils/assets.dart';
import 'package:fruits_hub/features/on_boarding/presentation/views/on_boarding_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    navigationAfterSplash();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(children: [SvgPicture.asset(Assets.assetsImagesPlant)]),
        SvgPicture.asset(Assets.assetsImagesLogo),
        SvgPicture.asset(Assets.assetsImagesPupples, fit: BoxFit.fill),
      ],
    );
  }
  
  void navigationAfterSplash() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
    });
  }
}
