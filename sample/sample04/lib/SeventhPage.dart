import 'package:flutter/material.dart';

class SeventhPage extends StatefulWidget {

  @override
  _SeventhPageState createState() => _SeventhPageState();

}

class _SeventhPageState extends State<SeventhPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Seventh Page')),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Text('Game', style: TextStyle(fontWeight: FontWeight.bold)),
              Container( //Header
                margin: EdgeInsets.all(8.0),
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(width: 1.0)
                ),
                child: Column(
                  children: <Widget>[
                    Table(
                      border: TableBorder.all(),
                      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                      children: <TableRow>[
                        TableRow(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(2.0),
                                child: Text('Date : 2020/01/10'),
                              ),
                              Container(
                                padding: EdgeInsets.all(2.0),
                                child: Text('Time : 12:00'),
                              ),
                              Container(
                                padding: EdgeInsets.all(2.0),
                                child: Text('Div : Bronze'),
                              ),
                            ]
                        ),
                      ],
                    ),

                    Table(
                      columnWidths: {
                        0: FlexColumnWidth(1.2),
                        1: FlexColumnWidth(2.9),
                        2: FlexColumnWidth(0.6),
                        3: FlexColumnWidth(0.6),
                        4: FlexColumnWidth(0.5),
                        5: FlexColumnWidth(1),
                        6: FlexColumnWidth(0.5),
                        7: FlexColumnWidth(0.6),
                        8: FlexColumnWidth(0.6),
                        9: FlexColumnWidth(0.5),
                        10: FlexColumnWidth(1),
                      },
                      border: TableBorder.all(),
                      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                      children: <TableRow>[
                        TableRow(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(2.0),
                                child: Text('Goal', style: TextStyle(fontWeight: FontWeight.bold)),
                              ),
                              Container(
                                padding: EdgeInsets.all(2.0),
                                child: Text('Team', style: TextStyle(fontWeight: FontWeight.bold)),
                              ),
                              Container(
                                padding: EdgeInsets.all(2.0),
                                child: Text('1', style: TextStyle(fontWeight: FontWeight.bold)),
                              ),
                              Container(
                                padding: EdgeInsets.all(2.0),
                                child: Text('2', style: TextStyle(fontWeight: FontWeight.bold)),
                              ),
                              Container(
                                padding: EdgeInsets.all(2.0),
                                child: Text('OT', style: TextStyle(fontWeight: FontWeight.bold)),
                              ),
                              Container(
                                padding: EdgeInsets.all(2.0),
                                child: Text('Total', style: TextStyle(fontWeight: FontWeight.bold)),
                              ),
                              Container(
                                padding: EdgeInsets.all(2.0),
                                child: Text('SOG', style: TextStyle(fontWeight: FontWeight.bold)),
                              ),
                              Container(
                                padding: EdgeInsets.all(2.0),
                                child: Text('1', style: TextStyle(fontWeight: FontWeight.bold)),
                              ),
                              Container(
                                padding: EdgeInsets.all(2.0),
                                child: Text('2', style: TextStyle(fontWeight: FontWeight.bold)),
                              ),
                              Container(
                                padding: EdgeInsets.all(2.0),
                                child: Text('OT', style: TextStyle(fontWeight: FontWeight.bold)),
                              ),
                              Container(
                                padding: EdgeInsets.all(2.0),
                                child: Text('Total', style: TextStyle(fontWeight: FontWeight.bold)),
                              ),
                            ]
                        ),

                        TableRow(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(2.0),
                                child: Text('Vistor', style: TextStyle(fontWeight: FontWeight.bold)),
                              ),
                              Container(
                                padding: EdgeInsets.all(2.0),
                                child: Text('MillenniumFalcons', style: TextStyle(fontWeight: FontWeight.bold)),
                              ),
                              Container(
                                padding: EdgeInsets.all(2.0),
                                child: Text('4'),
                              ),
                              Container(
                                padding: EdgeInsets.all(2.0),
                                child: Text('3'),
                              ),
                              Container(
                                padding: EdgeInsets.all(2.0),
                                child: Text('0'),
                              ),
                              Container(
                                padding: EdgeInsets.all(2.0),
                                child: Text('7'),
                              ),
                              Container(
                                padding: EdgeInsets.all(2.0),
                                child: Text('-'),
                              ),
                              Container(
                                padding: EdgeInsets.all(2.0),
                                child: Text('12'),
                              ),
                              Container(
                                padding: EdgeInsets.all(2.0),
                                child: Text('16'),
                              ),
                              Container(
                                padding: EdgeInsets.all(2.0),
                                child: Text('0'),
                              ),
                              Container(
                                padding: EdgeInsets.all(2.0),
                                child: Text('28'),
                              ),
                            ]
                        ),

                        TableRow(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(2.0),
                                child: Text('Home', style: TextStyle(fontWeight: FontWeight.bold)),
                              ),
                              Container(
                                padding: EdgeInsets.all(2.0),
                                child: Text('MillenniumFalcons', style: TextStyle(fontWeight: FontWeight.bold)),
                              ),
                              Container(
                                padding: EdgeInsets.all(2.0),
                                child: Text('4'),
                              ),
                              Container(
                                padding: EdgeInsets.all(2.0),
                                child: Text('3'),
                              ),
                              Container(
                                padding: EdgeInsets.all(2.0),
                                child: Text('0'),
                              ),
                              Container(
                                padding: EdgeInsets.all(2.0),
                                child: Text('7'),
                              ),
                              Container(
                                padding: EdgeInsets.all(2.0),
                                child: Text('-'),
                              ),
                              Container(
                                padding: EdgeInsets.all(2.0),
                                child: Text('12'),
                              ),
                              Container(
                                padding: EdgeInsets.all(2.0),
                                child: Text('16'),
                              ),
                              Container(
                                padding: EdgeInsets.all(2.0),
                                child: Text('0'),
                              ),
                              Container(
                                padding: EdgeInsets.all(2.0),
                                child: Text('28'),
                              ),
                            ]
                        ),

                      ],
                    ),

                  ],
                ),
              ),

              Text('Roster', style: TextStyle(fontWeight: FontWeight.bold)),
              Container(
                margin: EdgeInsets.all(8.0),
                width: double.infinity,
                height: 200.0,
                decoration: BoxDecoration(
                    border: Border.all(width: 1.0)
                ),
                child: Table(
                  columnWidths: {
                    0: FlexColumnWidth(1),
                    1: FlexColumnWidth(1),
                    2: FlexColumnWidth(4),
                    3: FlexColumnWidth(1),
                    4: FlexColumnWidth(1),
                    5: FlexColumnWidth(1),
                    6: FlexColumnWidth(1),
                  },
                  border: TableBorder.all(),
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  children: <TableRow>[
                    TableRow(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(2.0),
                          child: Text('#', style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          padding: EdgeInsets.all(2.0),
                          child: Text('Pos', style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          padding: EdgeInsets.all(2.0),
                          child: Text('Name', style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          padding: EdgeInsets.all(2.0),
                          child: Text('前半', style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          padding: EdgeInsets.all(2.0),
                          child: Text('後半', style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          padding: EdgeInsets.all(2.0),
                          child: Text('OT', style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          padding: EdgeInsets.all(2.0),
                          child: Text('MVP', style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ]
                    ),

                    TableRow(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(2.0),
                            child: Text('44'),
                          ),
                          Container(
                            padding: EdgeInsets.all(2.0),
                            child: Text('G'),
                          ),
                          Container(
                            padding: EdgeInsets.all(2.0),
                            child: Text('太郎良 顕'),
                          ),
                          Container(
                            padding: EdgeInsets.all(2.0),
                            child: Text('1'),
                          ),
                          Container(
                            padding: EdgeInsets.all(2.0),
                            child: Text('2'),
                          ),
                          Container(
                            padding: EdgeInsets.all(2.0),
                            child: Text('0'),
                          ),
                          Container(
                            padding: EdgeInsets.all(2.0),
                            child: Text('0'),
                          ),
                        ]
                    ),

                    TableRow(
                        children: <Widget>[
                          Container(
                              padding: EdgeInsets.all(2.0),
                              child: Text('#', style: TextStyle(fontWeight: FontWeight.bold)),
                          ),
                          Container(
                            padding: EdgeInsets.all(2.0),
                            child: Text('Pos', style: TextStyle(fontWeight: FontWeight.bold)),
                          ),
                          Container(
                            padding: EdgeInsets.all(2.0),
                            child: Text('Name', style: TextStyle(fontWeight: FontWeight.bold)),
                          ),
                          Container(
                            padding: EdgeInsets.all(2.0),
                            child: Text('G', style: TextStyle(fontWeight: FontWeight.bold)),
                          ),
                          Container(
                            padding: EdgeInsets.all(2.0),
                            child: Text('A', style: TextStyle(fontWeight: FontWeight.bold)),
                          ),
                          Container(
                            padding: EdgeInsets.all(2.0),
                            child: Text('P', style: TextStyle(fontWeight: FontWeight.bold)),
                          ),
                          Container(
                            padding: EdgeInsets.all(2.0),
                            child: Text('P', style: TextStyle(fontWeight: FontWeight.bold)),
                          ),
                        ]
                    ),

                    TableRow(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(2.0),
                            child: Text('2'),
                          ),
                          Container(
                            padding: EdgeInsets.all(2.0),
                            child: Text('FW'),
                          ),
                          Container(
                            padding: EdgeInsets.all(2.0),
                            child: Text('田島 啓之'),
                          ),
                          Container(
                            padding: EdgeInsets.all(2.0),
                            child: Text('1'),
                          ),
                          Container(
                            padding: EdgeInsets.all(2.0),
                            child: Text('2'),
                          ),
                          Container(
                            padding: EdgeInsets.all(2.0),
                            child: Text('0'),
                          ),
                          Container(
                            padding: EdgeInsets.all(2.0),
                            child: Text('0'),
                          ),
                        ]
                    ),


                  ],
                ),
              ),


              Text('Goals', style: TextStyle(fontWeight: FontWeight.bold)),
              Container(
                margin: EdgeInsets.all(8.0),
                width: double.infinity,
                height: 120.0,
                decoration: BoxDecoration(
                    border: Border.all(width: 1.0)
                ),
                child: Table(
                  columnWidths: {
                    0: FlexColumnWidth(1),
                    1: FlexColumnWidth(1),
                    2: FlexColumnWidth(2),
                    3: FlexColumnWidth(2),
                    4: FlexColumnWidth(2),
                  },

                  border: TableBorder.all(),
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  children: <TableRow>[
                    TableRow(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(2.0),
                          child: Text('Half', style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          padding: EdgeInsets.all(2.0),
                          child: Text('Time', style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          padding: EdgeInsets.all(2.0),
                          child: Text('G', style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          padding: EdgeInsets.all(2.0),
                          child: Text('A', style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          padding: EdgeInsets.all(2.0),
                          child: Text('A', style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                    ],
                   ),

                  TableRow(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(2.0),
                          child: Text('1'),
                        ),
                        Container(
                          padding: EdgeInsets.all(2.0),
                          child: Text('12:20'),
                        ),
                        Container(
                          padding: EdgeInsets.all(2.0),
                          child: Text('田島 啓之'),
                        ),
                        Container(
                          padding: EdgeInsets.all(2.0),
                          child: Text('伊原 克将'),
                        ),
                        Container(
                          padding: EdgeInsets.all(2.0),
                          child: Text('轟 啓介'),
                        ),
                      ],
                  ),

              ]
                ),
              ),

              Text('Penalties', style: TextStyle(fontWeight: FontWeight.bold)),
              Container(
                margin: EdgeInsets.all(8.0),
                width: double.infinity,
                height: 120.0,
                decoration: BoxDecoration(
                    border: Border.all(width: 1.0)
                ),
                child: Table(
                    columnWidths: {
                      0: FlexColumnWidth(1.0),
                      1: FlexColumnWidth(2.0),
                      2: FlexColumnWidth(1.5),
                      3: FlexColumnWidth(1.5),
                      4: FlexColumnWidth(4.0),
                    },

                    border: TableBorder.all(),
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    children: <TableRow>[
                      TableRow(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(2.0),
                            child: Text('Half', style: TextStyle(fontWeight: FontWeight.bold)),
                          ),
                          Container(
                            padding: EdgeInsets.all(2.0),
                            child: Text('Name', style: TextStyle(fontWeight: FontWeight.bold)),
                          ),
                          Container(
                            padding: EdgeInsets.all(2.0),
                            child: Text('Time', style: TextStyle(fontWeight: FontWeight.bold)),
                          ),
                          Container(
                            padding: EdgeInsets.all(2.0),
                            child: Text('P.Time', style: TextStyle(fontWeight: FontWeight.bold)),
                          ),
                          Container(
                            padding: EdgeInsets.all(2.0),
                            child: Text('Penalty', style: TextStyle(fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),

                      TableRow(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(2.0),
                            child: Text('1'),
                          ),
                          Container(
                            padding: EdgeInsets.all(2.0),
                            child: Text('田島 啓之'),
                          ),
                          Container(
                            padding: EdgeInsets.all(2.0),
                            child: Text('14:32'),
                          ),
                          Container(
                            padding: EdgeInsets.all(2.0),
                            child: Text('2:00'),
                          ),
                          Container(
                            padding: EdgeInsets.all(2.0),
                            child: Text('インターフェアランス'),
                          ),
                        ],
                      ),

                    ]
                ),
              ),


              Container(// Penalties
                margin: EdgeInsets.all(8.0),
                width: double.infinity,
                height: 120.0,
                decoration: BoxDecoration(
                    border: Border.all(width: 1.0)
                ),
                child: Text('Footer'),
              ),

              Container(
                margin: EdgeInsets.all(8.0),
                width: double.infinity,
                height: 120.0,
                decoration: BoxDecoration(
                    border: Border.all(width: 1.0)
                ),
                child: Text('Footer'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
