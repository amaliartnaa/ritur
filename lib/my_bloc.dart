import 'package:bloc/bloc.dart';

enum MyEvent { increment }

class MyState {
  final int count;

  MyState(this.count);
}

class MyBloc extends Bloc<MyEvent, MyState> {
  MyBloc() : super(MyState(0));

  @override
  Stream<MyState> mapEventToState(MyEvent event) async* {
    if (event == MyEvent.increment) {
      yield MyState(state.count + 1);
    }
  }
}
