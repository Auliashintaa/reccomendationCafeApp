import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reccomendation_cafe_app/app/data/controller/auth_controller.dart';
import 'package:reccomendation_cafe_app/app/widget/ReviewItem.dart';

import '../controllers/detail_controller.dart';

class DetailView extends GetView<DetailController> {
  final authCon = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFC19F77),
      body: SafeArea(
        child: GestureDetector(
          onTap: () {},
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                !context.isPhone
                    ? Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xFFA0A0A0),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16, 16, 16, 16),
                              child: Image.asset(
                                'assets/logo.png',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              'MooCow',
                              style: GoogleFonts.poppins(
                                  fontSize: 30, color: Colors.white),
                            ),
                          ],
                        ),
                      )
                    : Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xFFA0A0A0),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16, 16, 16, 16),
                              child: Image.asset(
                                'assets/logo.png',
                                width: 100,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              'MooCow',
                              style: GoogleFonts.poppins(
                                  fontSize: 30, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    !context.isPhone
                        ? Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                            child: Image.asset(
                              'assets/cafe1.png',
                              width: 600,
                              height: 300,
                              fit: BoxFit.cover,
                            ),
                          )
                        : Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                            child: Image.asset(
                              'assets/cafe1.png',
                              width: 350,
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                          ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                  child: Container(
                    height: 300,
                    width: double.infinity,
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Moocow',
                              style: GoogleFonts.poppins(fontSize: 24),
                            ),
                            Container(
                              width: 80,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Color(0xFFB78951),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '4.5',
                                    style: GoogleFonts.poppins(),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Color(0xFF717171),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(
                                Icons.location_on,
                                color: Colors.black,
                                size: 24,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16, 16, 16, 16),
                              child: Text(
                                'Jl. DR. Cipto Mangunkusumo, Pekiringan,\n Kec. Kesambi, Kota Cirebon, Jawa Barat.',
                                style: GoogleFonts.poppins(),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Color(0xFF717171),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(
                                Icons.access_time,
                                color: Colors.black,
                                size: 24,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16, 16, 16, 16),
                              child: Text(
                                'Buka pukul 10.00 - 22.00',
                                style: GoogleFonts.poppins(),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Color(0xFF717171),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(
                                Icons.menu_book_rounded,
                                color: Colors.black,
                                size: 24,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16, 16, 16, 16),
                              child: Text(
                                'Harga menu terjangkau',
                                style: GoogleFonts.poppins(),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Color(0xFF717171),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(
                                Icons.wifi,
                                color: Colors.black,
                                size: 24,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16, 16, 16, 16),
                              child: Text(
                                'Free Wi-Fi',
                                style: GoogleFonts.poppins(),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    !context.isPhone
                        ? ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFFB78951)),
                            onPressed: () {
                              addEditReview(
                                  context: context, type: 'Add', docId: '');
                            },
                            child: Container(
                              height: 50,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Tulis Review',
                                    style: GoogleFonts.poppins(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16, 0, 0, 0),
                                    child: Icon(
                                      Icons.chat_bubble_outline,
                                      color: Colors.white,
                                      size: 25,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        : ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFFB78951)),
                            onPressed: () {
                              addEditReview(
                                  context: context, type: 'Add', docId: '');
                            },
                            child: Container(
                              height: 50,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Tulis Review',
                                    style: GoogleFonts.poppins(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16, 0, 0, 0),
                                    child: Icon(
                                      Icons.chat_bubble_outline,
                                      color: Colors.white,
                                      size: 25,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                    Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                        child: Container(
                          width: 230,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color(0xFFB78951),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Lihat Menu',
                                style: GoogleFonts.poppins(
                                    fontSize: 24, color: Colors.white),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                                child: Icon(
                                  Icons.restaurant_menu_rounded,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
                          child: Text(
                            'My Review',
                            style: GoogleFonts.poppins(fontSize: 24),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
                    stream:
                        authCon.streamUsers(authCon.auth.currentUser!.email!),
                    builder: (context, snapshot) {
                      return ListView.builder(
                        clipBehavior: Clip.antiAlias,
                        shrinkWrap: true,
                        itemCount: 8,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onLongPress: () {
                              addEditReview(
                                  context: context,
                                  type: 'Update',
                                  docId: '2023-02-20T11:14:30.270251');
                            },
                            child: Container(
                              width: double.infinity,
                              height: 200,
                              decoration: BoxDecoration(),
                              child: ReviewItem(
                                  gambar: 'assets/avatar.png',
                                  review: 'Mantap Banget'),
                            ),
                          );
                        },
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }

  addEditReview({BuildContext? context, String? type, String? docId}) {
    final authCon = Get.find<AuthController>();
    Get.bottomSheet(
      SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          margin: context!.isPhone
              ? EdgeInsets.zero
              : EdgeInsets.only(right: 150, left: 150),
          height: Get.height,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            color: Colors.white,
          ),
          child: Form(
              key: controller.formKey,
              autovalidateMode: AutovalidateMode.always,
              child: Column(
                children: [
                  Text(
                    'Tulis Review',
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.multiline,
                    maxLines: 5,
                    decoration: InputDecoration(
                      hintText: 'Isi Ulasan',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    controller: controller.reviewController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'cannot be empty';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  ConstrainedBox(
                    constraints:
                        BoxConstraints.tightFor(width: Get.width, height: 40),
                    child: ElevatedButton(
                      onPressed: () {
                        controller.saveUpdateTask(
                          review: controller.reviewController.text,
                          type: type,
                          docId: docId,
                        );
                      },
                      child: Text(type!),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
