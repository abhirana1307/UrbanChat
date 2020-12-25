import 'package:UrbanChat/presentation/widgets/custom_tab_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isSearch = false;

  Widget _buildSearch() {
    return Container(
      height: 45,
      margin: EdgeInsets.only(top: 30),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(.3),
          spreadRadius: 1,
          offset: Offset(0.0, 0.50),
        ),
      ]),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search...',
          prefixIcon: InkWell(
            onTap: () {
              setState(() {
                _isSearch = false;
              });
            },
            child: Icon(Icons.arrow_back),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: _isSearch == false ? Colors.white : Colors.transparent,
          automaticallyImplyLeading: false,
          actions: [
            InkWell(
                onTap: () {
                  setState(() {
                    _isSearch = true;
                  });
                },
                child: Icon(Icons.search, color: Colors.black)),
            SizedBox(width: 5),
            Icon(Icons.more_vert, color: Colors.black),
          ],
          title: _isSearch == false
              ? Text(
                  'UrbanChat',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                )
              : Container(
                  height: 0.0,
                  width: 0.0,
                ),
          flexibleSpace: _isSearch == false
              ? Container(
                  height: 0.0,
                  width: 0.0,
                )
              : _buildSearch(),  
          ),     
        body: Column(
          children: [

          ],
        ),
    );
  }
}
