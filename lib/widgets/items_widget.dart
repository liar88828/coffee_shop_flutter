import 'package:dribble_clone/screens/detail_screen.dart';
import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget {
  // const ItemsWidget({super.key});

  List img = [
    [
      'Latte',
      'https://t4.ftcdn.net/jpg/01/05/90/77/360_F_105907729_4RzHYsHJ2UFt5koUI19fc6VzyFPEjeXe.jpg',
    ],
    [
      'Expresso',
      'https://t4.ftcdn.net/jpg/01/16/61/93/360_F_116619399_YA611bKNOW35ffK0OiyuaOcjAgXgKBui.jpg',
    ],
    [
      'Black Coffee',
      'https://t4.ftcdn.net/jpg/01/05/90/77/360_F_105907729_4RzHYsHJ2UFt5koUI19fc6VzyFPEjeXe.jpg',
    ],
    [
      'Cold Coffee',
      'https://t4.ftcdn.net/jpg/01/16/61/93/360_F_116619399_YA611bKNOW35ffK0OiyuaOcjAgXgKBui.jpg',
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        childAspectRatio: (150 / 200),
        children: [
          for (int i = 0; i < img.length; i++)
            Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.withOpacity(.1),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.4),
                          spreadRadius: 1,
                          blurRadius: 8)
                    ]),
                child: Column(children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: Image.network(
                        img[i][1],
                        width: 120,
                        height: 120,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(bottom: 1),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  img[i][0],
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                const SizedBox(height: 1),
                                const Text("Best Coffee",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white60,
                                    ))
                              ]))),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('\$40',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.white)),
                        IconButton(
                          style: IconButton.styleFrom(
                            backgroundColor: Colors.orange,
                          ),
                          onPressed: () {
                            debugPrint('test');
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        DetailScreen(img[i][0], img[i][1])));
                          },
                          icon: const Icon(Icons.add),
                          color: Colors.black,
                        ),
                      ],
                    ),
                  )
                ]))
        ]);
  }
}
