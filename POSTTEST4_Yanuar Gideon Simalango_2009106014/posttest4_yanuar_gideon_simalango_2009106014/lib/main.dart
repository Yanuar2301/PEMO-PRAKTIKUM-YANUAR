import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: pageawal(),
    );
  }
}

class pageawal extends StatefulWidget {
  const pageawal({Key? key}) : super(key: key);

  @override
  State<pageawal> createState() => awal();
}

class awal extends State<pageawal> {
  @override
  Widget build(BuildContext context) {
    var panjang = MediaQuery.of(context).size.height;
    var lebar = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          height: panjang,
          width: lebar,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/awal.png"),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Center(
                      child: Text(
                        "StyleON",
                        style: Theme.of(context).textTheme.headline5?.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 55),
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                child: Container(
                  margin: EdgeInsets.only(top: 600, left: 150),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (_) {
                        return pageawall();
                      }));
                    },
                    child: const Text(
                      ">",
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black.withOpacity(0.1),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class pageawall extends StatefulWidget {
  const pageawall({Key? key}) : super(key: key);

  @override
  State<pageawall> createState() => MyHomePage();
}

class MyHomePage extends State<pageawall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(
          child: ListView(
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Center(
                  child: Text(
                    "MyFashion",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Profil"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) {
                        return pageprofil();
                      },
                    ),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) {
                        return pageawall();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        body: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 40,
                ),
                Text(
                  "MyFashion",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              isi(
                                  tulisan: "",
                                  harga: "",
                                  gambar: "assets/celana.png"),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pushReplacement(context,
                                      MaterialPageRoute(builder: (_) {
                                    return pageawall();
                                  }));
                                },
                                child: const Text(
                                  "Celana",
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.blue.withOpacity(0.1),
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              isi(
                                  tulisan: "",
                                  harga: "",
                                  gambar: "assets/topi.png"),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pushReplacement(context,
                                      MaterialPageRoute(builder: (_) {
                                    return pageawall();
                                  }));
                                },
                                child: const Text(
                                  "Topi",
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.blue.withOpacity(0.1),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              isi(
                                  tulisan: "",
                                  harga: "",
                                  gambar: "assets/kemeja.png"),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pushReplacement(context,
                                      MaterialPageRoute(builder: (_) {
                                    return pageawall();
                                  }));
                                },
                                child: const Text(
                                  "Kemeja",
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.blue.withOpacity(0.1),
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              isi(
                                  tulisan: "",
                                  harga: "",
                                  gambar: "assets/hoodie.png"),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pushReplacement(context,
                                      MaterialPageRoute(builder: (_) {
                                    return landingpage();
                                  }));
                                },
                                child: const Text(
                                  "Hoodie",
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.blue.withOpacity(0.1),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}

class pagebayar extends StatefulWidget {
  const pagebayar({Key? key}) : super(key: key);

  @override
  State<pagebayar> createState() => purchase();
}

class purchase extends State<pagebayar> {
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

class pageprofil extends StatefulWidget {
  const pageprofil({Key? key}) : super(key: key);

  @override
  State<pageprofil> createState() => profil();
}

class profil extends State<pageprofil> {
  String nama = "", alamat = "";
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
                "PROFIL",
                style: TextStyle(
                  fontSize: 30,
                  height: 3,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 15, 56, 85),
                ),
              ),
              SizedBox(
                height: 50,
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
              TextButton(
                onPressed: () {
                  setState(() {
                    nama = namapemesan.text;
                    alamat = alamatpemesan.text;
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
                "PROFIL",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 15, 56, 85),
                ),
              ),
              SizedBox(
                height: 20,
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
                          "Nama Pemesan                    $nama\nAlamat Pemesan                  $alamat",
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
              SizedBox(height: 130),
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
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(6),
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

class landingpage extends StatelessWidget {
  const landingpage({Key? key}) : super(key: key);

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
                    Column(
                      children: [
                        isi(
                          gambar: "assets/barang1.png",
                          tulisan:
                              "\n\n\n\n\n\n\n\n\n\n    Varsity Jacket \n    MLBNY\n",
                          harga: "    IDR 200.000,00-",
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (_) {
                              return pagebayar();
                            }));
                          },
                          child: const Text(
                            "Pesan",
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blue.withOpacity(0.1),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        isi(
                          gambar: "assets/barang2.png",
                          tulisan:
                              "\n\n\n\n\n\n\n\n\n\n    Denim Break The \n    Limit Fosarte\n",
                          harga: "    IDR 300.000,00-",
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (_) {
                              return pagebayar();
                            }));
                          },
                          child: const Text(
                            "Pesan",
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blue.withOpacity(0.1),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        isi(
                          gambar: "assets/barang3.png",
                          tulisan:
                              "\n\n\n\n\n\n\n\n\n\n    Coach Jacket \n    Idaina Kaeru\n",
                          harga: "    IDR 350.000,00-",
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (_) {
                              return pagebayar();
                            }));
                          },
                          child: const Text(
                            "Pesan",
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blue.withOpacity(0.1),
                          ),
                        )
                      ],
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
