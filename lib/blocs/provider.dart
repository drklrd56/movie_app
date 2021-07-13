import 'package:flutter/material.dart';
import 'package:movie_app/blocs/search_bloc.dart';

class Provider<T> extends InheritedWidget {
  final T data;

  const Provider({Key? key, required Widget child, required this.data})
      : super(
          key: key,
          child: child,
        );

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }

  static T of<T>(BuildContext context) {
    try {
      // ignore: cast_nullable_to_non_nullable
      context.dependOnInheritedWidgetOfExactType() as Provider<T>;
    } catch (error) {
      print("Problem at hand");
      print(error);
    }
    print('with error');
    final Provider<T> val =
        context.dependOnInheritedWidgetOfExactType() as Provider<T>;
    return val.data;
  }
}
