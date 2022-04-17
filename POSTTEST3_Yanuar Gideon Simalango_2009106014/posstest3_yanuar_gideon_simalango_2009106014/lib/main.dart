import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _purchase();
}

class _purchase extends State<MyHomePage> {
  int angka = 0;
  int angkafix = 0;
  int harga_beli = 200000;
  int harga_jual = 0;
  String nama = "", alamat = "";
  String ukuran = "";
  String ukuranpesanan = "";
  TextEditingController namapemesan = TextEditingController();
  TextEditingController alamatpemesan = TextEditingController();

  get children => null;

  get child => null;

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
                "PURCHASE",
                style: TextStyle(
                  fontSize: 30,
                  height: 3,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 15, 56, 85),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              isi(
                gambar: "assets/barang3.png",
                tulisan: "\n\n\n\n\n\n\n\n\n\n    Varsity Jacket \n    MLBNY\n",
                harga: "    IDR 200.000,00-",
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 95,
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        angka--;
                      });
                    },
                    child: Text("Kurang"),
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xffD0CAB2),
                      primary: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "$angka",
                    style: TextStyle(
                      color: Color.fromARGB(255, 15, 56, 85),
                      fontSize: 25,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        angka++;
                      });
                    },
                    child: Text("Tambah"),
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xffD0CAB2),
                      primary: Color.fromARGB(255, 0, 0, 0),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: TextFormField(
                  controller: namapemesan,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Nama Pemesan",
                      prefixIcon: Icon(Icons.person)),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: TextFormField(
                  controller: alamatpemesan,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Alamat Pemesan",
                      prefixIcon: Icon(Icons.map)),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "UKURAN",
                style: TextStyle(
                  color: Color.fromARGB(255, 15, 56, 85),
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          ukuran = "S";
                        });
                      },
                      child: Text("S"),
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xffD0CAB2),
                        primary: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          ukuran = "M";
                        });
                      },
                      child: Text("M"),
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xffD0CAB2),
                        primary: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          ukuran = "L";
                        });
                      },
                      child: Text("L"),
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xffD0CAB2),
                        primary: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          ukuran = "XL";
                        });
                      },
                      child: Text("XL"),
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xffD0CAB2),
                        primary: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          ukuran = "XXL";
                        });
                      },
                      child: Text("XXL"),
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xffD0CAB2),
                        primary: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    nama = namapemesan.text;
                    alamat = alamatpemesan.text;
                    harga_jual = angka * harga_beli;
                    ukuranpesanan = ukuran;
                    angkafix = angka;
                  });
                },
                child: Text("Submit"),
                style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 70, 135, 189),
                    primary: Color.fromARGB(255, 0, 0, 0),
                    minimumSize: Size(350, 30)),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "STRUK PESANAN",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 15, 56, 85),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Varsity Jacket MLBNY",
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 15, 56, 85),
                ),
              ),
              Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          "Nama Pemesan                    $nama\nAlamat Pemesan                  $alamat\nUkuran Pesanan                   $ukuranpesanan\nJumlah Pesanan                   $angkafix\nTotal Belanja                          Rp.$harga_jual",
                          style: TextStyle(
                            fontSize: 20,
                            height: 3,
                            color: Color.fromARGB(255, 15, 56, 85),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text("Designed by Yanuar Gideon Simalango")
            ],
          ),
        ],
      ),
    );
  }
}

class isi extends StatelessWidget {
  const isi(
      {Key? key,
      required this.tulisan,
      required this.harga,
      // required this.size,
      required this.gambar})
      : super(key: key);

  final String tulisan;
  final String gambar;
  final String harga;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            width: 190,
            height: 230,
            margin: EdgeInsets.only(right: 20, left: 20),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(gambar)),
              color: Color(0xffD0CAB2),
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
