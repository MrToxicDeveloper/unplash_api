import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:insta_api/screens/home/controller/home_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Unplash API",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: FutureBuilder(
          future: controller.apiCalling(),
          builder: (context, snapshot) {
            if (controller.dataList.isNotEmpty) {
              return Padding(
                padding: const EdgeInsets.all(16),
                child: ListView.builder(
                  itemCount: controller.dataList.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text("${controller.dataList[index].title}"),
                    );
                  },
                ),
              );
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}
