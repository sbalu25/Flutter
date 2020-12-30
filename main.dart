import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int loginCount = 0;
  List<String> roles = ['Coordinator', 'Patient', 'Doctor', 'ParaMedic'];
  // ignore: non_constant_identifier_names
  Widget RolesTemplate(role){
    return RaisedButton.icon(
        onPressed: (){},
        label:Text('Login as $role',
          style: TextStyle(
            fontSize: 20.0,
            fontFamily: 'Langar',
          ),
        ),
        icon: Icon(Icons.accessibility),
      color: Colors.white,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        title: Text('Welcome to Apollo'),
        centerTitle: true,
        backgroundColor: Colors.blue[300],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 40.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  // child: Image(
                  //   image:AssetImage('assets/apollo.png'),
                  // ),
                  backgroundImage: AssetImage('assets/apollo.png'),
                  radius: 70.0,
                ),
              ),
              Divider(
                height: 50.0,
                color: Colors.blue,
              ),
              Container(
                child: Text(
                  'Login to Access your dashboard',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              RaisedButton.icon(
                onPressed: () {
                  setState(() {
                    loginCount++;
                  });
                },
                label: Text('Login to access home care',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Langar',
                    )),
                icon: Icon(Icons.login),
                color: Colors.white,
              ),
              SizedBox(height: 10.0),
              RaisedButton.icon(
                onPressed: () {
                  setState(() {
                    loginCount = 0;
                  });
                },
                icon: Icon(Icons.access_time),
                color: Colors.white,
                label: Text('Reset Login'),
              ),
              // Column(
              //   mainAxisAlignment: MainAxisAlignment.start,
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: roles
              //       .map((role) => Padding(
              //         padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
              //         child: RolesTemplate(role),
              //       ))
              //       .toList(),
              // ),
              Text('Login clicked $loginCount'),
            ]),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: Text('click'),
      //   backgroundColor: Colors.blueGrey,
      // ),
    );
  }
}
