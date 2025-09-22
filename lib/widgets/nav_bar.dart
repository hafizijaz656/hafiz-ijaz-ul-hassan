import 'package:flutter/material.dart';

import '../statics/data_values.dart';
import '../statics/key_holders.dart';
import '../theme/app_theme.dart';
import 'button_rectangle.dart';
import 'button_text.dart';

String activeSection = '';

class DesktopNavBar extends StatefulWidget {
  const DesktopNavBar({super.key});

  @override
  State<DesktopNavBar> createState() => _DesktopNavBarState();
}

class _DesktopNavBarState extends State<DesktopNavBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (activeSection == DataValues.navBarAboutMe)
          ButtonRectangle(
            name: DataValues.navBarAboutMe,
            onPressed: () {},
            color: AppThemeData.buttonPrimary,
            message: '',
          )
        else
          ButtonTextLarge(
            text: DataValues.navBarAboutMe,
            onPressed: () {
              Scrollable.ensureVisible(
                KeyHolders.aboutKey.currentContext!,
                duration: const Duration(milliseconds: 1000),
              );
              setState(() {
                activeSection = DataValues.navBarAboutMe;
              });
            },
            message: 'Go to ${DataValues.navBarAboutMe} section',
          ),
        const SizedBox(height: 20.0),
        if (activeSection == DataValues.navBarEducation)
          ButtonRectangle(
              name: DataValues.navBarEducation,
              onPressed: () {},
              color: AppThemeData.buttonPrimary,
              message: '')
        else
          ButtonTextLarge(
            text: DataValues.navBarEducation,
            onPressed: () {
              Scrollable.ensureVisible(
                KeyHolders.educationKey.currentContext!,
                duration: const Duration(milliseconds: 1000),
              );
              setState(() {
                activeSection = DataValues.navBarEducation;
              });
            },
            message: 'Go to ${DataValues.navBarEducation} section',
          ),
        const SizedBox(height: 20.0),
        if (activeSection == DataValues.navBarExperience)
          ButtonRectangle(
              name: DataValues.navBarExperience,
              onPressed: () {},
              color: AppThemeData.buttonPrimary,
              message: '')
        else
          ButtonTextLarge(
            text: DataValues.navBarExperience,
            onPressed: () {
              setState(() {
                activeSection = DataValues.navBarExperience;
              });
              Scrollable.ensureVisible(
                KeyHolders.experienceKey.currentContext!,
                duration: const Duration(milliseconds: 1000),
              );
            },
            message: 'Go to ${DataValues.navBarExperience} section',
          ),
        const SizedBox(height: 20.0),
        if (activeSection == DataValues.navBarProject)
          ButtonRectangle(
              name: DataValues.navBarProject,
              onPressed: () {},
              color: AppThemeData.buttonPrimary,
              message: '')
        else
          ButtonTextLarge(
            text: DataValues.navBarProject,
            onPressed: () {
              setState(() {
                activeSection = DataValues.navBarProject;
              });
              Scrollable.ensureVisible(
                KeyHolders.projectsKey.currentContext!,
                duration: const Duration(milliseconds: 1000),
              );
            },
            message: 'Go to ${DataValues.navBarProject} section',
          ),
        const SizedBox(height: 20.0),
        if (activeSection == DataValues.navBarTechNotes)
          ButtonRectangle(
              name: DataValues.navBarTechNotes,
              onPressed: () {},
              color: AppThemeData.buttonPrimary,
              message: '')
        else
          ButtonTextLarge(
            text: DataValues.navBarTechNotes,
            onPressed: () {
              Scrollable.ensureVisible(
                KeyHolders.technotesKey.currentContext!,
                duration: const Duration(milliseconds: 1000),
              );
              setState(() {
                activeSection = DataValues.navBarTechNotes;
              });
            },
            message: 'Go to ${DataValues.navBarTechNotes} section',
          ),
        const SizedBox(height: 20.0),
        if (activeSection == DataValues.navBarContactMe)
          ButtonRectangle(
              name: DataValues.navBarContactMe,
              onPressed: () {},
              color: AppThemeData.buttonPrimary,
              message: '')
        else
          ButtonTextLarge(
            text: DataValues.navBarContactMe,
            onPressed: () {
              Scrollable.ensureVisible(
                KeyHolders.contactKey.currentContext!,
                duration: const Duration(milliseconds: 1000),
              );
              setState(() {
                activeSection = DataValues.navBarContactMe;
              });
            },
            message: 'Go to ${DataValues.navBarContactMe} section',
          )
      ],
    );
  }
}

class MobileNavBar extends StatefulWidget {
  const MobileNavBar({super.key});

  @override
  State<MobileNavBar> createState() => _MobileNavBarState();
}

