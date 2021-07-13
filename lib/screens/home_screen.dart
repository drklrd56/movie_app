import 'package:flutter/material.dart';
import 'package:movie_app/blocs/provider.dart';
import 'package:movie_app/blocs/search_bloc.dart';
import 'package:movie_app/widgets/movie_list.dart';
import 'package:movie_app/widgets/search_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? _query;
  @override
  Widget build(BuildContext context) {
    final searchBloc = Provider.of<SearchBloc>(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SearchBar(
              onChanged: (val) {
                setState(() {
                  _query = val;
                  Provider.of<SearchBloc>(context)
                      .getMovieByName(name: val, page: 1);
                });
              },
            ),
            const SizedBox(height: 10),
            const MoviesList(),
          ],
        ),
      ),
    );
  }
}
