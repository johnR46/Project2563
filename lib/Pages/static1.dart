import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:ifightcovid19/model/covid_today_result.dart';

class PatientgraphPage extends StatefulWidget {
  final Widget child;
   final String title;
  

  PatientgraphPage({Key key, this.child, this.title}) : super(key: key);
  
   



  _PatientgraphPageState createState() => _PatientgraphPageState();
}

class _PatientgraphPageState extends State<PatientgraphPage> {
   List<charts.Series<Pollution, String>> _seriesData;
   List<charts.Series<Task, String>> _seriesPieData;
  // List<charts.Series<Sales, int>> _seriesLineData;

  _generateData() {
    var data1 = [
      new Pollution(1980, 'จันทร์', 30),
      new Pollution(1980, 'อังคาร', 40),
      new Pollution(1980, 'พุธ', 10),
      new Pollution(1985, 'พุธ', 80),
    ];
    var data2 = [
      new Pollution(1985, 'จันทร์', 100),
      new Pollution(1980, 'อังคาร', 150),
      new Pollution(1985, 'พุธ', 80),
      new Pollution(1985, 'พุธ', 80),
    ];
    var data3 = [
      new Pollution(1985, 'จันทร์', 200),
      new Pollution(1980, 'อังคาร', 300),
      new Pollution(1985, 'พุธ', 180),
      new Pollution(1985, 'พุธ', 80),
    ];
     var data4 = [
      new Pollution(1985, 'จันทร์', 200),
      new Pollution(1980, 'อังคาร', 300),
      new Pollution(1985, 'พุธ', 180),
      new Pollution(1985, 'พุธ', 80),
    ];

      var piedata = [
      new Task('เสี่ยงมาก', 35.8, Color(0xfff44336)),
      new Task('ไม่เสี่ยง', 10.8, Color(0xff109618)),
      new Task('ปานกลาง', 19.2, Color(0xffff9900)),
      new Task('เสี่ยงน้อย', 10.3, Color(0xffdc3912)),
    ];

    _seriesData.add(
      charts.Series(
        domainFn: (Pollution pollution, _) => pollution.place,
        measureFn: (Pollution pollution, _) => pollution.quantity,
        id: '2017',
        data: data1,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Pollution pollution, _) =>
            charts.ColorUtil.fromDartColor(Color(0xff109618)),
      ), 
    );

    _seriesData.add(
      charts.Series(
        domainFn: (Pollution pollution, _) => pollution.place,
        measureFn: (Pollution pollution, _) => pollution.quantity,
        id: '2018',
        data: data2,
        fillPatternFn: (_,__) => charts.FillPatternType.solid,
        fillColorFn: (Pollution pollution, _) =>
           charts.ColorUtil.fromDartColor(Color(0xfff44336)),
      ),
    );

    _seriesData.add(
      charts.Series(
        domainFn: (Pollution pollution, _) => pollution.place,
        measureFn: (Pollution pollution, _) => pollution.quantity,
        id: '2019',
        data: data3,
        fillPatternFn: (_,__) => charts.FillPatternType.solid,
       fillColorFn: (Pollution pollution, _) =>
          charts.ColorUtil.fromDartColor(Color(0xffff9900)),
      ),
    );
    _seriesData.add(
      charts.Series(
        domainFn: (Pollution pollution, _) => pollution.place,
        measureFn: (Pollution pollution, _) => pollution.quantity,
        id: '2020',
        data: data4,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
       fillColorFn: (Pollution pollution, _) =>
          charts.ColorUtil.fromDartColor(Color(0xffdc3912)),
      ),
    );

