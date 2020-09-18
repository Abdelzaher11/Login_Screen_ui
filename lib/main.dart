import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LogIn(),
  ));
}

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(25.0),
                  bottomLeft: Radius.circular(25.0),
                ),
                image: DecorationImage(
                  image: AssetImage('assets/login.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    //logo
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                            'find',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40.0,
                          ),

                        ),
                        SizedBox(width: 40,),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(width: 40,),
                        Icon(
                          Icons.search,
                          color: Colors.pink[600],
                          size: 45,
                        ),
                        Text(
                          'ut',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40.0,
                          ),

                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          //SizedBox(height: 5,),
          //username
          Expanded(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    right: 10,
                    left: 10,
                    top: 10,
                  ),
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.grey[100],
                    ),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Username',
                          icon: Icon(
                            Icons.person_outline,
                            color: Colors.pink[600],
                          ),
                          border: InputBorder.none,

                        ),
                      ),
                    ),
                  ),
                ),
                //password
                Padding(
                  padding: const EdgeInsets.only(
                    right: 10,
                    left: 10,
                    top: 10,

                  ),
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.grey[100],
                    ),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Password',
                          icon: Icon(
                            Icons.lock_outline,
                            color: Colors.pink[600],
                          ),
                          border: InputBorder.none,

                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5,),
                //forget password
                Padding(
                  padding: const EdgeInsets.only(
                      bottom: 5,
                    top: 5,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Forget Password',
                        style: TextStyle(
                          color: Colors.grey[500],
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.italic,
                          fontSize: 11.0,
                        ),
                      ),

                    ],
                  ),
                ),
                Spacer(flex: 1,),
                //login button
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          right: 45,
                          left: 45,
                          bottom: 3,
                        ),
                        child: Container(
                          height: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.pink[600],
                          ),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: FlatButton(
                              onPressed: (){},
                              child: Text('Login'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

