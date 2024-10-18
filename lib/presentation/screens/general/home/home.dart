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
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: Column(
                  children: [
                    Image.asset(MyAssets.assetsImagesNetflix).cornerRadius(12),
                    20.h.heightBox,

                    // Latest Posts Section
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        "Latest Posts".text.size(16).make(),
                        "See All".text.size(16).make(),
                      ],
                    ).pSymmetric(h: 24.w),
                    14.h.heightBox,

                    // Posts List
                    ListView.separated(
                      shrinkWrap: true,
                      itemCount: 5,
                      physics: const NeverScrollableScrollPhysics(),
                      separatorBuilder: (context, index) =>
                          SizedBox(height: 20.h),
                      itemBuilder: (context, index) {
                        return Row(
                          children: [
                            // Image
                            GestureDetector(
                              onTap: () {
                                AutoRouter.of(context).push(HomeDetailsRoute());
                              },
                              child: Image.asset(
                                MyAssets.assetsImagesNetflix,
                                fit: BoxFit.cover,
                              ).cornerRadius(20).h(140.h).w(180.w),
                            ),
                            10.w.widthBox,
                            // Text and Meta Info
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Post Title
                                  "Netflix will charge for sharing the password"
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
                                      'latestPosts'.text.size(14).make(),
                                    ],
                                  ),
                                  6.h.heightBox,

                                  // Post Meta (Views and Bookmark)
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      "69 Views".text.size(16).make(),
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