     _seriesPieData.add(
      charts.Series(
        domainFn: (Task task, _) => task.task,
        measureFn: (Task task, _) => task.taskvalue,
        colorFn: (Task task, _) =>
            charts.ColorUtil.fromDartColor(task.colorval),
        id: 'Air Pollution',
        data: piedata,
         labelAccessorFn: (Task row, _) => '${row.taskvalue}',
      ),
    );

  }

   CovidTodayResult _dataFromWebAPI;
  @override
  void initState(){
    super.initState();
    _seriesData = List<charts.Series<Pollution, String>>();
    _seriesPieData = List<charts.Series<Task, String>>();
    print('init state');
    getData();
    _generateData();
  }
  Future<void> getData() async{
    print('get data');
    var response = await http.get('https://covid19.th-stat.com/api/open/today');
    print(response.body);
    setState(() {
      _dataFromWebAPI = covidTodayResultFromJson(response.body);
    });
    

  }

  get editingController => null;

 
  @override
  Widget build(BuildContext context) {
    print('build');
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        
        child: Scaffold(
          backgroundColor: Color(0xFFB3E5FC),
          appBar: AppBar(
            backgroundColor: Colors.indigo,
      
            bottom: TabBar(
              indicatorColor: Color(0xff9962D0),
              tabs: [
                Tab(
                  icon: Icon(FontAwesomeIcons.solidChartBar),
                ),
                Tab(icon: Icon(FontAwesomeIcons.chartPie)),
                Tab(icon: Icon(FontAwesomeIcons.chartLine)),
              ],
            ),
            title: Text(''),
            actions: [
        // action button
        IconButton(
          icon: Image.asset('assets/icons/heart.png'),
          onPressed: () { },
        ),
      ],
            
          ),
          
          body: TabBarView(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (value) {
                  
                },
                controller: editingController,
                decoration: InputDecoration(
                    labelText: "Search",
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)))),
              ),
            ),
            
                        Text(
                            'รายงานภาพรวมข้อมูลของผู้ป่วย',style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold),),
                            Expanded(
                          child: charts.BarChart(
                            _seriesData,
                            animate: true,
                            barGroupingType: charts.BarGroupingType.grouped,
                            //behaviors: [new charts.SeriesLegend()],
                            animationDuration: Duration(seconds: 5),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Text(
                            'รายงานภาพรวมข้อมูลผู้ป่วยในโรงพยาบาล',style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold),),
                            SizedBox(height: 10.0,),
                         Expanded(
                          child: charts.PieChart(
                            _seriesPieData,
                            animate: true,
                            animationDuration: Duration(seconds: 5),
                             behaviors: [
                            new charts.DatumLegend(
                              outsideJustification: charts.OutsideJustification.endDrawArea,
                              horizontalFirst: false,
                              desiredMaxRows: 2,
                              cellPadding: new EdgeInsets.only(right: 4.0, bottom: 4.0),
                              entryTextStyle: charts.TextStyleSpec(
                                  color: charts.MaterialPalette.purple.shadeDefault,
                                  fontFamily: 'Georgia',
                                  fontSize: 11),
                            )
                      ],
                       defaultRenderer: new charts.ArcRendererConfig(
                              arcWidth: 100,
                             arcRendererDecorators: [
          new charts.ArcLabelDecorator(
              labelPosition: charts.ArcLabelPosition.inside)
        ])),
                    ),
                      ],
                  ),
                ),
              ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  child: Center(
                    child: Column(
                      children: <Widget>[
                          Text(
                            'รายงานภาพรวมข้อมูลของผู้ป่วยในประเทศ',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                            SizedBox(height: 10.0,),
          new Card(
          color: Colors.pink,
          child: ListTile(
            
            title: Text('ผู้ติดเชื้อสะสม',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
            subtitle: Text('${_dataFromWebAPI?.confirmed ?? "..."}'),

          ),
          ),
          new Card(
          color: Colors.green,
          child: ListTile(
            title: Text('หายแล้ว',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
            subtitle: Text('${_dataFromWebAPI?.recovered ?? "..."}'),

          ),
          ),
          new Card(
          color: Colors.blueAccent,
          child: ListTile(
            title: Text('รักษาอยู่ในโรงพยาบาล',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
            subtitle: Text('${_dataFromWebAPI?.hospitalized ?? "..."}'),

          ),
          ),
          new Card(
          color: Colors.transparent,
          child: ListTile(
            title: Text('เสียชีวิต',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
            subtitle: Text('${_dataFromWebAPI?.deaths ?? "..."}'),

          )
          ),
     
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



class Pollution {
  String place;
  int year;
  int quantity;

  Pollution(this.year, this.place, this.quantity);
}
class Task {
  String task;
  double taskvalue;
  Color colorval;

  Task(this.task, this.taskvalue, this.colorval);
}