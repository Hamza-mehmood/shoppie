import 'package:flutter/Material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white70,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const Padding(padding: EdgeInsets.only(top: 60)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(
                    Icons.arrow_back,
                    color: Colors.blueGrey,
                  ),
                  Icon(
                    Icons.shopping_cart,
                    color: Colors.blueGrey,
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.18,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                            width: 50,
                            height: 25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color.fromRGBO(255, 121, 63, 1),
                            ),
                            child: const Center(
                              child: Text(
                                "-30%",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            )),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.2,
                          height: MediaQuery.of(context).size.height * 0.08,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: NetworkImage(
                                    "https://cpng.pikpng.com/pngl/s/186-1861226_nike-running-shoes-transparent-image-clipart.png")),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ],
                    ),

                    //second column
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: const [
                        Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                        Text(
                          "&180.04",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                        Text(
                          "Nike Orange",
                          style:
                              TextStyle(fontSize: 17, color: Colors.blueGrey),
                        )
                      ],
                    ),
                    const Padding(
                        padding: EdgeInsets.only(
                      left: 30,
                    )),
                    Column(
                      children: [
                        const SizedBox(
                          height: 35,
                        ),
                        Container(
                            height: MediaQuery.of(context).size.height * 0.06,
                            width: MediaQuery.of(context).size.width * 0.15,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromRGBO(255, 121, 63, 1),
                            ),
                            child: const Center(
                              child: Text(
                                "Buy",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ))
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://www.pngall.com/wp-content/uploads/2016/06/Adidas-Shoes.png"))),
              ),
              const SizedBox(
                height: 25,
              ),
              //last container
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Text(
                            "&125.00",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: const [Icon(Icons.favorite)],
                          )
                        ],
                      ),
                      Row(
                        children: const [
                          Text(
                            "Nike Air Shoes",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: const [
                          Text(
                            "Choose size",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          )
                        ],
                      ),
                      Container(
                        height: 10,
                        width: 50,
                        child: ListView(
                          children: [
                            Row(
                              children: const [
                                Text("data"),
                                Text("data"),
                                Text("data"),
                                Text("data"),
                                Text("data"),
                              ],
                            )
                          ],
                          scrollDirection: Axis.horizontal,
                        ),
                      )
                    ],
                  ),
                ),
                // child: Column(
                //   children: [
                //     const Padding(
                //         padding: EdgeInsets.symmetric(
                //       horizontal: 10,
                //     )),
                //     Row(
                //       children: [
                //         const SizedBox(
                //           height: 30,
                //         ),
                //         const Text(
                //           "&125.00",
                //           style: TextStyle(
                //             fontWeight: FontWeight.bold,
                //             fontSize: 20,
                //           ),
                //         ),
                //         Row(
                //           children: [
                //             const Text(
                //               "Nike Air Shoes",
                //               style: TextStyle(
                //                   fontWeight: FontWeight.bold,
                //                   fontSize: 20,
                //                   color: Colors.blueGrey),
                //             ),
                //           ],
                //         ),
                //         const SizedBox(
                //           height: 20,
                //         ),
                //         Row(
                //           children: [
                //             const Text(
                //               "Choose Size",
                //               style: TextStyle(
                //                   fontSize: 20, fontWeight: FontWeight.bold),
                //             )
                //           ],
                //         ),
                //         Row(
                //           children: [
                //             ElevatedButton(
                //                 onPressed: () {},
                //                 child: Center(
                //                   child: Text("data"),
                //                 ))
                //           ],
                //         )
                //       ],
                //     ),
                //     const Padding(
                //         padding: EdgeInsets.symmetric(horizontal: 60)),
                //     Row(
                //       children: [
                //         const SizedBox(
                //           height: 25,
                //         ),
                //         Container(
                //           height: MediaQuery.of(context).size.height * 0.09,
                //           width: MediaQuery.of(context).size.width * 0.18,
                //           decoration: const BoxDecoration(
                //             shape: BoxShape.circle,
                //             color: Color.fromRGBO(255, 121, 63, 1),
                //           ),
                //           child: const Center(
                //             child: Icon(
                //               Icons.favorite,
                //               color: Colors.red,
                //             ),
                //           ),
                //         )
                //       ],
                //     ),
                //   ],
                // ),
              ),
            ],
          ),
        ));
  }
}
