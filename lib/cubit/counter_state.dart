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
  Map<String, List> panier;
  int ss;
  Map<String, int> pack;
  CounterState({
    required Map<String, int> this.pack,
    this.name,
    required this.valuee,
    this.v,
    this.s,
    this.list,
    required this.index,
    required this.demoCarts,
    required this.boisCarts,
    required this.panier,
    required this.ss,
  });
}
