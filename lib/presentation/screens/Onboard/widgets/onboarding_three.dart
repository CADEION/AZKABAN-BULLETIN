part of 'widget_imports.dart';


class OnboardingThree extends StatelessWidget {
  const OnboardingThree({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,  // Centering content vertically
      children: [
        Image.asset(
          MyAssets.assetsImagesOnboardingImage3,
          height: 333.h,  // Assuming you are using ScreenUtil for responsive height
          width: 333.w,   // Assuming you are using ScreenUtil for responsive width
        ),
        20.h.heightBox,  // Adds vertical space
        "Explore a wide selection of categories, or use the search bar to find specific topics"
            .text
            .size(15.sp)  // Assuming you're using ScreenUtil for responsive text size
            .align(TextAlign.center)
            .color(Colors.grey.shade800)
            .fontWeight(FontWeight.w500)
            .make(),
      ],
    );
  }
}

