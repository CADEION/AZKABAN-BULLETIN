part of 'profile_imports.dart';

class ProfileViewModel {
  final Repositories repositories;
  ProfileViewModel({required this.repositories});

  final VelocityBloc<ProfileModel> profileModelBloc = VelocityBloc<ProfileModel>(ProfileModel());

  getUserProfileData(BuildContext context) async {
    var userProfileData = await repositories.postsRepo.getUserPosts();
    if (userProfileData.status == 1) {
      profileModelBloc.onUpdateData(userProfileData);
    }
  }
  

  logout(context) async {
    var data = await repositories.authRepo.userLogout(context);
    if (data.message.isNotEmptyAndNotNull) {
      Utils.clearAllSavedData();
      VxToast.show(context, msg: data.message.toString());
      AutoRouter.of(context).replace(const OnboardRoute());
    }
  }
}