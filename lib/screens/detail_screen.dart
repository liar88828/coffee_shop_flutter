import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  String img;
  String title;
  DetailScreen(this.title, this.img, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FilledButton(
                style: FilledButton.styleFrom(
                  backgroundColor: Colors.grey[800],
                  minimumSize: Size(300, 55),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                ),
                onPressed: () {},
                child: Text(
                  'Add To Cart',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white),
                )),
            IconButton(
                style: IconButton.styleFrom(
                  backgroundColor: Colors.orange[800],
                  minimumSize: Size(48, 48),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                ),
                onPressed: () {},
                icon: Icon(
                  Icons.favorite_outline,
                  color: Colors.white,
                ))
          ],
        ),
      ),
      appBar: AppBar(leading: BackButton()),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.network(
              img,
              width: MediaQuery.of(context).size.width / 1.2,
            ),
          ),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(
              left: 25,
              right: 25,
            ),
            //  Title
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Best Coffee',
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.4),
                        letterSpacing: 3)),
                const SizedBox(height: 30),

                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 30, letterSpacing: 1, color: Colors.white),
                ),
                const SizedBox(height: 30),
                //  Count
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.white.withOpacity(.5),
                          )),
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.remove)),
                          const Text('2'),
                          IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                        ],
                      ),
                    ),
                    const Text(
                      '\$ 30.00',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  'transportation earlier gold mile sunlight careful does source half keep characteristic no street syllable world rope interest knife home table ship chicken sleep however',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 20),
                const Row(
                  children: [
                    Text(
                      'Volume: ',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '16 ml ',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
