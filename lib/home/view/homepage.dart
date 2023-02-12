import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_rating/home/controller/homeController.dart';
import 'package:movie_rating/home/model/Homemodel.dart';
import 'package:movie_rating/utils/api_http.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text("Movie Rating"),
        ),
        backgroundColor: Colors.black45,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextField(
                    textInputAction: TextInputAction.next,
                    controller: homeController.txtname,
                    cursorColor: Colors.teal,
                    decoration: InputDecoration(hintText: "Serch Movie",hintStyle: TextStyle(color: Colors.teal),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.teal),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.teal),
                      ),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          homeController.search();
                        },
                        child: Icon(
                          Icons.search,
                          color: Colors.teal,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              GetBuilder<HomeController>(
                builder: (controller) => FutureBuilder(
                  future: Api_http().movirateing(
                      controller.name == "" ? "hera pheri": "${controller.name}"),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      Homemodel h1 = snapshot.data;
                      return SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: SizedBox(
                                  height: 400,
                                  width: 300,
                                  child: Image.network(
                                    "${h1.d![1].i!.imageUrl}",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: 3,
                                width: double.infinity,
                                color: Colors.teal,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Movie               : ${h1.d![0].l}",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Actor, Actress : ${h1.d![0].s}",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Type                  : ${h1.d![0].qid}",
                                style: TextStyle(
                                    fontSize: 19.5, fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Release Year           : ${h1.d![0].y}",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                height: 20,
                              ), Container(
                                height: 1,
                                width: double.infinity,
                                color: Colors.teal,
                              ),

                            ],
                          ),
                        ),
                      );
                    } else if (snapshot.hasError) {
                      return Center(
                        child: Text("${snapshot.hasError}"),
                      );
                    }
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
