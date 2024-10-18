part of 'widget_imports.dart';



class OnboardingOne extends StatelessWidget {
  const OnboardingOne({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,  // Centering content vertically
      children: [
        Image.asset(
          'assets/images/Onboarding_Image_1.png',
          height: 333.h,
          width: 333.w,
        ),
        20.h.heightBox,
        "Discover, engage and read the latest articles or share your own thoughts and ideas with the community."
            .text
            .size(15.sp)
            .align(TextAlign.center)
            .color(Colors.grey.shade800)
            .fontWeight(FontWeight.w500)
            .make(),
      ],
    );
  }
}
