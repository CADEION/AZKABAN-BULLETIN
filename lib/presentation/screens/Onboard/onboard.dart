part of 'onboard_import.dart';

@RoutePage()
class Onboard extends StatelessWidget {
  const Onboard({super.key});

  @override
  Widget build(BuildContext context) {
    OnBoardViewModel onBoardViewModel = OnBoardViewModel();
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 24.w),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                MyAssets.assetsImagesMainLogo,
                height: 42.h,
                width: 139.w,
                color: MyColors.primaryColor,
              ),
              PageView(
                controller: onBoardViewModel.pageController,
                children: [
                  OnboardingOne(),
                  OnboardingTwo(),
                  OnboardingThree(),
                ],
              ).expand(),
              61.h.heightBox,
              PrimaryButton(
                title: 'Get Req',
                onPressed: () {
                  AutoRouter.of(context).push(AuthRoute());
                },
                // onPressed: ()async {
                //   final SharedPreferences prefs = await SharedPreferences.getInstance();
                //   Vx.log(prefs.getString('accessToken'));
                // },
              ),
              61.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  'Skip'
                      .text
                      .size(16.sp)
                      .fontWeight(FontWeight.w900)
                      .color(MyColors.primaryColor)
                      .make(),
                  SmoothPageIndicator(
                      controller:
                          onBoardViewModel.pageController, // PageController
                      count: 3,
                      effect: WormEffect(
                          activeDotColor: MyColors.primaryColor,
                          dotColor: Colors.grey.shade500,
                          dotHeight: 12.h,
                          dotWidth: 15.w), // your preferred effect
                      onDotClicked: (index) {}),
                  'Next'
                      .text
                      .size(16.sp)
                      .fontWeight(FontWeight.w900)
                      .color(MyColors.primaryColor)
                      .make()
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
