import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../Models/postModel.dart';
import '../../../Services/data_service2.dart';



class PostsCubit extends Cubit<List<Post>> {
  final _dataService = DataService();

  PostsCubit() : super([]);

  void getPosts() async => emit(await _dataService.getPosts());
}
