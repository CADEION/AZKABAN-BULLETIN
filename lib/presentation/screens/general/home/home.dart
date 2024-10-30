part of 'home_imports.dart';

@RoutePage()
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late HomeViewModel homeViewModel;

  @override
  void initState() {
    homeViewModel = HomeViewModel(repositories: context.read<Repositories>());
    homeViewModel.fetchAllPosts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocBuilder<VelocityBloc, VelocityState>(
          bloc: homeViewModel.postsModelBloc,
          builder: (context, state) {
            if (state is VelocityInitialState) {
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            } else if (state is VelocityUpdateState) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    10.h.heightBox,
                    VxSwiper.builder(
                      autoPlay: true,
                      enlargeCenterPage: true,
                      itemCount: state.data.popularPosts!.length,
                      itemBuilder: ((context, index) {
                        var latestPosts = state.data.popularPosts![index];
                        var imagePath = latestPosts.featuredimage.toString();
                        return CachedNetworkImage(
                          imageUrl: imagePath,
                          fit: BoxFit.cover,
                        ).cornerRadius(20).pSymmetric(h: 10);
                      }),
                    ),
                    20.h.heightBox,

                    // Latest Posts Section
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          "Latest Posts".text.size(16).make(),
                          "See All".text.size(16).make(),
                        ],
                      ).pSymmetric(h: 24.w),
                    ),
                    14.h.heightBox,

                    // Posts List
                    FadedScaleAnimation(
                      child: ListView.separated(
                        padding: EdgeInsets.symmetric(horizontal: 24.h),
                        shrinkWrap: true,
                        itemCount: state.data.allPosts!.length,
                        physics: const NeverScrollableScrollPhysics(),
                        separatorBuilder: (context, index) =>
                            SizedBox(height: 20.h),
                        itemBuilder: (context, index) {
                          var latestPosts = state.data.allPosts![index];
                          var imagePath = latestPosts.featuredimage.toString();
                          // String timeAgo = convertToAgo(latestPosts.createdAt);
                          return Row(
                            children: [
                              // Image
                              GestureDetector(
                                onTap: () {
                                  AutoRouter.of(context).push(HomeDetailsRoute(
                                      post: latestPosts,
                                      imagePathUrl: imagePath));
                                },
                                child: CachedNetworkImage(
                                  imageUrl: imagePath,
                                  height: 120,
                                  width: 180,
                                  fit: BoxFit.cover,
                                )
                                    .cornerRadius(20)
                                    .cornerRadius(20)
                                    .h(140.h)
                                    .w(180.w),
                              ),
                              10.w.widthBox,
                              // Text and Meta Info
                              Flexible(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // Post Title
                                    '${latestPosts.title!}'
                                        .text
                                        .size(16)
                                        .bold
                                        .maxLines(3)
                                        .overflow(TextOverflow.ellipsis)
                                        .make(),
                                    6.h.heightBox,

                                    // Post Meta (Time)
                                    Row(
                                      children: [
                                        const Icon(FeatherIcons.clock),
                                        8.horizontalSpace,
                                        'timeAgo'
                                            .text
                                            .size(14)
                                            .make(),
                                      ],
                                    ),
                                    6.h.heightBox,

                                    // Post Meta (Views and Bookmark)
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        latestPosts.views
                                            .toString()
                                            .text
                                            .size(16)
                                            .make(),
                                        const Icon(FeatherIcons.bookmark),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              );
            } else if (state is VelocityFailedState) {
              return Center(child: state.error.text.make());
            } else {
              return Center(child: 'data'.text.make());
            }
          },
        ),
      ),
    );
  }

}
