
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
 
class RiskyPages2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
         actions: [
//         // action button
         IconButton(
           icon: Image.asset('assets/icons/heart.png'),
           onPressed: () { },
         ),
       ],
        backgroundColor: Colors.indigo,
      ),
       body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          
          padding: EdgeInsets.all(10.0),
          
          child: Column(children: [
            
              Text('รายชื่อประวัติข้อมูลผู้ป่วยที่มารับการตรวจคัดกรองโรค',style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold),),
            SizedBox(height: 10.0),
             Text('สถานะปกติ',style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold),),
          //  SizedBox(height: 10.0),
                 Text('1.นายประยุทธ ใจเกเร',style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold),),
                 SizedBox(height: 10.0),
                 Text('2.นายเจมส์ พายะมาา',style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold),),
                 SizedBox(height: 10.0),
                 Text('3.นางสาวออร่า ทันใจ',style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold),),
                 SizedBox(height: 10.0),
                 Text('4.นายประยุทธ ใจเกเร',style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold),),
                 SizedBox(height: 10.0),
                 Text('4.นายประยุทธ เกใจเร',style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold),),
            // Container(
            //    margin: EdgeInsets.all(2),
            //    child: FlatButton(
            //      child: Text('1.นายประยุทธ เกชา',style: TextStyle(fontWeight: FontWeight.bold,
            //      fontSize: 20.5),),
            //      onPressed: () {
              
            //      Navigator.push(
            //        context,
            //        MaterialPageRoute(
            //          builder: (context) {
            //            return RiskyPages2();
            //          },
            //        ),
            //      );
            //    },
            //    ),
            //  ), 
            //    Container(
            //    margin: EdgeInsets.all(0.5),
            //    child: FlatButton(
            //      child: Text('2.นายเจมส์ พายะ',style: TextStyle(fontWeight: FontWeight.bold,
            //      fontSize: 20.5),),
            //      onPressed: () {
              
            //      Navigator.push(
            //        context,
            //        MaterialPageRoute(
            //          builder: (context) {
            //            return RiskyPages2();
            //          },
            //        ),
            //      );
            //    },
            //    ),
            //  ), 
              
            ])
            
              ), 
    )
      // body: Center(
        
      //   child: RaisedButton(
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //     child: Text('Dashboard'),
      //   ),
      // ),
    );
  }
}
 
 