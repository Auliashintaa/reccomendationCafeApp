import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reccomendation_cafe_app/app/data/controller/auth_controller.dart';

class DetailController extends GetxController {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  UserCredential? _userCredential;
  FirebaseAuth auth = FirebaseAuth.instance;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final authCon = Get.find<AuthController>();

  late TextEditingController reviewController;

  @override
  void onInit() {
    super.onInit();
    reviewController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    reviewController.dispose();
  }

  void saveUpdateTask({String? review, String? docId, String? type}) async {
    print(review);
    print(type);
    print(docId);

    final isValid = formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    formKey.currentState!.save();
    CollectionReference reviewColl = firestore.collection('review');
    CollectionReference users = firestore.collection('user');
    var reviewId = DateTime.now().toIso8601String();

    if (type == 'Add') {
      await reviewColl.doc().set({
        'review': review,
        'asign_to': [authCon.auth.currentUser!.email],
        'created_by': [authCon.auth.currentUser!.email],
      }).whenComplete(() async {
        await users.doc(authCon.auth.currentUser!.email).set({
          'review_id': FieldValue.arrayUnion([reviewId])
        }, SetOptions(merge: true));
        Get.back();
        Get.snackbar("Review", "Successfully $type");
      }).catchError((error) {
        Get.snackbar("Review", "Error $type");
      });
    } else {
      await reviewColl.doc().update({
        'review': review,
      }).whenComplete(() async {
        await users.doc(authCon.auth.currentUser!.email).set({
          'review_id': FieldValue.arrayUnion([reviewId])
        }, SetOptions(merge: true));
        Get.back();
        Get.snackbar("Review", "Successfully $type");
      }).catchError((error) {
        Get.snackbar("Review", "Error $type");
      });
    }
  }
}
