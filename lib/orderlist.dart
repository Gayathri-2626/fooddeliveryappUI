import 'package:flutter/material.dart';

class OrderList extends StatefulWidget {
  @override
  _OrderListState createState() => _OrderListState();
}

class _OrderListState extends State<OrderList> {
  int selectedCategoryIndex = 0;


  Widget _buildCategory(BuildContext context, int index){
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: (){
        setState(() {
          selectedCategoryIndex = index;
        });
      },
      child: Padding(
        padding: EdgeInsets.only(right: 0,left: 15),
        child: Container(
            width: size.width*0.25,
            decoration: BoxDecoration(
                boxShadow: [ BoxShadow(
                  color: Colors.pink,
                )],
                color: selectedCategoryIndex == index?
                Colors.greenAccent : Colors.white,
                borderRadius: BorderRadius.circular(20)
            ),
            child: Center(
              child: Text(
                categoryList[index], style: TextStyle(fontWeight: FontWeight.bold,
                  color: selectedCategoryIndex == index? Colors.pink: Colors.black54),
              ),
            )
        ),
      ),
    );



  }

  final categoryList = [
    'delivery',
    'Local',
    'Pickup',
    'Detail',
    'Address',
  ];

  @override
  Widget build(BuildContext context) {

    Size size =  MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 5, top: 5,bottom: 5),
      child: Container(
        height: size.height*0.06,
        color: Colors.white,
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: categoryList.length,
          itemBuilder: (context, index){
            return _buildCategory(context, index);
          },
        ),
      ),


    );
  }
}
