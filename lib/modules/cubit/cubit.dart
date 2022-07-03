import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:realestate_admin/models/bundlemodel.dart';
import 'package:realestate_admin/models/bundlemodel.dart';
import 'package:realestate_admin/models/bundlemodel.dart';
import 'package:realestate_admin/models/bundlemodel.dart';
import 'package:realestate_admin/models/bundlemodel.dart';
import 'package:realestate_admin/models/categorymodel.dart';
import 'package:realestate_admin/models/servicemodel.dart';
import 'package:realestate_admin/modules/cubit/states.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

import '../../models/bundlemodel.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);




  void AddBundle({
    required String bundleName,
    required String bundleDuration,
    required String price,

  })
  {
    emit(AddBundleLoadingState());
    BundelModel model = BundelModel(
      bundleName: bundleName,
      bundleDuration : bundleDuration,
      price : price,
    );
    FirebaseFirestore.instance
        .collection('Bundle')
        .add(model.toMap())
        .then((value) {
      emit(AddBundleSuccessState());
    }).catchError((error) {
      emit(AddBundleErrorState(error.toString()));
    });
  }



  void AddCategory({
    required String categoryName,
    String? categoryImage,
  }) {
    emit(AddCategoryLoadingState());
    CategoryDataModel model = CategoryDataModel(
      categoryName: categoryName,
      categoryImage: categoryImage,
    );

    FirebaseFirestore.instance
        .collection('categories')
        .add(model.toMap())
        .then((value) {
      emit(AddCategorySuccessState());
    }).catchError((error) {
      emit(AddCategoryErrorState(error.toString()));
    });
  }

  File? categoryImage;
  var picker = ImagePicker();

  Future<void> getCategoryImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      categoryImage = File(pickedFile.path);
      print(pickedFile.path);
      emit(CategoryImagePickedSuccessState());
    } else {
      print('No image selected');
      emit(CategoryImagePickedErrorState());
    }
  }


  void AddCategoryImage({
    required String categoryName,

  }) {
    emit(AddCategoryImageLoadingState());
    firebase_storage.FirebaseStorage.instance
        .ref()
        .child('category/${Uri.file(categoryImage!.path).pathSegments.last}')
        .putFile(categoryImage!)
        .then((value) {
      value.ref.getDownloadURL().then((value) {
        print(value);
        AddCategory(
          categoryName: categoryName,
          categoryImage: value,
        );
      }).catchError((error) {
        print(error.toString());
        emit(CategoryImagePickedErrorState());
      });
    }).catchError((error) {
      print(error.toString());

      emit(CategoryImagePickedErrorState());
    });
  }

  void AddService({
    required String companyName,
    required String location,
    required String rate,
    required String phone,
    required String serviceType,
    required String Url,
    String? image,
  }) {
    emit(AddServiceLoadingState());
    ServicesModel model = ServicesModel(
      image: image,
      companyName: companyName,
      location: location,
      rate: rate,
      phone: phone,
      serviceType: serviceType,
      Url: Url,
    );

    FirebaseFirestore.instance
        .collection('Service')
        .add(model.toMap())
        .then((value) {
      emit(AddServiceSuccessState());
    }).catchError((error) {
      emit(AddServiceErrorState(error.toString()));
    });
  }


  File? image;

  Future<void> getServiceImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      image = File(pickedFile.path);
      print(pickedFile.path);
      emit(ServiceImagePickedSuccessState());
    } else {
      print('No image selected');
      emit(ServiceImagePickedErrorState(toString()));
    }
  }

  void AddServiceImage({
    required String companyName,
    required String location,
    required String rate,
    required String phone,
    required String serviceType,
    required String Url,

  }) {
   // emit(AddServiceImageLoadingState());
    firebase_storage.FirebaseStorage.instance
        .ref()
        .child('service/${Uri.file(image!.path).pathSegments.last}')
        .putFile(image!)
        .then((value)async {
      await value.ref.getDownloadURL().then((value) {
        print(value);
        AddService(
          companyName: companyName,
          location: location,
          rate: rate,
          phone: phone,
          serviceType: serviceType,
          Url: Url,
          image: value,
        );
      }).catchError((error) {
        print('Error');
        emit(ServiceImagePickedErrorState(error.toString()));
      });
    }).catchError((error) {
      print('Error');

      emit(ServiceImagePickedErrorState(error.toString()));
    });
  }



/*
  void AddCategory({
    required String categoryName,
    required String categoryImage,
  })
  {
    emit(AddCategoryLoadingState());

    CategoryDataModel model = CategoryDataModel(
      categoryName : categoryName ,
      categoryImage : categoryImage,
    );
    FirebaseFirestore.instance
        .collection('categories')
        .add(model.toMap())
        .then((value) {
      emit(AddCategorySuccessState());
    }).catchError((error) {
      emit(AddCategoryErrorState(error.toString()));
    });
  }

 */


}




