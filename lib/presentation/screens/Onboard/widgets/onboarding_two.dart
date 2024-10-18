part of 'widget_imports.dart';


class OnboardingTwo extends StatelessWidget {
  const OnboardingTwo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,  // Centering content vertically
      children: [
        Image.asset(
          'assets/images/Onboarding_Image_2.png',
          height: 333.h,  // Assuming you are using ScreenUtil for responsive height
          width: 333.w,   // Assuming you are using ScreenUtil for responsive width
        ),
        20.h.heightBox,  // Adds vertical space
        "Customize your reading experience and join the conversation by creating an account."
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

