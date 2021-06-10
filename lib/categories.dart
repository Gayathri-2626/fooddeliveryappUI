import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
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
                color: Colors.green,
              )],
                color: selectedCategoryIndex == index?
                Colors.pink : Colors.white,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Center(
              child: Text(
                categoryList[index], style: TextStyle(fontWeight: FontWeight.bold,
                  color: selectedCategoryIndex == index? Colors.white: Colors.black54),
              ),
            )
          ),
        ),
    );



  }

  final categoryList = [
     'All',
    'Candy Bliss',
    'Chocolate Bar',
    'Cake Walk',
    'Vennila',
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
