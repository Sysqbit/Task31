import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProfessionalDetails extends StatelessWidget {
  ProfessionalDetails({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  final PANNumberController = TextEditingController();
  final NameController = TextEditingController();
  final EmailIDController = TextEditingController();
  final ContactNOController = TextEditingController();
  final DesignationController = TextEditingController();
  final DateofBirthController = TextEditingController();
  final PlaceofBirthController = TextEditingController();
  final MothersnameController = TextEditingController();
  final FatherNameController = TextEditingController();
  final AboutusController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Auto E-Invoice'),
        automaticallyImplyLeading: false,
        leadingWidth: 100,
        leading: ElevatedButton.icon(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_left_sharp),
          label: const Text('Back'),
          style: ElevatedButton.styleFrom(
              elevation: 0, primary: Colors.transparent),
        ),
      ),
      backgroundColor: const Color(0xfff5f5fd),
      body: Center(
        child: Container(
          height: 800,
          width: 400,
          margin: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 20,
          ),
          child: Form(
            key: _formKey,
            child: ListView(
              children: [
                Column(
                  children: [
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: PANNumberController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), hintText: 'PAN Number'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return '*Required';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: NameController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), hintText: 'Name'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return '*Required';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: EmailIDController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), hintText: 'Email ID'),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: ContactNOController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), hintText: 'Contact No'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return '*Required';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: DesignationController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Designation'),
                      maxLines: 1,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return '*Required';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: DateofBirthController,
                      decoration: const InputDecoration(
                        labelText: "Date of Birth",
                        icon: Icon(Icons.calendar_today),
                      ),
                      onTap: () async {},
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter a date for your task";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: PlaceofBirthController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Place of Birth'),
                      maxLines: 2,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return '*Required';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: MothersnameController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Mother Name'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return '*Required';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: FatherNameController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Father's Name"),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return '*Required';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: AboutusController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'About us(minimum 500 characters'),
                      maxLines: 1000,
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      height: 45,
                      width: 110,
                      child: TextButton(
                        style: TextButton.styleFrom(
                            primary: Colors.white,
                            backgroundColor: Color.fromARGB(255, 73, 73, 214),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40))),
                        onPressed: () async {},
                        child: const Text('Edit Profile',
                            style: TextStyle(fontSize: 16)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
