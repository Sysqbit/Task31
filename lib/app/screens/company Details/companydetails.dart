import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CompanyDetails extends StatelessWidget {
  CompanyDetails({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  final CompanyPANController = TextEditingController();
  final BusinessTypeController = TextEditingController();
  final ComapnynameController = TextEditingController();
  final ContactPersonController = TextEditingController();
  final NatureofCompanyController = TextEditingController();
  final CINController = TextEditingController();
  final DateofincorporateController = TextEditingController();
  final GSTINController = TextEditingController();
  final TypeofGSTController = TextEditingController();
  final GSTINRegistrationController = TextEditingController();
  final StateNameController = TextEditingController();
  final GSTController = TextEditingController();
  final GSTADHAARyController = TextEditingController();
  final CompanyMobileController = TextEditingController();
  final CompanyemailController = TextEditingController();
  final CompanyLandlineController = TextEditingController();
  final CompanyAdressController = TextEditingController();
  final CompanyCapitalController = TextEditingController();
  final CompanyAuthorizedController = TextEditingController();
  final HaveRentController = TextEditingController();
  final RentAgreementController = TextEditingController();
  final RentAgreementValidityToController = TextEditingController();
  final TANController = TextEditingController();
  final TANRegistrationController = TextEditingController();
  final PFController = TextEditingController();
  final PFRegistrationController = TextEditingController();
  final ESINoController = TextEditingController();
  final ESIRegistrationController = TextEditingController();
  final ISONoController = TextEditingController();
  final ISORegistrationController = TextEditingController();
  final ISOExpiryController = TextEditingController();
  final TrademarkController = TextEditingController();
  final TrademarkRegistrationController = TextEditingController();
  final TrademarkEnquiryController = TextEditingController();
  final IECcodeController = TextEditingController();
  final IECCoderegistrationController = TextEditingController();
  final FSSIController = TextEditingController();
  final FSSINoRegistrationController = TextEditingController();
  final FSSINoExpiryController = TextEditingController();
  final MSMENoController = TextEditingController();
  final MSMENoRegistrationController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: CompanyPANController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Proritor/Company PAN'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return '*Required';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: BusinessTypeController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Business Type'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return '*Required';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: ComapnynameController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Company name'),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: ContactPersonController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Contact Person:'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return '*Required';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: NatureofCompanyController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Nature of Company'),
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
                      controller: CINController,
                      decoration: const InputDecoration(
                        labelText: "CIN/Registration No",
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
                      controller: DateofincorporateController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Date of Incoporate'),
                      maxLines: 2,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return '*Required';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: GSTINController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Company GSTIN'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return '*Required';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: TypeofGSTController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Type of GST'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return '*Required';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: GSTINRegistrationController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'GSTIN Registration Date'),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: StateNameController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), hintText: 'State Name'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return '*Required';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: GSTController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'GST e-KYC Verified'),
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
                      controller: CompanyMobileController,
                      decoration: const InputDecoration(
                        labelText: "Company Mobile",
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
                      controller: CompanyemailController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Comapny Email'),
                      maxLines: 2,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return '*Required';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: CompanyLandlineController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Company Landline No'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return '*Required';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: CompanyAdressController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Company Adress'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return '*Required';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: CompanyCapitalController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Company Capital'),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: CompanyAuthorizedController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Company Authorized Capital:'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return '*Required';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: HaveRentController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Have Rent Agreement?'),
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
                      controller: RentAgreementController,
                      decoration: const InputDecoration(
                        labelText: "Rent Agreement Validity From:",
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
                      controller: RentAgreementValidityToController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Rent Agreement Validity To'),
                      maxLines: 2,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return '*Required';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: TANController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), hintText: 'TAN No'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return '*Required';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: TANRegistrationController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'TAN Registration'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return '*Required';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: PFController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), hintText: 'PF No'),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: PFRegistrationController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'PF Reggistration Dtae'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return '*Required';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: ESINoController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), hintText: 'ESI No'),
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
                      controller: ESIRegistrationController,
                      decoration: const InputDecoration(
                        labelText: "ESI Registration Dtae",
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
                      controller: ISONoController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), hintText: 'ISO No'),
                      maxLines: 2,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return '*Required';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: ISORegistrationController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'ISO Registration Date'),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: ISOExpiryController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'ISO Expiry Date'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return '*Required';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: TrademarkController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Trademark Registration Date:'),
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
                      controller: TrademarkEnquiryController,
                      decoration: const InputDecoration(
                        labelText: "Trademark Expiry Date:",
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
                      controller: IECcodeController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), hintText: 'IEC Code'),
                      maxLines: 2,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return '*Required';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: IECCoderegistrationController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'IEC Code Registration Date'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return '*Required';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: FSSIController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), hintText: 'FSSI No'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return '*Required';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: FSSINoRegistrationController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'FSSI No Registration Date:'),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: FSSINoExpiryController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'FSSI NO EXPIRY DATE'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return '*Required';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: MSMENoController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), hintText: 'MSME NO:'),
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
                      controller: MSMENoRegistrationController,
                      decoration: const InputDecoration(
                        labelText: "MSME No Registration Date",
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
                      controller: ISONoController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), hintText: 'ISO No'),
                      maxLines: 2,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return '*Required';
                        }
                        return null;
                      },
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
