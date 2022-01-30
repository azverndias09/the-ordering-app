import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  Widget singleProductCard() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: const Color(0xffffbe8c),
        borderRadius: BorderRadius.circular(10),
      ),
      height: 240,
      width: 170,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 487 / 430,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  alignment: FractionalOffset.center,
                  image: NetworkImage('https://i.ibb.co/nf385V7/sausage1.png'),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Chilli Pork',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      )),
                  const SizedBox(
                    height: 2,
                  ),
                  const Text('150 ₹/500 gms',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      )),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 5),
                          height: 30,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Color(0xFFFD67D3E),
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Expanded(
                            child: Row(
                              children: const [
                                Expanded(
                                  child: Text(
                                    '500 GMS',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.pink,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: Container(
                          height: 30,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Color(0xFFFD67D3E),
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Icon(
                                Icons.remove,
                                size: 15,
                                color: Color(0xff470d21),
                              ),
                              Text("1"),
                              Icon(
                                Icons.add,
                                size: 15,
                                color: Color(0xff470d21),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffff9e4d4),
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: const Color(0xffD67D3E),
        elevation: 0,
        title: const Text('Home'),
        actions: const [
          CircleAvatar(
            backgroundColor: Color(0xffd4d181),
            radius: 16,
            child: Icon(
              Icons.search_outlined,
              size: 17,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 7),
            child: CircleAvatar(
              backgroundColor: Color(0xffd4d181),
              radius: 16,
              child: Icon(
                Icons.shopping_cart,
                size: 17,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: AssetImage('assets/images/discount.png'),
                  ),
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Pork Meat'),
                  Text(
                    'View All',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  singleProductCard(),
                  singleProductCard(),
                  singleProductCard(),
                  singleProductCard(),
                  singleProductCard(),
                  singleProductCard(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Chicken Meat'),
                  Text(
                    'View All',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  singleProductCard(),
                  singleProductCard(),
                  singleProductCard(),
                  singleProductCard(),
                  singleProductCard(),
                  singleProductCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
