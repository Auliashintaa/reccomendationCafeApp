import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reccomendation_cafe_app/app/data/controller/auth_controller.dart';

class ReviewItem extends StatelessWidget {
  final String gambar;
  final String review;

  const ReviewItem({
    Key? key,
    required this.gambar,
    required this.review,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authCon = Get.find<AuthController>();
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
      child: Container(
        width: 400,
        decoration: BoxDecoration(
          color: Color(0xFFE7D1B8),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(7, 7, 7, 7),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                child: Container(
                  width: 100,
                  height: 100,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.network(
                    authCon.auth.currentUser!.photoURL!,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  'Lokasinya cukup strategis, menu yang tersedia rasanya enak dengan harga terjangkau berkisar dibawah Rp.30.000,00. Tempatnya nyaman dan Free Wifi sehingga sanga cocok untuk tempat Nugas baik pelajar maupun Mahasiswa.',
                  style: GoogleFonts.poppins(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
