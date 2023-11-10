
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../../Models/photoModel.dart';

@immutable
abstract class PhotosBlocState extends Equatable {
  const PhotosBlocState();
  @override
  List<Object> get props => [];
  @override
  List<Photo> get photos => [];
}

class PhotosInitState extends PhotosBlocState {

}
class PhotosLoadingState extends PhotosBlocState {}

class PhotosLoadedState extends PhotosBlocState {
  final List<Photo> _photos;
  PhotosLoadedState(this._photos);

  @override
  List<Photo> get photos => _photos;

}
class PhotosErrorState extends PhotosBlocState {
  String errorMessage;
  PhotosErrorState(this.errorMessage);
}

