// ignore_for_file: prefer_const_constructors, avoid_print, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'LOGIN_SCREEN.dart';


class signup extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
   TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        appBar: AppBar( 
          title: Text(''),
        ),
        body: Container(
          decoration: BoxDecoration(       
        image: DecorationImage(                    
          image: NetworkImage('https://www.medipol.edu.tr/medium/GalleryImage-Image-2016.vsf'),          
          fit: BoxFit.cover,          
          colorFilter: 
      ColorFilter.mode(Colors.black.withOpacity(0.8), BlendMode.dstATop),
        ),
      ), 

            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                ),
                
                Container(                  
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Center(
                      child: Padding(                      
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Sign Up',
                          style: TextStyle(fontSize: 30, 
                          color: Colors.blue),
                        ),
                      ),
                    )),

                Container(                  
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Username',
                    ),
                  ),
                ),
                
                Container(
                  //kenar konumları
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    //sifre gizlenecek mi? gizlenmeyecek mi?
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
              Divider(
                height: 40,
              ),
                Container(
                  height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),                    
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue,                      
                      child: Text('Create Account'),
                      onPressed: () {
                        print(nameController.text);
                        print(passwordController.text);
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()),); 
                      },
                    )),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                ) )
              ],
            )));
  }
}