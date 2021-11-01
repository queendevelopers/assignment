import 'package:flutter/material.dart';
import 'package:swivt/src/main/modules/base_utils/base_widget.dart';
import 'package:swivt/src/main/modules/homepage/homepage_event.dart';
import 'package:swivt/src/main/ui/widgets/widgets.dart';

import 'homepage_bloc.dart';
import 'homepage_state.dart';

class HomepageView extends StatelessWidget {
  final HomepageBloc bloc = HomepageBloc();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //lots of code nesting bloc provider and consumers along with types
      // body: BlocProvider<HomepageBloc>(
      //   create: (context) => bloc,
      //   child: BlocConsumer<HomepageBloc, HomepageState>(
      //       bloc: bloc,
      //       listener: (_, state) {
      //         print('State $state');
      //         if (state is HomepageInitialState) {
      //           bloc..add(HomepageLoadEvent());
      //         }
      //       },
      //       builder: (context, state) {
      //         // print(state);

      //         if (state is HomepageInitialState) {
      //           bloc..add(HomepageLoadEvent());

      //           return Center(
      //             child: text('Hi'),
      //           );
      //         } else if (state is HomepageLoadingState) {
      //           return Center(child: CircularProgressIndicator());
      //         } else if (state is HomepageNoDataState) {
      //           return Center(child: text(state.message));
      //         } else if (state is HomepageLoadedState) {
      //           return Center(child: text(state.listResponse.id));
      //         }
      //         return Center(child: text('Hello'));
      //       }),
      // ),
      body: BaseWidget<HomepageBloc, HomepageState>(
        bloc: bloc,
        initState: () {
          bloc.add(HomepageLoadEvent());
        },
        listener: (context, state) {
          print('State $state');
          if (state is HomepageInitialState) {}
        },
        builder: (context, state) {
          if (state is HomepageInitialState) {
            return Center(
              child: text('Hi'),
            );
          } else if (state is HomepageLoadingState) {
            return Center(child: CircularProgressIndicator());
          } else if (state is HomepageNoDataState) {
            return Center(child: text(state.message));
          } else if (state is HomepageLoadedState) {
            return Center(child: text(state.listResponse.id));
          }
          return Center(child: text('In case of any unhandled exceptions'));
        },
      ),
    );
  }
}
