import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../constants.dart';
import '../model/cart.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit()
      : super(CounterState(
            valuee: 15,
            s: false,
            demoCarts: [],
            index: -1,
            boisCarts: [],
            ss: 0,
            panier: {},
            pack: {"pizza": 2, "boisson": 3}));

  void increment(int val, String? namee, {int? ind}) {
    print(namee);
    emit(
      CounterState(
        valuee: state.valuee + val,
        name: namee,
        demoCarts: state.demoCarts,
        boisCarts: state.boisCarts,
        index: state.index,
        ss: state.ss,
        panier: state.panier,
        pack: state.pack,
      ),
    );
  }

  void decrement(int val) => {
        emit(CounterState(
          valuee: state.valuee - val,
          demoCarts: state.demoCarts,
          boisCarts: state.boisCarts,
          index: state.index,
          ss: state.ss,
          panier: state.panier,
          pack: state.pack,
        )),
      };

  void checkk(int num) => {
        emit(CounterState(
          valuee: num,
          demoCarts: state.demoCarts,
          boisCarts: state.boisCarts,
          index: state.index,
          ss: state.ss,
          panier: state.panier,
          pack: state.pack,
        )),
      };

  void add(bool sa) => {
        emit(CounterState(
          valuee: state.valuee,
          s: sa,
          demoCarts: state.demoCarts,
          index: state.index,
          boisCarts: state.boisCarts,
          ss: state.ss,
          panier: state.panier,
          pack: state.pack,
        )),
      };
  void calpack(int num) => {
        if (num == 1) {state.pack = (state.pack["pizza"] - 1)},
        emit(CounterState(
          valuee: state.valuee,
          s: state.s,
          demoCarts: state.demoCarts,
          index: state.index,
          boisCarts: state.boisCarts,
          ss: state.ss,
          panier: state.panier,
          pack: state.pack,
        )),
      };

  void pan(Cart vaa, int indd) => {
        state.demoCarts.add(vaa),
        state.index = state.index + 1,
        print(state.demoCarts[state.index].type.toString() + "a"),
        emit(CounterState(
          valuee: state.valuee,
          name: state.name,
          demoCarts: state.demoCarts,
          index: state.index,
          boisCarts: state.boisCarts,
          ss: state.ss + state.valuee,
          panier: state.panier,
          pack: state.pack,
        )),
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
          panier: state.panier,
          pack: state.pack,
        )),
      };

  void delete(aa, int bb) => {
        state.demoCarts.remove(aa),
        emit(CounterState(
          valuee: state.valuee,
          name: state.name,
          demoCarts: state.demoCarts,
          boisCarts: state.boisCarts,
          index: state.index - 1,
          ss: state.ss - bb,
          panier: state.panier,
          pack: state.pack,
        )),
      };
}
