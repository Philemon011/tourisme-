import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFeef2f2),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 178, 232, 228),
                            radius: 30,
                            backgroundImage:
                                AssetImage("lib/images/avatar.jpg")),
                        SizedBox(
                          width: 8,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Ku do gbe nu Etounde Filemɔn",
                              style: TextStyle(
                                  color: Color(0xFF005B54),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 1,
                            ),
                            Text(
                              "Fitɛ a xwe egbe ?",
                              style: TextStyle(color: Color(0xFF676565)),
                            )
                          ],
                        )
                      ],
                    ),
                    Stack(
                      children: [
                        Icon(
                          Icons.notifications_outlined,
                          size: 30,
                          color: Color(0xFF676565),
                        ),
                        Positioned(
                            left: 0,
                            child: CircleAvatar(
                              radius: 4,
                              backgroundColor: Colors.red,
                            ))
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                      color: const Color(0xFFffffff),
                      borderRadius: BorderRadius.circular(50)),
                  height: 50,
                  child: const Row(
                    children: [
                      Icon(Icons.search),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Kpɔ́n fí ɔ",
                        style: TextStyle(color: Color(0xFF676565)),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                SizedBox(
                  height: 50, // Définir une hauteur spécifique
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      myPadding(const Color(0xFFffffff),
                          const Color(0xFF005B54), "Bĭ"),
                      myPadding(const Color(0xFF005B54),
                          const Color(0xFFffffff), "Mɛ gègě yí wǎn na"),
                      myPadding(const Color(0xFF005B54),
                          const Color(0xFFffffff), "È kplɔ́n mɛ"),
                      myPadding(const Color(0xFF005B54),
                          const Color(0xFFffffff), "È ɖò yiyi wɛ"),
                      myPadding(const Color(0xFF005B54),
                          const Color(0xFFffffff), "È má"),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text("Kpɔ́n nǔ ɖagbeɖagbe ɖé",
                    style: TextStyle(
                        color: Color(0xFF005B54),
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
                const SizedBox(
                  height: 25,
                ),
                SizedBox(
                  height: 250,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      myContainer(
                          "lib/images/bio-guera-1.jpg", "Bio Guera sín ɖiɖe"),
                      myContainer(
                          "lib/images/unnamed.jpg", "Agoodjié sín ɖiɖe"),
                      myContainer(
                          "lib/images/amazone.jpg", "Bio Guera sín ɖiɖe"),
                      myContainer(
                          "lib/images/image6.jpg", "Bio Guera sín ɖiɖe"),
                      myContainer(
                          "lib/images/image7.jpg", "Bio Guera sín ɖiɖe"),
                      myContainer(
                          "lib/images/image8.jpg", "Bio Guera sín ɖiɖe"),
                      myContainer(
                          "lib/images/image9.jpg", "Bio Guera sín ɖiɖe"),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Kpɔ́n nǔ ɖagbeɖagbe ɖé",
                          style: TextStyle(
                              color: Color(0xFF005B54),
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                      Text("Kpɔ́n nǔ lɛ bǐ",
                          style: TextStyle(
                            color: Color(0xFF676565),
                          )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                SizedBox(
                  height: 400,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      listDesMers(
                          "lib/images/etoile.jpeg", "Sunví Vɔvɔ ", "Bénin"),
                      listDesMers(
                          "lib/images/image5.jpg", "Mer Rouge ", "Égypte"),
                      listDesMers(
                          "lib/images/image8.jpg", "Mer Caspienne ", "Russie"),
                      listDesMers("lib/images/image7.jpg",
                          "Mer de Chine méridionale ", "Taïwan"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding listDesMers(String image, String nomMer, String pays) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: SizedBox(
        height: 300,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 100, // Ajustez la hauteur du dégradé selon vos besoins
                decoration: const BoxDecoration(
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(12)),
                  gradient: LinearGradient(
                    colors: [
                      Colors.transparent,
                      Color.fromARGB(255, 24, 24, 24)
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 10, // Ajustez la position du texte selon vos besoins
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nomMer,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize:
                          17, // Ajustez la taille du texte selon vos besoins
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    pays,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 216, 215, 215),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding myPadding(Color couleur1, Color couleur2, String text) {
    return Padding(
      padding: const EdgeInsets.only(right: 25.0),
      child: Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
              color: couleur2, borderRadius: BorderRadius.circular(50)),
          child: Center(
              child: Text(
            text,
            style: TextStyle(color: couleur1),
          ))),
    );
  }

  Padding myContainer(String image, String imagePath) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Container(
        height: 250,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xFFffffff),
        ),
        child: Column(
          children: [
            Container(
              height: 180,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        imagePath,
                        style: const TextStyle(
                            color: Color(0xFF005B54),
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      const Text("Kútɔ̀nú",
                          style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF676565),
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  // const Column(
                  //   children: [
                  //     SizedBox(
                  //       height: 6,
                  //     ),
                  //     Text("2000f",
                  //         style: TextStyle(
                  //             color: Color(0xFF005B54),
                  //             fontWeight: FontWeight.bold)),
                  //     Text("/mɛ"),
                  //   ],
                  // ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
