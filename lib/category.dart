import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:realestate_admin/modules/cubit/cubit.dart';
import 'package:realestate_admin/modules/cubit/states.dart';
import 'package:realestate_admin/shared/components/components.dart';

class AddCategoryScreen extends StatefulWidget {
  AddCategoryScreen({Key? key}) : super(key: key);

  @override
  State<AddCategoryScreen> createState() => _AddCategoryScreenState();
}

class _AddCategoryScreenState extends State<AddCategoryScreen> {

  var formKey = GlobalKey<FormState>();
  var categoryNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state)
      {
        if (state is AddBundleSuccessState)
        {
          print('Send');
        }
      },
      builder: (context, state)
      {
        return Scaffold(
          appBar: AppBar(
            title: Text('Add Category'),
          ),
          body: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    defaultFormField(
                      controller: categoryNameController,
                      type: TextInputType.name,
                      validate: (value) {
                        if (value!.isEmpty) {
                          return 'Please Enter Name of Category';
                        }
                      },
                      label: 'Category Name',
                      prefix: Icons.category_outlined,
                    ),

                    const SizedBox(
                      height: 10,
                    ),


                    TextButton(
                      onPressed: ()
                      {
                        AppCubit.get(context).getCategoryImage();
                      }, child: Row(
                      children: const [
                         Icon(Icons.photo_library_outlined),
                         SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Add Photo',
                        ),
                      ],
                    ),

                    ),

                    const SizedBox(
                      height: 10,
                    ),

                    if(state is CategoryImagePickedSuccessState)
                     Container(
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        image: DecorationImage(
                          image: FileImage(AppCubit.get(context).categoryImage!)
                        )
                      ),
                    ),

                    const SizedBox(
                      height: 10,
                    ),


                    OutlinedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          AppCubit.get(context).AddCategoryImage(
                            categoryName: categoryNameController.text,
                          );
                        }
                      },
                      child: Text(
                        'Add',
                      ),
                    ),


                  ],
                ),
              ),
            ),
          ),
        );
      },
    );


  }
}