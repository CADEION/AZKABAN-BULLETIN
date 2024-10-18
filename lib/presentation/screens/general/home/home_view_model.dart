part of 'home_imports.dart';

class HomeViewModel{

  final Repositories repositories;

  HomeViewModel({required this.repositories});

  VelocityBloc<HomeModel> postsModelBloc = VelocityBloc<HomeModel>(HomeModel());
  
  fetchAllPosts()async{
    
    var postsData = await repositories.postsRepo.getAllPosts();
    Vx.log(postsData);
    if (postsData.status == 1) {
      postsModelBloc.onUpdateData(postsData);
    }
  }

  
}