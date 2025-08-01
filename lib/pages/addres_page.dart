import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:opne_fationn/widgets/cheakout_batton.dart';
import 'package:opne_fationn/widgets/custem_appar.dart';
import 'package:opne_fationn/widgets/custem_text_feild.dart';
import 'package:opne_fationn/widgets/header.dart';

class AddAddress extends StatefulWidget {
  const AddAddress({super.key, this.editData});

  final dynamic editData;

  @override
  State<AddAddress> createState() => _AddAddressState();
}

class _AddAddressState extends State<AddAddress> {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final addressController = TextEditingController();
  final cityController = TextEditingController();
  final stateController = TextEditingController();
  final zipCodeController = TextEditingController();
  final phoneController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    addressController.dispose();
    cityController.dispose();
    stateController.dispose();
    zipCodeController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    if (widget.editData != null) {
      firstNameController.text = widget.editData['first'] ?? "";
      lastNameController.text = widget.editData['last'] ?? "";
      addressController.text = widget.editData['address'] ?? "";
      cityController.text = widget.editData['city'] ?? "";
      stateController.text = widget.editData['state'] ?? "";
      zipCodeController.text = widget.editData['Zip'] ?? "";
      phoneController.text = widget.editData['phone'] ?? "";
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(isBlackk: false),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Header(title: "Add shipping address"),
          
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextField(
                            label: 'First name',
                            controller: firstNameController,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: CustomTextField(
                            label: 'Last name',
                            controller: lastNameController,
                          ),
                        ),
                      ],
                    ),
                    Gap(30),
                    CustomTextField(
                      label: 'Address',
                      controller: addressController,
                    ),
                    Gap(30),
                    CustomTextField(label: 'City', controller: cityController),
                    Gap(30),
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextField(
                            label: 'State',
                            controller: stateController,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: CustomTextField(
                            label: 'ZIP Code',
                            controller: zipCodeController,
                          ),
                        ),
                      ],
                    ),
                    Gap(30),
                    CustomTextField(
                      label: 'Phone Number',
                      controller: phoneController,
                    ),
                  ],
                ),
              ), 

              Gap(20) ,
          
              //Spacer(),
          
              CheakoutBatton(
                Isvg: false, 
                title: "Add now" , 
                onTap: () {
                  if(_formKey.currentState!.validate()){
                    return ; 
                  }  else{
                     final data = {
                    'first' : firstNameController.text,
                    'last' : lastNameController.text,
                    'address' : addressController.text,
                    'Zip' : zipCodeController.text,
                    'city' : cityController.text,
                    'phone' : phoneController.text,
                  }; 
                   Navigator.pop(context, data);
                  }
                },
                ),
          
              Gap(70),
            ],
          ),
        ),
      ),
    );
  }
}
