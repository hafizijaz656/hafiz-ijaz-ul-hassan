import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

import '../statics/data_values.dart';
import '../statics/key_holders.dart';
import '../theme/app_theme.dart';
import '../widgets/button_icon.dart';
import '../widgets/frame_title.dart';
import '../widgets/social_profiles.dart';

class MS7Contact extends StatefulWidget {
  const MS7Contact({Key? key}) : super(key: key);

  @override
  State<MS7Contact> createState() => _MS7ContactState();
}

class _MS7ContactState extends State<MS7Contact> {
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final messageController = TextEditingController();

  Future<void> sendEmail() async {
    const serviceId = 'your_service_id';
    const templateId = 'your_template_id';
    const publicKey = 'your_public_key';

    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
    final response = await http.post(
      url,
      headers: {
        'origin': 'http://localhost', // your site URL
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'service_id': serviceId,
        'template_id': templateId,
        'user_id': publicKey,
        'template_params': {
          'from_name': nameController.text,
          'from_email': emailController.text,
          'message': messageController.text,
        }
      }),
    );

    if (response.statusCode == 200) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Message sent! ✅')),
      );
      nameController.clear();
      emailController.clear();
      messageController.clear();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Failed to send ❌')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      key: KeyHolders.contactKey,
      color: AppThemeData.backgroundWhite,
      child: Column(
        children: [
          const SizedBox(
            height: 40.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const FrameTitle(
                  title: DataValues.contactTitle,
                  description: DataValues.contactDescription,
                ),
                const SizedBox(height: 30.0),
                _getContactUsForm(),
                const SizedBox(height: 30.0),
                SelectableText(DataValues.contactBanner,
                    style: TextStyle(
                      fontSize: AppThemeData
                          .lightTheme.textTheme.titleMedium!.fontSize,
                      fontWeight: AppThemeData
                          .lightTheme.textTheme.titleLarge!.fontWeight,
                      color: AppThemeData.textWhite,
                    )),
                const SizedBox(height: 5.0),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      Clipboard.setData(
                        const ClipboardData(text: DataValues.contactEmail),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(
                          'Email successfully copied to clipboard',
                          textAlign: TextAlign.center,
                          style: AppThemeData.lightTheme.textTheme.bodyLarge,
                        ),
                        duration: const Duration(seconds: 2),
                      ));
                    },
                    child: Tooltip(
                      message: 'Click to copy email to clipboard',
                      child: Text(
                        DataValues.contactEmail,
                        style: TextStyle(
                          fontSize: AppThemeData
                              .lightTheme.textTheme.titleMedium!.fontSize,
                          fontWeight: AppThemeData
                              .lightTheme.textTheme.titleLarge!.fontWeight,
                          color: AppThemeData.textPrimary,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const SocialProfiles(),
          const SizedBox(
            height: 40.0,
          ),
        ],
      ),
    );
  }

  _getContactUsForm() {
    return SizedBox(
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: nameController,
              style:  const TextStyle(
                color: AppThemeData.textBlack,
              ),
              decoration: InputDecoration(
                labelText: "Your Name",
                labelStyle: const TextStyle(
                  color: AppThemeData.textBlack,
                ),
                hintStyle: const TextStyle(
                  color: AppThemeData.textBlack,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: AppThemeData.primaryColor,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: AppThemeData.textGreyDark,
                  ),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: AppThemeData.textGreyDark,
                  ),
                ),
              ),
              validator: (value) => value!.isEmpty ? "Enter your name" : null,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            TextFormField(
              controller: emailController,
              style:  const TextStyle(
                color: AppThemeData.textBlack,
              ),
              decoration: InputDecoration(
                labelText: "Your Email",
                labelStyle: const TextStyle(
                  color: AppThemeData.textBlack,
                ),
                hintStyle: const TextStyle(
                  color: AppThemeData.textBlack,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: AppThemeData.primaryColor,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: AppThemeData.textGreyDark,
                  ),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: AppThemeData.textGreyDark,
                  ),
                ),
              ),
              validator: (value) => value!.isEmpty ? "Enter your email" : null,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            TextFormField(
              controller: messageController,
              style:  const TextStyle(
                color: AppThemeData.textBlack,
              ),
              decoration: InputDecoration(
                labelText: "Message",
                labelStyle: const TextStyle(
                  color: AppThemeData.textBlack,
                ),
                hintStyle: const TextStyle(
                  color: AppThemeData.textBlack,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: AppThemeData.primaryColor,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: AppThemeData.textGreyDark,
                  ),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: AppThemeData.textGreyDark,
                  ),
                ),
              ),
              maxLines: 5,
              validator: (value) => value!.isEmpty ? "Enter a message" : null,
            ),
            const SizedBox(height: 20),
            CustomButton(
                name: 'click',
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    sendEmail();
                  }
                }).returnButton(),
          ],
        ),
      ),
    );
  }
}
