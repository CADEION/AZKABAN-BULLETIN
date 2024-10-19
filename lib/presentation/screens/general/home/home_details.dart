part of 'home_imports.dart';

@RoutePage()
class HomeDetails extends StatelessWidget {
  const HomeDetails({ required this.post, required this.imagePathUrl});
  final Post post;
  final String imagePathUrl;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: post.title!
            .text
            .white
            .size(20.sp)
            .ellipsis
            .make(),
        backgroundColor: MyColors.primaryColor,
      ),
      body: ListView(
        children: [
          CachedNetworkImage(imageUrl: imagePathUrl,fit: BoxFit.cover,height: 300,),
          6.h.heightBox,
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              children: [
              post.title!
                    .text
                    .size(20)
                    .bold
                    .make(),
                10.h.heightBox,
                Row(
                  children: [
                    Icon(FeatherIcons.eye),
                    6.w.widthBox,
                    post.views!.text.make(),
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
                HtmlWidget(post.body!)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
