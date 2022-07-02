import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:realestate_admin/modules/cubit/cubit.dart';
import 'package:realestate_admin/modules/cubit/states.dart';
import 'package:realestate_admin/shared/components/components.dart';

class AddBundleScreen extends StatefulWidget {
  const AddBundleScreen({Key? key}) : super(key: key);

  @override
  State<AddBundleScreen> createState() => _AddBundleScreenState();
}

class _AddBundleScreenState extends State<AddBundleScreen> {

  var formKey = GlobalKey<FormState>();
  var bundleNameController = TextEditingController();
  var bundleDurationController = TextEditingController();
  var priceController = TextEditingController();

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
            title: Text('Add Bundle'),
          ),
          body: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    defaultFormField(
                      controller: bundleNameController,
                      type: TextInputType.name,
                      validate: (value) {
                        if (value!.isEmpty) {
                          return 'Please Enter Name of Bundle';
                        }
                      },
                      label: 'Bundle Name',
                      prefix: Icons.drive_file_rename_outline,
                    ),

                    const SizedBox(
                      height: 10,
                    ),

                    defaultFormField(
                      controller: bundleDurationController,
                      type: TextInputType.name,
                      validate: (value) {
                        if (value!.isEmpty) {
                          return 'Please Enter Duration of Bundle';
                        }
                      },
                      label: 'Bundle Duration',
                      prefix: Icons.access_time_outlined,
                    ),

                    const SizedBox(
                      height: 10,
                    ),

                    defaultFormField(
                      controller: priceController,
                      type: TextInputType.number,
                      validate: (value) {
                        if (value!.isEmpty) {
                          return 'Please Enter Price of Bundle';
                        }
                      },
                      label: 'Bundle Price',
                      prefix: Icons.price_change_outlined,
                    ),


                    OutlinedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          AppCubit.get(context).AddBundle(
                            bundleName: bundleNameController.text,
                            bundleDuration: bundleDurationController.text,
                            price: priceController.text,
                          );
                        }
                      },
                      child: Text(
                        'Send',
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
