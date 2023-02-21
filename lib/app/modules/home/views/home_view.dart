import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:reccomendation_cafe_app/app/data/controller/auth_controller.dart';
import 'package:reccomendation_cafe_app/app/style/AppColor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reccomendation_cafe_app/app/widget/CardItem.dart';
import 'package:reccomendation_cafe_app/app/widget/RekomenItem.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final authC = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.primaryColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: !context.isPhone
                        ? Row(
                            children: [
                              Icon(Ionicons.notifications),
                              SizedBox(
                                width: 5,
                              ),
                              Text("Notifikasi"),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(Ionicons.help),
                              SizedBox(
                                width: 5,
                              ),
                              Text("Bantuan"),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(Ionicons.globe),
                              SizedBox(
                                width: 5,
                              ),
                              Text("Bahasa (Indonesia)"),
                            ],
                          )
                        : SizedBox(),
                  )
                ],
              ),
              Row(
                children: [
                  Image(image: AssetImage("assets/logo.png"), height: 100),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: EdgeInsets.only(left: 20, right: 15),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blueAccent),
                        ),
                        prefixIcon: Icon(
                          Ionicons.search,
                          color: AppColor.primaryColor,
                        ),
                        hintText: "Search",
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.defaultDialog(
                          title: "Sign Out",
                          content: const Text("Are You Sure Want To Sign Out?"),
                          cancel: ElevatedButton(
                            onPressed: () => Get.back(),
                            child: const Text("Cancel"),
                          ),
                          confirm: ElevatedButton(
                              onPressed: () => authC.logout(),
                              child: const Text("Sign Out")));
                    },
                    child: Row(
                      children: [
                        Text(
                          "Log Out",
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        const SizedBox(width: 5),
                        const Icon(
                          Ionicons.log_out_outline,
                          color: Colors.black,
                          size: 25,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                height: 250,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      child: Image(image: AssetImage("assets/cafe1.png")),
                    ),
                    SizedBox(width: 12),
                    Container(
                      child: Image(image: AssetImage("assets/cafe2.png")),
                    ),
                    SizedBox(width: 12),
                    Container(
                      child: Image(image: AssetImage("assets/cafe3.png")),
                    ),
                    SizedBox(width: 12),
                  ],
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        const Icon(
                          Ionicons.home,
                          size: 35,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Tempat Tongkrongan Cirebon",
                          style: GoogleFonts.poppins(),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 300,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        CardItem(
                          gambar: 'assets/cafe1.png',
                          alamat:
                              'Jl. DR. Cipto Mangunkusumo, Pekiringan, Kec. Kesambi, Kota Cirebon',
                        ),
                        CardItem(
                          gambar: 'assets/cafe2.png',
                          alamat:
                              'Jl. DR. Cipto Mangunkusumo, Pekiringan, Kec. Kesambi, Kota Cirebon',
                        ),
                        CardItem(
                          gambar: 'assets/cafe1.png',
                          alamat:
                              'Jl. DR. Cipto Mangunkusumo, Pekiringan, Kec. Kesambi, Kota Cirebon',
                        ),
                        CardItem(
                          gambar: 'assets/cafe3.png',
                          alamat:
                              'Jl. DR. Cipto Mangunkusumo, Pekiringan, Kec. Kesambi, Kota Cirebon',
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Ionicons.fast_food,
                            size: 35,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Menu Rekomendasi Kami",
                            style: GoogleFonts.poppins(),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 400,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        RekomenItem(
                            gambar: 'assets/nasi_goreng.png',
                            nama: 'Nasi Goreng Ayam',
                            deskripsi:
                                'Perpaduan nikmat antara gurihnya nasi goreng ayam berpadu dengan lembutnya telur omelet.',
                            harga: 'Rp 25.000'),
                        RekomenItem(
                            gambar: 'assets/roti.png',
                            nama: 'Roti Bakar Coklat keju',
                            deskripsi:
                                'Renyahnya Roti bakar berpadu dengan nikmatnya Chocolate dan gurihnya Keju, bersatu meningkatkan Mood kamu yang menikmatinya.',
                            harga: 'Rp 15.000'),
                        RekomenItem(
                            gambar: 'assets/minuman.png',
                            nama: 'Moo Mix Blend',
                            deskripsi:
                                'Segarnya susu murni berpadu dengan nikmatnya coklat yang bertabur Chocochips semakin membuat perpaduan ini menjadi sempurna.',
                            harga: 'Rp 17.000'),
                        RekomenItem(
                            gambar: 'assets/greentea.png',
                            nama: 'Green Tea',
                            deskripsi:
                                'Segarnya susu murni berpadu dengan nikmatnya green tea',
                            harga: 'Rp 20.000'),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
