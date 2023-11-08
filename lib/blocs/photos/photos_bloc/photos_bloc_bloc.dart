import 'package:bloc/bloc.dart';
import 'package:shellarch2/Models/photoModel.dart';

import '../../../Services/data_service2.dart';
import 'photos_bloc_event.dart';
import 'photos_bloc_state.dart';

class PhotosBloc extends Bloc<PhotosBlocEvent, PhotosBlocState> {
  final _dataService = DataService();
  PhotosBloc() : super(PhotosInitState()) {
    on<PhotosLoadEvent>(_loadPhotos);
  }

  void _loadPhotos(PhotosLoadEvent event, Emitter<PhotosBlocState> emit) async {
    emit(PhotosLoadingState());
    try {
      List<Photo> photos = await _dataService.getPhotos();
      emit(PhotosLoadedState(photos));
    }
    catch (e) {
      emit(PhotosErrorState(e.toString()));
    }
  }
}
