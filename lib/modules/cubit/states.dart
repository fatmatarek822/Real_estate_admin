abstract class AppStates {}

class AppInitialState extends AppStates {}

class AddBundleLoadingState extends AppStates {}

class AddBundleSuccessState extends AppStates {}

class AddBundleErrorState extends AppStates {
  final String error;
  AddBundleErrorState(this.error);
}

class AddCategoryLoadingState extends AppStates {}

class AddCategorySuccessState extends AppStates {}

class AddCategoryErrorState extends AppStates {
  final String error;
  AddCategoryErrorState(this.error);
}

class AddCategoryImageLoadingState extends AppStates {}

class AddCategoryImageSuccessState extends AppStates {}

class AddCategoryImageErrorState extends AppStates {
  final String error;
  AddCategoryImageErrorState(this.error);
}

class CategoryImagePickedSuccessState extends AppStates {}

class CategoryImagePickedErrorState extends AppStates {}

class ServiceImagePickedSuccessState extends AppStates {}

class ServiceImagePickedErrorState extends AppStates {
  final String error;
  ServiceImagePickedErrorState(this.error);
}

class AddServiceImageLoadingState extends AppStates {}

class AddServiceImageSuccessState extends AppStates {}

class AddServiceImageErrorState extends AppStates {
  final String error;
  AddServiceImageErrorState(this.error);
}

class AddServiceLoadingState extends AppStates {}

class AddServiceSuccessState extends AppStates {}

class AddServiceErrorState extends AppStates {
  final String error;
  AddServiceErrorState(this.error);
}