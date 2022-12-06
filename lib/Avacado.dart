import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Avacado extends StatefulWidget {
  const Avacado({Key? key}) : super(key: key);

  @override
  State<Avacado> createState() => _AvacadoState();
}

class _AvacadoState extends State<Avacado> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {}, child: const Text("Yes, I'm shure")),
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      // return Dialog(
                      //   child: Container(
                      //     decoration: BoxDecoration(
                      //
                      //     ),
                      //     width: 200,
                      //     height: 200,
                      //     child: Center(child: Text("Hush kelibsiz :)")),
                      //   ),
                      // );
                      return AlertDialog(
                        title: const Text("Tanlang"),
                        content:
                            const Text("Avatarni rasmini o'zgartirish uchun"),
                        actions: [
                          ElevatedButton(
                              onPressed: () {},
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Icon(Icons.camera_alt),
                                  const Text("Camera"),
                                ],
                              )),
                        ],
                      );
                    });
              },
              child: const Text("Dialog"),
            ),
            ElevatedButton(
              onPressed: () {
                showCupertinoDialog(
                    context: context,
                    builder: (context) {
                      return CupertinoAlertDialog(
                        title: const Text("Tanlang"),
                        actions: [
                          CupertinoButton(
                              child: const Text("Camera"),
                              onPressed: () {
                                Navigator.pop(context);
                              }),
                          CupertinoButton(
                              child: const Text("Galereya"),
                              onPressed: () {
                                Navigator.pop(context);
                              }),
                          CupertinoButton(
                              child: const Text("Add"),
                              onPressed: () {
                                Navigator.pop(context);
                              }),
                        ],
                      );
                    });
              },
              child: const Text("Tugma"),
            ),
            Builder(builder: (context) {
              return ElevatedButton(
                  onPressed: () {
                    showBottomSheet(
                        context: context,
                        builder: (context) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: double.infinity,
                              height: 200,
                              color: Colors.green.shade100,
                              child: Column(
                                children: [
                                  const Text("Tanlash"),
                                  const Text("Camera"),
                                  const Text("Tanlash"),
                                ],
                              ),
                            ),
                          );
                        });
                  },
                  child: const Text("bottom sheet"));
            }),
            ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                      backgroundColor: Colors.yellow,
                      context: context,
                      builder: (context) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 60,
                            height: 200,
                            color: Colors.blue.shade100,
                          ),
                        );
                      });
                },
                child: const Text("modal bottom sheet")),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return Dialog(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 200,
                              width: 200,
                              color: Colors.white,
                              padding: const EdgeInsets.all(8),
                              child: const Center(
                                  child: Text(
                                      "This transaction cannot be reversed. Are you sure you want to delete the template? ",
                                    style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 12,
                                    ),
                                  ),
                              ),
                            ),
                          ),
                        );
                      });
                },
                child: const Text("Yes, I'm shure")),
          ],
        ),
      ),
    );
  }
}
