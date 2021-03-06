import 'package:brew_app/models/brew.dart';
import 'package:brew_app/screens/home/brew_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BrewList extends StatefulWidget {
  @override
  _BrewListState createState() => _BrewListState();
}

class _BrewListState extends State<BrewList> {
  @override
  Widget build(BuildContext context) {
    // access list of Brew data. In this case, it is found in the home page.
    final brews = Provider.of<List<Brew>>(context) ?? [];

    // ListView.builder() - Creates a scrollable, linear array of widgets that are created on demand.
    return ListView.builder(
      itemCount: brews.length,
      itemBuilder: (context, index) {
        return BrewTile(brew: brews[index]);
      },
    );
  }
}
