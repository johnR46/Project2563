import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
// import 'package:ifightcovid19/Screens/Screening/screening_screen.dart';

class Tabel14dayPage extends StatefulWidget {
  Tabel14dayPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Tabel14dayPageState createState() => _Tabel14dayPageState();
}

class _Tabel14dayPageState extends State<Tabel14dayPage> {
 
  @override
  Widget build(BuildContext context) {
      //  return new MaterialApp(
      //  debugShowCheckedModeBanner: false,
              return Scaffold(
                  // backgroundColor: Colors.lightBlue[100],
                  appBar: new AppBar(
                    elevation: 0.0,
                    centerTitle: true,
                    title: new Text('ข้อมูลบันทึกฟอร์ม14วัน',
                        style: new TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.white)),
                                actions: [
                      
                     IconButton(
                       icon: Image.asset('assets/icons/heart.png'),
                       onPressed: () { },
                     ),
            
                   ],
                     backgroundColor: Colors.indigo,
                     
                  ),

                        body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // SizedBox(height: 10.0),
          //  Text('แบบคัดกรองโควิด 19 (COVID-19)',style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold),),

          SingleChildScrollView(
            
            child: DataTable(
              sortAscending: true,
              sortColumnIndex: 0,
              columns: [
                DataColumn(
                    label: Text(
                      "วันที่คัดกรอง",
                      style: TextStyle(
                          fontSize: 12.0, fontWeight: FontWeight.w900),
                    ),
                    tooltip: "Student USN Number"),
                DataColumn(
                    label: Text(
                  "สถานะ",
                  style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w900),
                )),
            
              ],
              rows: [
                DataRow(
                  cells: [
                    DataCell(Text("16 ธันวาคม 2563")),
                    DataCell(Text("ปกติ")),
                   
                  ],
                  selected: true,
                ),
                DataRow(cells: [
                  DataCell(Text("17 ธันวาคม 2563")),
                  DataCell(Text("ปกติ")),
                
                ]),
                DataRow(cells: [
                 DataCell(Text("18 ธันวาคม 2563")),
                 DataCell(Text("ปกติ")),
              
                 ]),
                 DataRow(cells: [
                 DataCell(Text("19 ธันวาคม 2563")),
                DataCell(Text("ปกติ")),
                
                ]),
              ],
            ),
          ),
        ],
      ),
    );
       
  }
}
