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

class CounterCubit extends Cubit<CounterState> {
  CounterCubit()
      : super(CounterState(
            valuee: 15,
            s: false,
            demoCarts: [],
            index: -1,
            boisCarts: [],
            ss: 0));

  void increment(int val, String? namee, {int? ind}) {
    print(namee);
    emit(
      CounterState(
          valuee: state.valuee + val,
          name: namee,
          demoCarts: state.demoCarts,
          boisCarts: state.boisCarts,
          index: state.index,
          ss: state.ss),
    );
  }

  void decrement(int val) => {
        emit(CounterState(
            valuee: state.valuee - val,
            demoCarts: state.demoCarts,
            boisCarts: state.boisCarts,
            index: state.index,
            ss: state.ss)),
      };
  void checkk(int num) => {
        emit(CounterState(
            valuee: num,
            demoCarts: state.demoCarts,
            boisCarts: state.boisCarts,
            index: state.index,
            ss: state.ss)),
      };
  void add(bool sa) => {
        emit(CounterState(
            valuee: state.valuee,
            s: sa,
            demoCarts: state.demoCarts,
            index: state.index,
            boisCarts: state.boisCarts,
            ss: state.ss)),
      };
  void pan(Cart vaa, int indd) => {
        state.demoCarts.add(vaa),
        state.index = state.index + 1,
        print(state.demoCarts[state.index].type.toString() + "a"),
        print(state.name.toString() + "name"),
        print(state.index),
        print(state.valuee),
        emit(CounterState(
            valuee: state.valuee,
            name: state.name,
            demoCarts: state.demoCarts,
            index: state.index,
            boisCarts: state.boisCarts,
            ss: state.ss + state.valuee)),
      };
  void boispan(Cart vaa, int indd) => {
        state.boisCarts.add(vaa),
        state.index = state.index + 1,
        print(state.demoCarts[state.index].type.toString() + "a"),
        print(state.index),
        print(state.valuee),
        emit(CounterState(
          valuee: state.valuee,
          name: state.name,
          demoCarts: state.demoCarts,
          boisCarts: state.boisCarts,
          index: state.index,
          ss: state.ss + state.valuee,
        )),
      };
  void delete(aa) => {
        state.demoCarts.remove(aa),
        emit(CounterState(
          valuee: state.valuee,
          name: state.name,
          demoCarts: state.demoCarts,
          boisCarts: state.boisCarts,
          index: state.index - 1,
          ss: state.ss,
        )),
      };
}
