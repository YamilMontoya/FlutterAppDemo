import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../Models/postModel.dart';
import '../../../Services/data_service2.dart';

//----------------------------------------------------------------Events
abstract class PostsEvent{}

class LoadPostsEvent extends PostsEvent{

}

//----------------------------------------------------------------States
abstract class PostsState{}

class PostsLoadingState extends PostsState{}

class PostsLoadedState extends PostsState{
  List<Post> posts;
  PostsLoadedState(this.posts);
}

class PostsFailToLoadState extends PostsState{
  Error error;
  PostsFailToLoadState(this.error);
}
//----------------------------------------------------------------BL

class PostsBloc extends Bloc<PostsEvent, PostsState> {
  final _dataService = DataService();
  PostsBloc() : super(PostsLoadingState());

  @override
  Stream<PostsState> mapEventToState(PostsEvent event) async* {
    if(event is LoadPostsEvent){
      yield PostsLoadingState();
      try{
        List<Post> posts = await _dataService.getPosts();
        yield PostsLoadedState(posts);
      }catch(e){
        var er = e as Error;
        yield PostsFailToLoadState(er);
      }
    }
  }
}