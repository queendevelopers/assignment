import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BaseWidget<T extends BlocBase<U>, U> extends StatefulWidget {
  final Widget Function(BuildContext context, U state) builder;
  final BlocBase<U>? bloc;
  final Widget? child;
  final Function()? initState;
  final Function(BuildContext, U) listener;
  BaseWidget({
    Key? key,
    required this.builder,
    required this.bloc,
    required this.listener,
    this.child,
    this.initState,
  }) : super(key: key);

  _BaseWidgetState<T, U> createState() => _BaseWidgetState<T, U>();
}

class _BaseWidgetState<T extends BlocBase<U>, U>
    extends State<BaseWidget<T, U>> {
  BlocBase<U>? bloc;
  U? state;
  @override
  void initState() {
    bloc = widget.bloc;

    if (widget.initState != null) {
      widget.initState!();
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<BlocBase<U>>(
      create: (context) => bloc!,

      child: BlocConsumer<BlocBase<U>, U>(
        listener: (context, u) => widget.listener(context, u),
        bloc: bloc,
        builder: widget.builder,
      ),
      // child: Center(child: text(bloc?.state)),
    );
  }
}
