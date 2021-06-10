import 'package:flutter/material.dart';
import 'package:food_app/categories.dart';
import 'package:food_app/myprovider.dart';
import 'package:food_app/orderlist.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List<String> ListOfMenu =[
    'All',
    'Birthday',
    'Chocolate',
    'Fruit',
    'Creamy'
  ];
  // int _index = 0;
  // int _index1 = 1;
  // int _index2 = 2;
  // int _index3 = 3;
  // int _index4 = 4;
  int _currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cake Corner',style: TextStyle(color: Colors.pink,
            fontWeight: FontWeight.bold,fontSize: 30),),
        backgroundColor: Colors.white,

      ),

      body:  new ListView(
        children: [
          new Container(
            height: 180,
            margin: EdgeInsets.only(top: 0.0, right: 5, left: 20),
            child: new ListView(
              scrollDirection: Axis.horizontal,
              children: [
                new Container(
                  margin: EdgeInsets.all(2.0),
                  child: new ClipRRect(
                    borderRadius: new BorderRadius.circular(10.0),
                    child: new Image(image: new AssetImage("images/cake2.png"),
                    height: 150.0,
                    width: 320.0,
                    fit: BoxFit.cover,),
                  ),
                ),
                SizedBox(width: 5,),


                new Container(
                  margin: EdgeInsets.all(2.0),
                  child: new ClipRRect(
                    borderRadius: new BorderRadius.circular(10.0),
                    child: new Image(image: new AssetImage("images/cakeee.png"),
                      height: 200.0,
                      width: 320.0,
                      fit: BoxFit.cover,),
                  ),
                ),
                SizedBox(width: 5,),


                new Container(
                  margin: EdgeInsets.all(2.0),
                  child: new ClipRRect(
                    borderRadius: new BorderRadius.circular(10.0),
                    child: new Image(image: new AssetImage("images/cake1.png"),
                      height: 200.0,
                      width: 320.0,
                      fit: BoxFit.cover,),
                  ),
                ),
                SizedBox(width: 5,),

                new Container(
                  margin: EdgeInsets.all(2.0),
                  child: new ClipRRect(
                    borderRadius: new BorderRadius.circular(10.0),
                    child: new Image(image: new AssetImage("images/maincake2.png"),
                      height: 200.0,
                      width: 320.0,
                      fit: BoxFit.cover,),
                  ),
                )
              ],
            ),
          ),
          Categories(),

          Padding(
            padding: const EdgeInsets.only(left: 10, right: 250, top: 3.0),
            child: Row(
              children: [
                Expanded(child: Container(color: Colors.white54,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                        child: Icon(Icons.search,size: 30,)
                    )
                  ],
                ),),),
                Expanded(child: TextField(
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(hintText: 'Search',
                    hintStyle: TextStyle(
                    fontSize: 14, color: Colors.grey,
                  ),
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                  ),
                ))
              ],
            ),

          ),
          OrderList(),

          new Container(

            child: Column(
              children: [
                new Row(
                  children: [
                    new Container(
                        margin: EdgeInsets.all(10.0),
                        child: new ClipRRect(
                          borderRadius: new BorderRadius.circular(15),
                          child: Image(image: AssetImage('images/cake3.png'),
                            height: 100,
                            width: 100,
                            fit: BoxFit.cover,),
                        )
                    ),
                     new Container(
                       margin: EdgeInsets.all(3.0),
                       height: 90,
                       child: new Column(
                         children: [
                           Row(
                             children: [
                               Text('Gayu Cakes & Plums',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                               SizedBox(width: 20,),
                               Icon(
                                 Icons.favorite_border_outlined,
                                 color: Colors.grey,
                                 size: 25.0,
                               )
                             ],
                           ),
                           new Padding(padding: EdgeInsets.all(2.0),),
                           new Divider(height: 1.0,),
                           Text('Verities of cakes available...', style: TextStyle(fontSize: 15, color: Colors.grey),),
                           Row(
                             children: [
                               Icon(Icons.star,color: Colors.pink,size: 20,),
                               Text('4.7(2.43 Reviews)')
                             ],
                           )
                         ],

                       ),
                     )
                  ],
                ),
                Divider(height: 1.0,
                color: Colors.grey,),

                new Row(
                  children: [
                    new Container(
                        margin: EdgeInsets.all(10.0),
                        child: new ClipRRect(
                          borderRadius: new BorderRadius.circular(15),
                          child: Image(image: AssetImage('images/cakeee.png'),
                            height: 100,
                            width: 100,
                            fit: BoxFit.cover,),
                        )
                    ),
                    new Container(
                      margin: EdgeInsets.all(3.0),
                      height: 90,
                      child: new Column(
                        children: [
                          Row(
                            children: [
                              Text('Gayu Cakes & Plums',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                              SizedBox(width: 20,),
                              Icon(
                                Icons.favorite_border_outlined,
                                color: Colors.grey,
                                size: 25.0,
                              )
                            ],
                          ),
                          new Padding(padding: EdgeInsets.all(2.0),),
                          new Divider(height: 1.0,),
                          Text('Verities of cakes available...', style: TextStyle(fontSize: 15, color: Colors.grey),),
                          Row(
                            children: [
                              Icon(Icons.star,color: Colors.pink,size: 20,),
                              Text('4.7(2.43 Reviews)')
                            ],
                          )
                        ],

                      ),
                    )
                  ],
                ),

                Divider(height: 1.0,
                  color: Colors.grey,),

                new Row(
                  children: [
                    new Container(
                        margin: EdgeInsets.all(10.0),
                        child: new ClipRRect(
                          borderRadius: new BorderRadius.circular(15),
                          child: Image(image: AssetImage('images/tomato.png'),
                            height: 100,
                            width: 100,
                            fit: BoxFit.cover,),
                        )
                    ),
                    new Container(
                      margin: EdgeInsets.all(3.0),
                      height: 90,
                      child: new Column(
                        children: [
                          Row(
                            children: [
                              Text('Gayu Cakes & Plums',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                              SizedBox(width: 20,),
                              Icon(
                                Icons.favorite_border_outlined,
                                color: Colors.grey,
                                size: 25.0,
                              )
                            ],
                          ),
                          new Padding(padding: EdgeInsets.all(2.0),),
                          new Divider(height: 1.0,),
                          Text('Verities of cakes available...', style: TextStyle(fontSize: 15, color: Colors.grey),),
                          Row(
                            children: [
                              Icon(Icons.star,color: Colors.pink,size: 20,
                              ),
                              Text('4.7(2.43 Reviews)')
                            ],
                          )
                        ],

                      ),
                    )
                  ],
                ),
                Divider(height: 1.0,
                  color: Colors.grey,),

                new Row(
                  children: [
                    new Container(
                        margin: EdgeInsets.all(10.0),
                        child: new ClipRRect(
                          borderRadius: new BorderRadius.circular(15),
                          child: Image(image: AssetImage('images/cake1.png'),
                            height: 100,
                            width: 100,
                            fit: BoxFit.cover,),
                        )
                    ),
                    new Container(
                      margin: EdgeInsets.all(3.0),
                      height: 90,
                      child: new Column(
                        children: [
                          Row(
                            children: [
                              Text('Gayu Cakes & Plums',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                              SizedBox(width: 20,),
                              Icon(
                                Icons.favorite_border_outlined,

                                color: Colors.grey,
                                size: 25.0,
                              )
                            ],
                          ),
                          new Padding(padding: EdgeInsets.all(2.0),),
                          new Divider(height: 1.0,),
                          Text('Verities of cakes available...', style: TextStyle(fontSize: 15, color: Colors.grey),),
                          Row(
                            children: [
                              Icon(Icons.star,color: Colors.pink,size: 20,),
                              Text('4.7(2.43 Reviews)')
                            ],
                          )
                        ],

                      ),
                    )
                  ],
                ),

                Divider(height: 1.0,
                  color: Colors.grey,),

                new Row(
                  children: [
                    new Container(
                        margin: EdgeInsets.all(10.0),
                        child: new ClipRRect(
                          borderRadius: new BorderRadius.circular(15),
                          child: Image(image: AssetImage('images/cake2.png'),
                            height: 100,
                            width: 100,
                            fit: BoxFit.cover,),
                        )
                    ),
                    new Container(
                      margin: EdgeInsets.all(3.0),
                      height: 90,
                      child: new Column(
                        children: [
                          Row(
                            children: [
                              Text('Gayu Cakes & Plums',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                              SizedBox(width: 20,),
                              Icon(
                                Icons.favorite_border_outlined,
                                color: Colors.grey,
                                size: 25.0,
                              )
                            ],
                          ),
                          new Padding(padding: EdgeInsets.all(2.0),),
                          new Divider(height: 1.0,),
                          Text('Verities of cakes available...', style: TextStyle(fontSize: 15, color: Colors.grey),),
                          Row(
                            children: [
                              Icon(Icons.star,color: Colors.pink,size: 20,),
                              Text('4.7(2.43 Reviews)')
                            ],
                          )
                        ],

                      ),
                    )
                  ],
                ),

              ],
            ),

          ),
        ],
      ),

    bottomNavigationBar: BottomNavigationBar(
      selectedItemColor: Colors.pink,
      unselectedItemColor: Colors.grey,
      currentIndex: _currentIndex,
      onTap: (value){
        _currentIndex= value;
        setState(() {

        });
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),

          title: Text(''),
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.location_on_outlined),
          title: Text(''),
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_bag_outlined),
          title: Text(''),
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.messenger_outline),
          title: Text(''),
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.menu),
          title: Text(''),
        ),

      ],
    ),



    //   bottomNavigationBar: BottomNavigationBar(
    //     currentIndex: _currentIndex,
    //     selectedFontSize: 15,
    //     unselectedFontSize: 10,
    //     selectedItemColor: Colors.pink,
    //
    //       items: [
    //   BottomNavigationBarItem(
    //   icon: Container(
    //   child: Padding(
    //     padding: const EdgeInsets.all(8.0),
    //     child: Icon(Icons.home_outlined,),
    //   ),
    // ),
    //     title: Text(
    //       "",
    //       style: TextStyle(
    //         fontWeight: FontWeight.w700,
    //         fontFamily: 'Inter',
    //       ),
    //     ),
    // ),
    //
    //         BottomNavigationBarItem(
    //           icon: Container(
    //             child: Padding(
    //               padding: const EdgeInsets.all(8.0),
    //               child: Icon(Icons.location_on_outlined,),
    //             ),
    //           ),
    //           title: Text(
    //             "",
    //             style: TextStyle(
    //               fontWeight: FontWeight.w700,
    //               fontFamily: 'Inter',
    //             ),
    //           ),
    //         ),
    //         BottomNavigationBarItem(
    //           icon: Container(
    //             child: Padding(
    //               padding: const EdgeInsets.all(8.0),
    //               child: Icon(Icons.shopping_bag_outlined,),
    //             ),
    //           ),
    //           title: Text(
    //             "",
    //             style: TextStyle(
    //               fontWeight: FontWeight.w700,
    //               fontFamily: 'Inter',
    //             ),
    //           ),
    //         ),
    //
    //         BottomNavigationBarItem(
    //           icon: Container(
    //             child: Padding(
    //               padding: const EdgeInsets.all(8.0),
    //               child: Icon(Icons.messenger_outline,),
    //             ),
    //           ),
    //           title: Text(
    //             "",
    //             style: TextStyle(
    //               fontWeight: FontWeight.w700,
    //               fontFamily: 'Inter',
    //             ),
    //           ),
    //         ),
    //
    //         BottomNavigationBarItem(
    //           icon: Container(
    //             child: Padding(
    //               padding: const EdgeInsets.all(8.0),
    //               child: Icon(Icons.menu,),
    //             ),
    //           ),
    //           title: Text(
    //             "",
    //             style: TextStyle(
    //               fontWeight: FontWeight.w700,
    //               fontFamily: 'Inter',
    //             ),
    //           ),
    //         ),
    // ],
        // onTap: (index) {
        //   setState(() {
          //     _currentIndex = index;
          //     _index=0;
          //     _index1=1;
          //     _index2=2;
          //     _index3=3;
          //     _index4=4;
          //   });
          // }

      );

      // bottomNavigationBar: BottomNavigationBar(
      //     currentIndex: _currentIndex,
      //     iconSize: 30,
      //     selectedFontSize: 15,
      //     unselectedFontSize: 10,
      //     items: [
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.home),
      //         title: Text(''),
      //         backgroundColor: Colors.white,
      //       ),
      //
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.search),
      //         title: Text(''),
      //         backgroundColor: Colors.blueAccent,
      //       ),
      //
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.camera),
      //         title: Text(''),
      //         backgroundColor: Colors.lightBlue,
      //       ),
      //
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.person),
      //         title: Text(''),
      //         backgroundColor: Colors.lightBlueAccent,
      //       ),
      //     ],
      //     onTap: (index) {
      //       setState(() {
      //         _currentIndex = index;
      //       });
      //     }
      // ),
  }
}

