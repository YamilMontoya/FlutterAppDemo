// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shellarch2/utils.dart';
import 'blocs/blocObserver.dart';

void main() {
  final  MySP = SharedPreferences.getInstance();
  Bloc.observer = const AppBlocObserver();
  runApp(const BlocWatchedApp());
}

/* TODO:
 - Post Cubit on ScreenC
GestureDetector para tap y Hold sobre imagenes
Login
Logout
Progress bar for bottom of appbar
Clean Architecture
Inkwell
Snackbar
FloatButton
showDialog
alertDialog
 */






