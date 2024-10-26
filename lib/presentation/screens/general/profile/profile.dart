part of 'profile_imports.dart';

@RoutePage()
class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: MyColors.primaryColor,
        actions: [
          Icon(
            FeatherIcons.logOut,
            color: Colors.white,
          ).pOnly(right: 20),
        ],
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 24),
            height: 450,
            width: MediaQuery.sizeOf(context).width,
            decoration: const BoxDecoration(
                color: MyColors.primaryColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25))),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(MyAssets.assetsImagesNetflix),
                  radius: 100,
                ),
                20.h.heightBox,
                'Angela Yu'
                    .text
                    .xl3
                    .center
                    .letterSpacing(2)
                    .extraBold
                    .white
                    .make(),
                20.h.heightBox,
                'I am a God level Flutter devoloper in Flutter'
                    .text
                    .xl
                    .center
                    .letterSpacing(1)
                    .extraBold
                    .white
                    .make(),
                20.h.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        '69'.text.white.bold.xl3.make(),
                        "Posts".text.white.xl.make(),
                      ],
                    ),
                    Column(
                      children: [
                        "0".text.white.bold.xl3.make(),
                        "Following".text.white.xl.make(),
                      ],
                    ),
                    Column(
                      children: [
                        "0".text.white.bold.xl3.make(),
                        "Followers".text.white.xl.make(),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          20.h.heightBox,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                'My Posts'.text.xl3.center.letterSpacing(2).extraBold.make(),
                GridView.builder(
                    itemCount: 6,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 13,
                        childAspectRatio: 1),
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image(
                            image: AssetImage(MyAssets.assetsImagesNetflix),
                            width: 200,
                          ).cornerRadius(10),
                          6.h.heightBox,
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    'Netflix ix charging money for Password sharing'.text.medium
                                        .maxLines(2)
                                        .make()
                                        .expand(),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                            FeatherIcons.moreVertical))
                                  ],
                          )
                        ],
                      );
                    })
              ],
            ),
          ),
        ],
      ),
    );
  }
}


// Row(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               6.h.heightBox,
//                               "Netflix ix charging money for Password sharing".text.white.xl.make(),
//                             ],
//                           ),

// Row(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     userPostsData.title!.text.medium
//                                         .maxLines(2)
//                                         .make()
//                                         .expand(),
//                                     IconButton(
//                                         onPressed: () {},
//                                         icon: const Icon(
//                                             FeatherIcons.moreVertical))
//                                   ],
//                                 )