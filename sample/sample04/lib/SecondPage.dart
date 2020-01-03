import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample04/SeventhPage.dart';
import 'package:sample04/ThirdPage.dart';

class SecondPage extends StatefulWidget {

  @override
  _SecondPageState createState() => _SecondPageState();

}

class _SecondPageState extends State<SecondPage> {
  int _selectedIndex = 0;
  bool _checkboxValue = true;
  bool _switchValue = true;
  int _pickerSelectedIndex = 0;

  final items = [
    'たぢ1','たぢ2','たぢ3','たぢ4','たぢ5','たぢ6','たぢ7','たぢ8','たぢ9','たぢ10',
    'たぢ11','たぢ12','たぢ13','たぢ14','たぢ15','たぢ16','たぢ17','たぢ18','たぢ19','たぢ20',
    'たぢ21','たぢ22','たぢ23','たぢ24','たぢ25','たぢ26','たぢ27','たぢ28','たぢ29','たぢ30',
  ];


  void _onItemTapped(int index){
    print(index);
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Second Page'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_railway)),
              Tab(icon: Icon(Icons.directions_bus)),
              Tab(icon: Icon(Icons.directions_subway)),
            ],
          ),
        ),
        body: Column(
          children: <Widget>[
          Container(
            color: Colors.grey,
            height: 100,
            child: Row(
    //          crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Go Back'),
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ThirdPage()));
    //                    Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new ThirdPage()));
                  },
                  child: Text('Next'),
                ),
                myContainer(),
              ],
            ),
          ),
          Container(
            color: Colors.blueGrey,
            height: 100,
            child: myContainer(),
          ),
          Checkbox(
            value: _checkboxValue,
            onChanged: (bool value){
              setState(() {
                _checkboxValue = value;
              });
            },
          ),
          Switch.adaptive(
              value: _switchValue,
              onChanged: (bool value){
                setState(() {
                  _switchValue = value;
                });
              }),
          InputChip(
            label: Text('Flutter'),
            onDeleted: (){},
            selected: _switchValue,
            onPressed:(){
              setState(() {
                _switchValue != _switchValue;
              });
            },
          ),
            RaisedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SeventhPage()));
              },
              child: Text('Next Page'),
            ),
            RaisedButton(
              onPressed: cupertinoModalPopup,
              child: Text('Open Dialog'),
            ),
            Text('SELECTED: ' + items[_pickerSelectedIndex]),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('Business')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('School')
          ),
        ],
        selectedItemColor: Colors.blue,
          onTap: _onItemTapped,
          currentIndex: _selectedIndex,
        ),
      ),
    );
  }

  Container myContainer(){
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: ClipOval (
        clipBehavior: Clip.hardEdge,
        child: Image.asset('assets/images/tajima.jpeg'),
      ),
    );
  }

  cupertinoModalPopup(){
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context){
        return CupertinoPicker(
          onSelectedItemChanged: (int index){
            setState(() {
              _pickerSelectedIndex = index;
            });
          },
          itemExtent: 32.0,
          children: items.map((item) => Text(item)).toList(),
          scrollController: FixedExtentScrollController(initialItem: _pickerSelectedIndex)
        );
      });
  }


}



