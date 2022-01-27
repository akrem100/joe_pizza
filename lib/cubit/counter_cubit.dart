import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../constants.dart';
import '../model/cart.dart';

part 'counter_state.dart';

Map map1 = {
  'thon': 0,
  'fromage': 0,
  'pop': 0,
  'thon': 0,
  'fromage': 0,
  'pop': 0
};
int index = 0;

class CounterCubit extends Cubit<CounterState> {
  CounterCubit()
      : super(CounterState(valuee: 15, s: false, index: 0, demoCarts: []));

  void increment(int val, String? namee, {int? ind}) {
    print(namee);
    emit(
      CounterState(
          valuee: state.valuee + val, name: namee, demoCarts: state.demoCarts),
    );
  }

  void decrement(int val) => {
        emit(CounterState(
            valuee: state.valuee - val, demoCarts: state.demoCarts)),
      };
  void checkk(int num) => {
        emit(CounterState(
            valuee: state.valuee,
            v: state.index! + num,
            demoCarts: state.demoCarts)),
      };
  void add(bool sa) => {
        emit(CounterState(
            valuee: state.valuee, s: sa, demoCarts: state.demoCarts)),
      };
  void pan(Cart vaa) => {
        state.demoCarts.add(vaa),
        print(state.demoCarts[0]),
        emit(CounterState(
          valuee: state.valuee,
          name: state.name,
          demoCarts: state.demoCarts,
        )),
      };
}
