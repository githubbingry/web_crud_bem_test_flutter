import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_crud_bem_test/add_post.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // final _namaController = TextEditingController();
  // final _nimController = TextEditingController();
  // final _dinasController = TextEditingController();
  // final _divisiController = TextEditingController();

  // void _addPost() {
  //   setState(() {
  //     Get.to(() => const AddPost());
  //   });
  // }

  void _editPost() {
    setState(() {});
  }

  void _deletePost() {
    setState(() {});
  }

  // Future addUserDetails(
  //     String nama, String nim, String dinas, String divisi) async {
  //   await FirebaseFirestore.instance
  //       .collection("users")
  //       .add({"nama": nama, "nim": nim, "dinas": dinas, "divisi": divisi});
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 47, 141, 255),
        title: const Text(
          "WEB CRUD BEM TEST",
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
      ),
      body: Container(
        alignment: Alignment.topCenter,
        margin: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              children: [
                Table(
                  // defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
                  border: TableBorder.all(),
                  columnWidths: const {
                    0: FixedColumnWidth(200),
                    1: FixedColumnWidth(100),
                    2: FixedColumnWidth(100),
                    3: FixedColumnWidth(100),
                    4: FixedColumnWidth(100),
                    5: FixedColumnWidth(100),
                  },
                  children: [
                    const TableRow(
                      children: [
                        Text(
                          "NAMA",
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          " NIM",
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          " DINAS",
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          " DIVISI",
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          " EDIT",
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          " DELETE",
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(3),
                          child: const Text(
                            " NAMA",
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(3),
                          child: const Text(
                            " NIM",
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(3),
                          child: const Text(
                            " DINAS",
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(3),
                          child: const Text(
                            " DIVISI",
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(5),
                          height: 25,
                          width: 25,
                          child: FloatingActionButton(
                            elevation: 0,
                            backgroundColor: Colors.lightBlue,
                            onPressed: _editPost,
                            tooltip: 'Edit',
                            child: const Icon(
                              Icons.edit,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(5),
                          height: 25,
                          width: 25,
                          child: FloatingActionButton(
                            elevation: 0,
                            backgroundColor:
                                const Color.fromARGB(255, 255, 5, 0),
                            onPressed: _deletePost,
                            tooltip: 'Delete',
                            child: const Icon(
                              Icons.delete,
                              color: Colors.black,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  alignment: Alignment.bottomCenter,
                  child: FloatingActionButton(
                    elevation: 0,
                    backgroundColor: Colors.lightBlue,
                    onPressed: () {
                      Get.to(() => const AddPost());
                    },
                    tooltip: 'Add',
                    child: const Icon(
                      Icons.add,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
