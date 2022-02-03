// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'LOGIN_SCREEN.dart';
import 'createproduct.dart';
import 'favorites.dart';
import 'olusturulanurunler.dart';
import 'satin_alinanlar.dart';

class mainpage extends StatefulWidget {
  const mainpage({Key? key}) : super(key: key);

  @override
  _mainpageState createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
    void choose(BuildContext context) {
    showDialog(
      context: context, 
    builder: (context) => AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children:<Widget> [
          ListTile(
            title: Text("Sell Product"),
            onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>createproduct()),);
            },
          ),
          ListTile(
            title: Text("Purchased Products"),
            onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>satin_alinanlar()),);
            },
          ),
           ListTile(
            title: Text("Favorite Products"),
            onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>favorites()),);
            },
          ),
           ListTile(
            title: Text("Created Products"),
            onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>olusturulanurunler()),);
            },
          ),
        ],
      ),
    ),
    
    );
    
  }
  Color _icon1Color = Colors.black;
  Color _icon2Color = Colors.black;
  Color _icon3Color = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Container(        
        padding: EdgeInsets.all(10),
        child: ListView(children: <Widget>[
          Padding(
               padding: const EdgeInsets.all(8.0),                           
                 child: Row(                 
                   children: [
                   IconButton(onPressed: () {
                                choose(context);
                              },  
                              icon: Icon(Icons.menu)
                              ),
                  IconButton(onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                  },
                  //alignment: FractionalOffset(35.5, 0.5),                  
                  icon: Icon(Icons.logout), color: Colors.red),
                   ],                   
                 ),               
             ),          
          
          Container(
            height: 2,
            color: Colors.red,
          ),

          //------------Birinci ürün buradan başlıyor---------------
          Container(
            width: 200,
            height: 200,
            child: Image.network(
                "https://cdn.cimri.io/image/1200x1200/ceptelefonufiyatlar_178954840.jpg"),
          ),
          Container(
              width: 200,
              height: 200,
              child: Column(
                children: [
                  //adı ve özelliği
                  Text(
                    "Samsung Galaxy A32 128 Gb Smart Phone Black",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue[900],
                    ),
                  ),
                  //fiyatı
                  Text(
                    "\$ 320.07",
                    style: TextStyle(fontSize: 15, color: Colors.blue[900]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(icon: Icon(Icons.share_outlined) ,onPressed: (){
                          Share.share(" https://play.google.com/store/apps/details?id=com.instructivetech.kidskite");
                        }, ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            _icon1Color = Colors.pink;
                          });
                        },
                        icon: Icon(
                          Icons.favorite,
                          color: _icon1Color,
                          size: 24.0,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Buy"),
                      ),
                    ],
                  ),
                ],
              )
              ),

          // --------------İkinci ürün burdan başlıyor----------
          Container(
            width: 200,
            height: 200,
            child: Image.network(
                "https://i5.walmartimages.com/asr/049f4d39-0d3d-401b-bec4-7219b3719b46.5a77cd4f5ea0ac00c4b93c57914306f8.jpeg?odnHeight=612&odnWidth=612&odnBg=FFFFFF"),
          ),
          Container(
              width: 200,
              height: 200,
              child: Column(
                children: [
                  Text(""),
                  //adı ve özelliği
                  Text(
                    "Apple MacBook Air with Apple M1 Chip (13-inch, 8GB RAM, 256GB SSD Storage) - Silver (Latest Model)",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue[900],
                    ),
                  ),
                  //fiyatı
                  Text(
                    "\$ 998.00",
                    style: TextStyle(fontSize: 15, color: Colors.blue[900]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       IconButton(icon: Icon(Icons.share_outlined) ,onPressed: (){
                          Share.share(" https://play.google.com/store/apps/details?id=com.instructivetech.kidskite");
                        }, ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            _icon2Color = Colors.pink;
                          });
                        },
                        icon: Icon(
                          Icons.favorite,
                          color: _icon2Color,
                          size: 24.0,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Buy"),
                      ),
                    ],
                  ),
                ],
              )),
          // --------------İkinci ürün sonu----------

          // --------------Üçüncü ürün burdan başlıyor----------
          Container(
            width: 200,
            height: 200,
            child: Image.network(
                "https://images-na.ssl-images-amazon.com/images/I/41CWLVMcIbL._SX321_BO1,204,203,200_.jpg"),
          ),
          Container(
              width: 200,
              height: 200,
              child: Column(
                children: [
                  //adı ve özelliği
                  Text(
                    "My Sweet Orange Tree - Jose Mauro de Vasconcelos",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue[900],
                    ),
                  ),
                  //fiyatı
                  Text(
                    "\$ 20.00",
                    style: TextStyle(fontSize: 15, color: Colors.blue[900]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(icon: Icon(Icons.share_outlined) ,onPressed: (){
                          Share.share(" https://play.google.com/store/apps/details?id=com.instructivetech.kidskite");
                        }, ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            _icon3Color = Colors.pink;
                          });
                        },
                        icon: Icon(
                          Icons.favorite,
                          color: _icon3Color,
                          size: 24.0,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Buy"),
                      ),
                    ],
                  ),
                ],
              )),
          // --------------Üçüncü ürün sonu----------
        ]),
      ),
    );
  }
}