class _MobileNavBarState extends State<MobileNavBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppThemeData.backgroundWhite,
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        children: [
          const SizedBox(height: 60.0),
          miniHeader(),
          const SizedBox(height: 20.0),
          if (activeSection == DataValues.navBarAboutMe)
            ButtonRectangle(
                name: DataValues.navBarAboutMe,
                onPressed: () {},
                color: AppThemeData.buttonPrimary,
                message: '')
          else
            ButtonTextLarge(
              text: DataValues.navBarAboutMe,
              onPressed: () {
                Navigator.of(context).pop();
                Scrollable.ensureVisible(
                  KeyHolders.aboutKey.currentContext!,
                  duration: const Duration(milliseconds: 1000),
                );
                setState(() {
                  activeSection = DataValues.navBarAboutMe;
                });
              },
              message: 'Go to ${DataValues.navBarAboutMe} section',
            ),
          const SizedBox(height: 20.0),
          if (activeSection == DataValues.navBarEducation)
            ButtonRectangle(
                name: DataValues.navBarEducation,
                onPressed: () {},
                color: AppThemeData.buttonPrimary,
                message: '')
          else
            ButtonTextLarge(
              text: DataValues.navBarEducation,
              onPressed: () {
                Navigator.of(context).pop();
                Scrollable.ensureVisible(
                  KeyHolders.educationKey.currentContext!,
                  duration: const Duration(milliseconds: 1000),
                );
                setState(() {
                  activeSection = DataValues.navBarEducation;
                });
              },
              message: 'Go to ${DataValues.navBarEducation} section',
            ),
          const SizedBox(height: 20.0),
          if (activeSection == DataValues.navBarExperience)
            ButtonRectangle(
                name: DataValues.navBarExperience,
                onPressed: () {},
                color: AppThemeData.buttonPrimary,
                message: '')
          else
            ButtonTextLarge(
              text: DataValues.navBarExperience,
              onPressed: () {
                Navigator.of(context).pop();
                Scrollable.ensureVisible(
                  KeyHolders.experienceKey.currentContext!,
                  duration: const Duration(milliseconds: 1000),
                );
                setState(() {
                  activeSection = DataValues.navBarExperience;
                });
              },
              message: 'Go to ${DataValues.navBarExperience} section',
            ),
          const SizedBox(height: 20.0),
          if (activeSection == DataValues.navBarProject)
            ButtonRectangle(
                name: DataValues.navBarProject,
                onPressed: () {},
                color: AppThemeData.buttonPrimary,
                message: '')
          else
            ButtonTextLarge(
              text: DataValues.navBarProject,
              onPressed: () {
                Navigator.of(context).pop();
                Scrollable.ensureVisible(
                  KeyHolders.projectsKey.currentContext!,
                  duration: const Duration(milliseconds: 1000),
                );
                setState(() {
                  activeSection = DataValues.navBarProject;
                });
              },
              message: 'Go to ${DataValues.navBarProject} section',
            ),
          const SizedBox(height: 20.0),
          if (activeSection == DataValues.navBarTechNotes)
            ButtonRectangle(
                name: DataValues.navBarTechNotes,
                onPressed: () {},
                color: AppThemeData.buttonPrimary,
                message: '')
          else
            ButtonTextLarge(
              text: DataValues.navBarTechNotes,
              onPressed: () {
                Navigator.of(context).pop();
                Scrollable.ensureVisible(
                  KeyHolders.technotesKey.currentContext!,
                  duration: const Duration(milliseconds: 1000),
                );
                setState(() {
                  activeSection = DataValues.navBarTechNotes;
                });
              },
              message: 'Go to ${DataValues.navBarTechNotes} section',
            ),
          const SizedBox(height: 20.0),
          if (activeSection == DataValues.navBarContactMe)
            ButtonRectangle(
                name: DataValues.navBarContactMe,
                onPressed: () {},
                color: AppThemeData.buttonPrimary,
                message: '')
          else
            ButtonTextLarge(
              text: DataValues.navBarContactMe,
              onPressed: () {
                Navigator.of(context).pop();
                setState(() {
                  activeSection = DataValues.navBarContactMe;
                });

                Scrollable.ensureVisible(
                  KeyHolders.contactKey.currentContext!,
                  duration: const Duration(milliseconds: 1000),
                );
              },
              message: 'Go to ${DataValues.navBarContactMe} section',
            )
        ],
      ),
    );
  }

  Widget miniHeader() {
    return Column(
      children: [
        Image.asset('assets/images/logo.png', height: 80.0, width: 80.0),
        const SizedBox(height: 10.0),
        SelectableText(
          DataValues.headerName,
          style: TextStyle(
            color: AppThemeData.textPrimary,
            fontSize: AppThemeData.lightTheme.textTheme.titleLarge?.fontSize,
            fontWeight: FontWeight.bold,
          ),
        ),
        SelectableText(
          DataValues.headerTitle,
          style: AppThemeData.lightTheme.textTheme.labelLarge,
        ),
      ],
    );
  }
}
