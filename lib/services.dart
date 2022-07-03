import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:realestate_admin/modules/cubit/cubit.dart';
import 'package:realestate_admin/modules/cubit/states.dart';
import 'package:realestate_admin/shared/components/components.dart';

class AddServicesScreen extends StatefulWidget {
  AddServicesScreen({Key? key}) : super(key: key);

  @override
  State<AddServicesScreen> createState() => _AddServicesScreenState();
}

class _AddServicesScreenState extends State<AddServicesScreen> {

  var formKey = GlobalKey<FormState>();
  var companyNameController = TextEditingController();
  var locationController = TextEditingController();
  var rateController = TextEditingController();
  var phoneController = TextEditingController();
  var serviceTypeController = TextEditingController();
  var UrlController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state)
      {
        if (state is AddServiceSuccessState)
        {
          print('Send');
        }
      },
      builder: (context, state)
      {
        return Scaffold(
          appBar: AppBar(
            title: Text('Add Services'),
          ),
          body: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [

                      defaultFormField(
                        controller: companyNameController,
                        type: TextInputType.name,
                        validate: (value) {
                          if (value!.isEmpty) {
                            return 'Please Enter Name of Company';
                          }
                        },
                        label: 'Company Name',
                        prefix: Icons.category_outlined,
                      ),

                      const SizedBox(
                        height: 10,
                      ),

                      defaultFormField(
                        controller: locationController,
                        type: TextInputType.name,
                        validate: (value) {
                          if (value!.isEmpty) {
                            return 'Please Enter Location of Company';
                          }
                        },
                        label: 'Company Location',
                        prefix: Icons.location_on_outlined,
                      ),

                      const SizedBox(
                        height: 10,
                      ),

                      defaultFormField(
                        controller: rateController,
                        type: TextInputType.name,
                        validate: (value) {
                          if (value!.isEmpty) {
                            return 'Please Enter rate of Company';
                          }
                        },
                        label: 'Company Rate',
                        prefix: Icons.star_rate,
                      ),

                      const SizedBox(
                        height: 10,
                      ),

                      defaultFormField(
                        controller: phoneController,
                        type: TextInputType.number,
                        validate: (value) {
                          if (value!.isEmpty) {
                            return 'Please Enter Phone of company';
                          }
                        },
                        label: 'Phone',
                        prefix: Icons.call,
                      ),

                      const SizedBox(
                        height: 10,
                      ),

                      defaultFormField(
                        controller: serviceTypeController,
                        type: TextInputType.name,
                        validate: (value) {
                          if (value!.isEmpty) {
                            return 'Please Enter Type of Service';
                          }
                        },
                        label: 'Service Type',
                        prefix: Icons.type_specimen_outlined,
                      ),

                      const SizedBox(
                        height: 10,
                      ),

                      defaultFormField(
                        controller: UrlController,
                        type: TextInputType.name,
                        validate: (value) {
                          if (value!.isEmpty) {
                            return 'Please Enter Url of Company';
                          }
                        },
                        label: 'Url',
                        prefix: Icons.add_circle,
                      ),

                      const SizedBox(
                        height: 10,
                      ),


                      TextButton(
                        onPressed: ()
                        {
                          AppCubit.get(context).getServiceImage();
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

                      if(state is ServiceImagePickedSuccessState)
                        Container(
                          width: double.infinity,
                          height: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              image: DecorationImage(
                                  image: FileImage(AppCubit.get(context).image!)
                              ),
                          ),
                        ),

                      const SizedBox(
                        height: 10,
                      ),

                      OutlinedButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            AppCubit.get(context).AddServiceImage(
                               companyName: companyNameController.text,
                              location: locationController.text,
                              rate: rateController.text,
                              phone: phoneController.text,
                              serviceType: serviceTypeController.text,
                              Url: UrlController.text,
                            );
                          }
                        },
                        child: Text(
                          'Add Image of Service',
                        ),
                      ),


                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );


  }
}