import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import '../Blocs/post_Bloc.dart';



/// The third screen in the bottom navigation bar.
class ScreenC extends StatelessWidget {
  /// Constructs a [ScreenC] widget.
  const ScreenC({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Thrid App Page'),
      ),
      body: BlocProvider<PostsBloc>(
        create: (context) => PostsBloc()..add(LoadPostsEvent()),
        child: BlocBuilder<PostsBloc,PostsState>(
          builder: (context, state)  {
            if(state is PostsLoadingState){
              return const Center(
                child: CircularProgressIndicator(),
              );
            }else if(state is PostsLoadedState){
              return ListView.builder(itemBuilder: (context,index){
                return Card(
                    child: ListTile(
                      title: Text(state.posts[index].title),
                      subtitle: Text(state.posts[index].body),
                      onTap: (){
                        //GoRouter.of(context).push('/post/${posts[index].id}');
                      },
                    )
                );
              });
            }else if(state is PostsFailToLoadState){
              return  Center(
                child: Text('Failed to load posts. Error: ${state.error.toString()}'),
              );
            }else {
              return  Center(
                child:  Text("Ghost State: ${state.toString()}")
              );
            }
          }
        ),
      )
    );
  }
}
