import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Viewprofile extends StatefulWidget

{


  Map? userData;
  Viewprofile({
    required this.userData
  });


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Viewprofile();
  }




}

class _Viewprofile  extends State<Viewprofile>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment:MainAxisAlignment.center,children: [

            Text("Profile"),
          ],),
          SizedBox(height:32),

          // Row(
          //   mainAxisAlignment:MainAxisAlignment.center,children: [
          //
          //   CircleAvatar(radius: 40,backgroundImage: NetworkImage(widget.userData[''].photoUrl ?? ""),),
          // ],),


          Row(
            mainAxisAlignment:MainAxisAlignment.center,children: [
            Text("name   :"+widget.userData!['name']!),

          ],),


          Row(
            mainAxisAlignment:MainAxisAlignment.center,children: [

            Text("emailaddress  :"+widget.userData!['email'])
          ],),

        ],
      ),
    );
  }
}