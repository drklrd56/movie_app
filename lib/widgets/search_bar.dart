import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  final void Function(String) onChanged;
  const SearchBar({Key? key, required this.onChanged}) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final FocusNode searchNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: SizedBox(
        child: TextField(
          onChanged: (val) {
            setState(() {
              widget.onChanged(val);
            });
          },
          focusNode: searchNode,
          onSubmitted: (_) {
            searchNode.unfocus();
          },
          decoration: const InputDecoration(
            hintText: "Search here...",
            filled: true,
            fillColor: Colors.white,
            hintStyle: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: Color(0xff9d9d9d),
            ),
            suffixIcon: Icon(
              Icons.search,
              color: Color(0xff9D9D9D),
            ),
          ),
        ),
      ),
    );
  }
}
