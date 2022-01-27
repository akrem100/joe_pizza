part of 'counter_cubit.dart';

class CounterState {
  late String? name;
  int valuee;
  int? v;
  bool? s;
  List? list;
  int? index = 0;
  List<Cart> demoCarts;

  CounterState({
    this.name,
    required this.valuee,
    this.v,
    this.s,
    this.list,
    this.index,
    required this.demoCarts,
  });
}
