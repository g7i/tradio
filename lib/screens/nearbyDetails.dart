import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:proto/configs/ThemeColors.dart';

class NearbyDetails extends StatefulWidget {
  String heroTag;
  NearbyDetails({Key key, @required this.heroTag}) : super(key: key);
  @override
  _NearbyDetailsState createState() => _NearbyDetailsState();
}

class _NearbyDetailsState extends State<NearbyDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            icon: Icon(
              EvaIcons.arrowBack,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Hero(
          tag: "appBar",
          child: Material(
            color: Colors.transparent,
            child: Text(
              "Work Summary",
              style: TextStyle(color: Colors.black, fontSize: 25.0),
            ),
          ),
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(children: <Widget>[
          Hero(
            tag: widget.heroTag,
            child: Container(
              height: 300,
              padding: EdgeInsets.all(20.0),
              margin: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                gradient: LinearGradient(
                    colors: ThemeColors.gradient2,
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight),
                boxShadow: [
                  BoxShadow(
                      color: Color(0xFFff5e62).withOpacity(0.2),
                      blurRadius: 10.0,
                      offset: Offset(1, 7))
                ],
                // color: Colors.white
                // gradient: LinearGradient(
                //     colors: ThemeColors.gradient2,
                //     begin: Alignment.topLeft,
                //     end: Alignment.bottomRight)
              ),
              child: Material(
                color: Colors.transparent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(7.0),
                          width: 60.0,
                          height: 60.0,
                          decoration: BoxDecoration(
                              color: Colors.black26,
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Image.asset(
                            "assets/icons/drill.png",
                            width: 40.0,
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Carpentry",
                              style: TextStyle(
                                  fontSize: 30.0, color: Colors.white),
                            ),
                            Text(
                              "3/76, UIT Sector 3, Bhiwadi",
                              style: TextStyle(
                                  color: Colors.black45, fontSize: 10.0),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      "Description",
                      style: TextStyle(fontSize: 25.0, color: Colors.white70),
                    ),
                    Text(
                      "description about work",
                      style: TextStyle(fontSize: 15.0, color: Colors.white70),
                    ),
                    Text(
                      "Special requirements: tools",
                      style: TextStyle(fontSize: 15.0, color: Colors.white70),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[Text("Charges"), Text("13\$")],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Special requirements"),
                        Text("1\$")
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[Text("Taxes"), Text("1\$")],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[Text("Total"), Text("15\$")],
                    ),
                    Expanded(child: SizedBox()),
                    Text(
                      "Order#1234",
                      style: TextStyle(color: Colors.black38),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            width: MediaQuery.of(context).size.width - 100,
            height: 60,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: ThemeColors.gradient3,
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight),
                borderRadius: BorderRadius.circular(10.0)),
            child: Center(
              child: Text(
                "Accept Booking",
                style: TextStyle(color: Colors.white54, fontSize: 20.0),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            width: MediaQuery.of(context).size.width - 100,
            height: 60,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: ThemeColors.gradient2,
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight),
                borderRadius: BorderRadius.circular(10.0)),
            child: Center(
              child: Text(
                "Reject",
                style: TextStyle(color: Colors.white54, fontSize: 20.0),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
