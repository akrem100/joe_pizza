import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:joes_pizza/cubit/counter_cubit.dart';
import 'package:joes_pizza/screen/panier/panier_screen.dart';

class BoisonDetailsPage extends StatefulWidget {
  static String routeName = "/detailboison";
  @override
  _BoisonDetailsPageState createState() => _BoisonDetailsPageState();
}

class _BoisonDetailsPageState extends State<BoisonDetailsPage>
    with AutomaticKeepAliveClientMixin {
  bool isChecked = false;
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool isChecked4 = false;
  bool isChecked5 = false;
  bool isChecked7 = false;
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive {
    return true;
  }

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blue;
    }
    return Colors.red;
  }

  Color getColor2(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blue;
    }
    return Colors.red;
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return DefaultTabController(
          length: 2,
          child: Scaffold(
            backgroundColor: Colors.yellow,
            appBar: AppBar(
              title: Text(
                "Boison",
                style: TextStyle(color: Colors.black),
              ),
              backgroundColor: Colors.yellow,
              elevation: 0,
            ),
            body: Container(
              padding: EdgeInsets.only(
                left: 15,
                right: 15,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Image.asset(
                      'assets/images/coca.png',
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3.0),
                    ),
                    elevation: 1,
                    margin: EdgeInsets.all(5),
                  ),

                  /*  Container(
                    height: 150,
                    child:FoodDetailsSlider(
                        slideImage1: "assets/images/bestfood/ic_best_food_8.jpeg",
                        slideImage2: "assets/images/bestfood/ic_best_food_9.jpeg",
                        slideImage3: "assets/images/bestfood/ic_best_food_10.jpeg"),
       ;
      },
    )           ),*/
                  FoodTitleWidget(
                      productName: state.name.toString(),
                      productPrice: " 2 DT",
                      productHost: "pizza hut"),
                  PreferredSize(
                    preferredSize: Size.fromHeight(50.0),
                    child: TabBar(
                      labelColor: Color(0xFFfd3f40),
                      indicatorColor: Color(0xFFfd3f40),
                      unselectedLabelColor: Color(0xFFa4a1a1),
                      indicatorSize: TabBarIndicatorSize.label,
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                      tabs: [
                        Tab(
                          text: 'Food Details',
                        ),
                        Tab(
                          text: 'Food Reviews',
                        ),
                      ], // list of tabs
                    ),
                  ),
                  Container(
                    height: 150,
                    child: TabBarView(
                      children: [
                        Container(
                          color: Colors.white24,
                          child: DetailContentMenu(),
                        ),
                        Container(
                          color: Colors.white24,
                          child: DetailContentMenu(),
                        ), // class name
                      ],
                    ),
                  ),
                  AddToCartMenu(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class FoodTitleWidget extends StatelessWidget {
  String productName;
  String productPrice;
  String productHost;

  FoodTitleWidget({
    Key? key,
    required this.productName,
    required this.productPrice,
    required this.productHost,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              productName,
              style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF3a3a3b),
                  fontWeight: FontWeight.w500),
            ),
            Text(
              productPrice,
              style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF3a3a3b),
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: <Widget>[
            Text(
              "by ",
              style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFFa9a9a9),
                  fontWeight: FontWeight.w400),
            ),
            Text(
              productHost,
              style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF1f1f1f),
                  fontWeight: FontWeight.w400),
            ),
          ],
        )
      ],
    );
  }
}

class AddToCartMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          InkWell(
            onTap: () {},
            child: Container(
              width: 200.0,
              height: 45.0,
              decoration: new BoxDecoration(
                color: Colors.green,
                border: Border.all(color: Colors.white, width: 2.0),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(
                child: BlocProvider.value(
                  value: BlocProvider.of<CounterCubit>(context),
                  child: InkWell(
                    onTap: () => {
                      Navigator.pushNamed(context, PanierScreen.routeName),
                    },
                    child: Text(
                      'Add',
                      style: new TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DetailContentMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero\'s De Finibus Bonorum et Malorum for use in a type specimen book.',
        style: TextStyle(
            fontSize: 14.0,
            color: Colors.black87,
            fontWeight: FontWeight.w400,
            height: 1.50),
        textAlign: TextAlign.justify,
      ),
    );
  }
}
