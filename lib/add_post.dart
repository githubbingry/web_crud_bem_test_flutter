// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_crud_bem_test/home_page.dart';

class AddPost extends StatefulWidget {
  const AddPost({
    super.key,
  });

  @override
  State<AddPost> createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  void _submitPost() {
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 47, 141, 255),
          title: const Text(
            "ADD DATA",
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () {
                Get.offAll(() => const MyHomePage());
              }),
        ),
        body: Column(
          children: [
            //Nama
            Padding(
              padding: const EdgeInsets.all(7),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(12)),
                  hintText: "Nama",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(7),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(12)),
                  hintText: "NIM",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(7),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(12)),
                  hintText: "Dinas",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(7),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(12)),
                  hintText: "Divisi",
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              alignment: Alignment.bottomCenter,
              child: FloatingActionButton(
                elevation: 0,
                backgroundColor: Colors.lightBlue,
                onPressed: _submitPost,
                tooltip: 'Submit',
                child: const Icon(
                  Icons.save_as_rounded,
                  color: Colors.black,
                ),
              ),
            )
          ],
        ));
  }
}
