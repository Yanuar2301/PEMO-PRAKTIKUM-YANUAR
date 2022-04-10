import 'package:flutter/material.dart';

class mainpage extends StatelessWidget {
  const mainpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff89B5AF),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "NEW COLLECTION",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  height: 3,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 15, 56, 85),
                ),
              ),
              Container(
                  width: 350,
                  height: 190,
                  margin: EdgeInsets.only(top: 35),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/awal1.png"),
                    ),
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xffD0CAB2),
                  )),
              Row(
                children: [
                  Text(
                    "\n\n     OUTERWEAR",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 15, 56, 85),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 20,
                    margin: EdgeInsets.only(top: 42, left: 190),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xffD0CAB2),
                    ),
                    child: Text(
                      "\More",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromARGB(255, 15, 56, 85),
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizeContainer(
                      isActive: true,
                      gambar: "assets/barang1.png",
                      tulisan:
                          "\n\n\n\n\n\n\n\n\n\n    Varsity Jacket \n    MLBNY\n",
                      harga: "    IDR 200.000,00-",
                    ),
                    SizeContainer(
                      gambar: "assets/barang2.png",
                      tulisan:
                          "\n\n\n\n\n\n\n\n\n\n    Denim Break The \n    Limit Fosarte\n",
                      harga: "    IDR 300.000,00-",
                    ),
                    SizeContainer(
                      gambar: "assets/barang3.png",
                      tulisan:
                          "\n\n\n\n\n\n\n\n\n\n    Coach Jacket \n    Idaina Kaeru\n",
                      harga: "    IDR 350.000,00-",
                    ),
                  ],
                ),
              ),
              SizedBox(height: 110),
              Text("Designed by Yanuar Gideon Simalango")
            ],
          )
        ],
      ),
    );
  }
}

class SizeContainer extends StatelessWidget {
  const SizeContainer(
      {Key? key,
      this.isActive = false,
      required this.tulisan,
      required this.harga,
      // required this.size,
      required this.gambar})
      : super(key: key);

  final bool isActive;
  final String tulisan;
  final String gambar;
  final String harga;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            width: 180,
            height: 230,
            margin: EdgeInsets.only(right: 20, left: 20),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(gambar)),
              color: isActive ? Color(0xffD0CAB2) : Colors.transparent,
              borderRadius: BorderRadius.circular(6),
              border: Border.all(
                width: 3,
                color: Color.fromARGB(255, 73, 92, 105),
              ),
            ),
            child: Row(
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: tulisan,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 15, 56, 85),
                          )),
                      TextSpan(
                          text: harga,
                          style: TextStyle(
                            color: Color.fromARGB(255, 15, 56, 85)
                                .withOpacity(0.7),
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
