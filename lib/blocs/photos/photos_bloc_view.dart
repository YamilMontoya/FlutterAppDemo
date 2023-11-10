import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'photos_bloc_bloc.dart';
import 'photos_bloc_event.dart';
import 'photos_bloc_state.dart';

class PhotosBlocPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /*
    return BlocProvider(
      create: (BuildContext context) => PhotosBloc()..add(PhotosLoadEvent()),
      child: Builder(builder: (context) => _buildPage(context)),
    );*/
    return BlocBuilder<PhotosBloc, PhotosBlocState>(
      builder: (context, state) => _buildPage(context)
    );
  }

  Widget _buildPage(BuildContext context) {
    final bloc = BlocProvider.of<PhotosBloc>(context);

    if (bloc.state is PhotosLoadingState){
      return const Center(child: CircularProgressIndicator());
    }else if(bloc.state is PhotosLoadedState){
      final lp = bloc.state.photos;
      return  ListView.builder(
          itemCount: lp.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(lp[index].title),
              subtitle: Text(lp[index].url),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(lp[index].thumbnailUrl),
              ),
            );
          },
        );
    }else{
      return Center(
          child: Column (
            children: [
            Text(
                "Ghost State: ${bloc.state.toString()}"
            ),
              ElevatedButton(
                child: Text("Retry"),
                onPressed: (){
                  //bloc.add(PhotosLoadEvent());
                  context.read<PhotosBloc>().add(PhotosLoadEvent());
                },
              )
            ],
          )
          );
    }
  }
}

