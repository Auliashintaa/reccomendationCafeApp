import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reccomendation_cafe_app/app/routes/app_pages.dart';

class CardItem extends StatelessWidget {
  final String gambar;
  final String alamat;

  const CardItem({
    Key? key,
    required this.gambar,
    required this.alamat,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
      child: GestureDetector(
        onTap: () => Get.toNamed(Routes.DETAIL),
        child: Container(
          width: 400,
          height: 300,
          decoration: BoxDecoration(
            color: Color(0xFFAF7E5A),
            boxShadow: [
              BoxShadow(
                blurRadius: 4,
                color: Color(0x33000000),
                offset: Offset(0, 2),
              )
            ],
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                flex: 3,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                  child: Image.asset(
                    gambar,
                    // 'assets/cafe1.png',
                    width: double.infinity,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.black,
                        size: 24,
                      ),
                      Expanded(
                        child: Text(
                            // 'Jl. DR. Cipto Mangunkusumo, Pekiringan, Kec. Kesambi, Kota Cirebon',
                            alamat,
                            style: GoogleFonts.poppins()),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
