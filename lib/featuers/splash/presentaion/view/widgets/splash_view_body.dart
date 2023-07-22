import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/featuers/splash/presentaion/view/widgets/silde_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slideAnimation;

  @override
  void initState() {
    super.initState();

    initSlidAnimation();
    navigatToHomePage();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  void initSlidAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    slideAnimation = Tween<Offset>(
      begin: const Offset(0, 5),
      end: Offset.zero,
    ).animate(animationController);

    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          AssetsData.logo,
          height: 60,
        ),
        const SizedBox(
          height: 10,
        ),
        SlideText(slideAnimation: slideAnimation),
      ],
    );
  }

  navigatToHomePage() {
    Future.delayed(const Duration(milliseconds: 2500), () {
      // Get.to(
      //   const HomeScreen(),
      //   transition: Transition.fadeIn,
      // );
      GoRouter.of(context).push(AppRouter.kHomeView);
    });
  }
}
