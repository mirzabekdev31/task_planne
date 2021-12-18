import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static final String id="home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            pinned: true,
            snap: false,
            floating: true,
            expandedHeight: 190.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                //child: Center(child: Text("Hello")),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(40),
                      bottomLeft: Radius.circular(40),
                  ),
                  color: Colors.orange[200],
                ),
                child: Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new CircularPercentIndicator(
                        radius: 100.0,
                        lineWidth: 5.0,
                        percent: 0.6,
                        animation: true,
                        center: new Container(
                          height: 90,
                          width: 90,
                          decoration: new BoxDecoration(
                            borderRadius: BorderRadius.circular(45),
                            image: new DecorationImage(
                              image: new ExactAssetImage("assets/images/per.jpg"),
                              fit: BoxFit.cover,
                              )
                          ),
                        ),
                        backgroundColor: Colors.yellow,
                        progressColor: Colors.red,
                        ),
                      SizedBox(width: 20,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Philip Mccoy",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),

                          Text("Project Manager",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),)
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            actions: [
              Icon(Icons.search)
            ],
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "My tasks",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(width: 210,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(35),
                                color: Colors.teal
                            ),
                            child: Icon(
                              Icons.article_outlined,color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            color: Colors.red[400]
                        ),
                        child: Icon(
                          Icons.watch_later_outlined,color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("To Do",style: TextStyle(color: Colors.black,fontSize: 23,fontWeight: FontWeight.bold),),
                          Text("5 tasks now * 1 started",style: TextStyle(color: Colors.grey,fontSize: 20),),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 30,),
                  Row(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            color: Colors.orange[400]
                        ),
                        child: Icon(
                          Icons.wb_sunny_outlined,color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("In Progress",style: TextStyle(color: Colors.black,fontSize: 23,fontWeight: FontWeight.bold),),
                          Text("1 tasks now * 1 started",style: TextStyle(color: Colors.grey,fontSize: 20),),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 30,),
                  Row(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            color: Colors.blue[800]
                        ),
                        child: Icon(
                          Icons.watch_later_outlined,color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Done",style: TextStyle(color: Colors.black,fontSize: 23,fontWeight: FontWeight.bold),),
                          Text("18 tasks now * 18 complited",style: TextStyle(color: Colors.grey,fontSize: 20),),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 60,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: 210,
                          width: 170,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            color: Colors.indigo[500],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.all(20),
                                child: CircularPercentIndicator(
                                  radius: 80.0,
                                  lineWidth: 5.0,
                                  percent: 0.25,
                                  animation: true,
                                  center: new Text(
                                    "25%",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  progressColor: Colors.white,
                                  backgroundColor: Colors.white10,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Medical App",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                                    Text("9 hours progress",style: TextStyle(color: Colors.grey,fontSize: 16),)
                                  ],
                                ),
                              ),
                            ],
                          )
                      ),
                      SizedBox(width: 25,),
                      Container(
                          height: 210,
                          width: 170,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            color: Colors.red[400],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.all(20),
                                child: CircularPercentIndicator(
                                  radius: 80.0,
                                  lineWidth: 5.0,
                                  percent: 0.75,
                                  animation: true,
                                  center: new Text(
                                    "75%",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  progressColor: Colors.white,
                                  backgroundColor: Colors.white10,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Medical App",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                                    Text("9 hours progress",style: TextStyle(color: Colors.grey,fontSize: 16),)
                                  ],
                                ),
                              ),
                            ],
                          )
                      ),
                    ],
                  ),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: 210,
                          width: 170,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            color: Colors.yellow[300],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.all(20),
                                child: CircularPercentIndicator(
                                  radius: 80.0,
                                  lineWidth: 5.0,
                                  percent: 0.8,
                                  animation: true,
                                  center: new Text(
                                    "80%",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  progressColor: Colors.white,
                                  backgroundColor: Colors.white10,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Medical App",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                                    Text("9 hours progress",style: TextStyle(color: Colors.grey,fontSize: 16),)
                                  ],
                                ),
                              ),
                            ],
                          )
                      ),
                      SizedBox(width: 25,),
                      Container(
                          height: 210,
                          width: 170,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            color: Colors.red[400],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.all(20),
                                child: CircularPercentIndicator(
                                  radius: 80.0,
                                  lineWidth: 5.0,
                                  percent: 0.6,
                                  animation: true,
                                  center: new Text(
                                    "60%",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  progressColor: Colors.white,
                                  backgroundColor: Colors.white10,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Medical App",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                                    Text("9 hours progress",style: TextStyle(color: Colors.grey,fontSize: 16),)
                                  ],
                                ),
                              ),
                            ],
                          )
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      drawer: Drawer(),
    );
  }
}
