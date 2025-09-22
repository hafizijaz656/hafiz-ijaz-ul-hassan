import 'package:flutter/material.dart';

import '../statics/data_values.dart';
import '../statics/key_holders.dart';
import '../theme/app_theme.dart';
import '../widgets/container_card.dart';
import '../widgets/frame_title.dart';

class DS4Experience extends StatelessWidget {
  const DS4Experience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      key: KeyHolders.experienceKey,
      color: AppThemeData.backgroundWhite,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FrameTitle(
              title: DataValues.experienceTitle,
              description: DataValues.experienceDescription,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ContainerCard().type3(
                    title: DataValues.experienceOrg4Title,
                    role: DataValues.experienceOrg4Role,
                    years: DataValues.experienceOrg4Years,
                    values: DataValues.experienceOrg4Vales,
                    message: DataValues.linkedinURL.toString(),
                    url: DataValues.linkedinURL,
                    isButtonEnabled: true,
                  ),
                ),
                SizedBox(width: size.width * 0.05),
                Expanded(
                  child: ContainerCard().type3(
                    title: DataValues.experienceOrg3Title,
                    role: DataValues.experienceOrg3Role,
                    years: DataValues.experienceOrg3Years,
                    values: DataValues.experienceOrg3Vales,
                    message: DataValues.linkedinURL.toString(),
                    url: DataValues.linkedinURL,
                    isButtonEnabled: true,
                  ),
                ),
                SizedBox(width: size.width * 0.05),
                Expanded(
                  child: ContainerCard().type3(
                    title: DataValues.experienceOrg2Title,
                    role: DataValues.experienceOrg2Role,
                    years: DataValues.experienceOrg2Years,
                    values: DataValues.experienceOrg2Vales,
                    message: DataValues.linkedinURL.toString(),
                    url: DataValues.linkedinURL,
                    isButtonEnabled: true,
                  ),
                ),
              ],
            ),
            SizedBox(height: size.height * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ContainerCard().type3(
                    title: DataValues.experienceOrg1Title,
                    role: DataValues.experienceOrg1Role,
                    years: DataValues.experienceOrg1Years,
                    values: DataValues.experienceOrg1Vales,
                    message: DataValues.linkedinURL.toString(),
                    url: DataValues.linkedinURL,
                    isButtonEnabled: true,
                  ),
                ),
                SizedBox(width: size.width * 0.05),
                const Expanded(child: SizedBox.shrink()),
                SizedBox(width: size.width * 0.05),
                const Expanded(child: SizedBox.shrink()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
