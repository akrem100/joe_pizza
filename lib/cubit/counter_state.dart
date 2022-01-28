part of 'counter_cubit.dart';

class CounterState {
  late String? name;
  int valuee;
  int? v;
  bool? s;
  List? list;
  int index;
  List<Cart> demoCarts;
  List<Cart> boisCarts;
  int ss;

  CounterState({
    this.name,
    required this.valuee,
    this.v,
    this.s,
    this.list,
    required this.index,
    required this.demoCarts,
    required this.boisCarts,
    required this.ss,
  });
}
