part of 'splash_import.dart'; // Ensure this is the correct part of your file

@RoutePage()
class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    moveToOnboard();
    super.initState();
  }

  moveToOnboard() async {
    await Future.delayed(const Duration(seconds: 4), () {
      Utils.manipulateLogin(context);
      // AutoRouter.of(context).push(OnboardRoute());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColor,
      body: Center(
        child: FadedScaleAnimation(
            child: Image.asset(
          MyAssets.assetsImagesMainLogo,
          height: 42.h,
          width: 139.h,
        )),
      ),
    );
  }
}
