import 'package:flutter/material.dart';
import 'package:jokes/core/enums/viewstates.dart';
import 'package:jokes/core/viewmodel/jokeviewModel.dart';
import 'package:jokes/ui/views/base_view.dart';

class JokeView extends StatefulWidget {
  @override
  _JokeViewState createState() => _JokeViewState();
}

class _JokeViewState extends State<JokeView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<JokeViewModel>(
        onModelReady: (model) => model.fetchJoke(),
        builder: (context, model, child) {
          return (model.state == ViewState.Busy)
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : Scaffold(
                  appBar: AppBar(),
                  floatingActionButton: FloatingActionButton(
                    onPressed: () => model.fetchJoke(),
                    child: Icon(Icons.refresh),
                  ),
                  body: Center(
                    child: Text(model.Joke),
                  ),
                );
        });
  }
}
