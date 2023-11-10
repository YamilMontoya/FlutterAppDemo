import 'package:equatable/equatable.dart';

abstract class PhotosBlocEvent extends Equatable {
  const PhotosBlocEvent();
  @override
  List<Object> get props => [];
}

class InitEvent extends PhotosBlocEvent {}
class PhotosLoadEvent extends PhotosBlocEvent {}
