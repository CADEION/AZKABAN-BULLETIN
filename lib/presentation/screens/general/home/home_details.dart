part of 'home_imports.dart';

@RoutePage()
class HomeDetails extends StatelessWidget {
  const HomeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Netflix will charge for sharing the password'
            .text
            .white
            .size(20.sp)
            .ellipsis
            .make(),
        backgroundColor: MyColors.primaryColor,
      ),
      body: ListView(
        children: [
          Image.asset(MyAssets.assetsImagesNetflix),
          6.h.heightBox,
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              children: [
                "Netflix will charge for sharing the password"
                    .text
                    .size(20)
                    .bold
                    .make(),
                10.h.heightBox,
                Row(
                  children: [
                    Icon(FeatherIcons.eye),
                    6.w.widthBox,
                    '147 Views'.text.make(),
                    Spacer(),
                    Icon(
                      FeatherIcons.thumbsUp,
                      color: Colors.green,
                    ),
                    6.w.widthBox,
                    '100'.text.make(),
                    24.w.widthBox,
                    Icon(
                      FeatherIcons.thumbsDown,
                      color: Colors.red,
                    ),
                    6.w.widthBox,
                    '0'.text.make(),
                  ],
                ),20.h.heightBox,
                'MMR, also known as Matchmaking Rating is a crucial way to determine your skill in competitive games. The MMR you gain by winning matches decides your opponents for further lobbies. Just like other competitive games, Valve’s Deadlock also runs on the MMR system to make certain lobbies full of equal-level players. Want to know where you stand? Learn how to find your Deadlock MMR right here.'
                    .text
                    .size(18)
                    .fontWeight(FontWeight.w100)
                    .make()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
