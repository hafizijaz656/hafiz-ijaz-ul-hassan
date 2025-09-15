import 'package:flutter/material.dart';

import '../statics/data_values.dart';
import '../statics/key_holders.dart';
import '../theme/app_theme.dart';
import '../widgets/container_card.dart';
import '../widgets/frame_title.dart';

class Ds5Projects extends StatelessWidget {
  const Ds5Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      key: KeyHolders.projectsKey,
      color: AppThemeData.backgroundGrey,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FrameTitle(
              title: DataValues.projectsTitle,
              description: "",
            ),

            ///conversotech
            SelectableText(
              DataValues.conversoTech,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(height: size.height * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ContainerCard().type5(
                    projectName: DataValues.project16Name,
                    platform: DataValues.project16Platform,
                    languages: DataValues.project16Languages,
                    description: DataValues.project16Description,
                    message: DataValues.project16Url.toString(),
                    url: Uri.parse(DataValues.project16Url),
                    isButtonEnabled: false,
                  ),
                ),
                SizedBox(width: size.width * 0.05),
                const Expanded(child: SizedBox.shrink()),
                SizedBox(width: size.width * 0.05),
                const Expanded(child: SizedBox.shrink()),
              ],
            ),
            SizedBox(height: size.height * 0.02),

            ///prosings
            SelectableText(
              DataValues.prosigns,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(height: size.height * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ContainerCard().type5(
                    projectName: DataValues.project13Name,
                    platform: DataValues.project13Platform,
                    languages: DataValues.project13Languages,
                    description: DataValues.project13Description,
                    message: DataValues.project13Url.toString(),
                    url: Uri.parse(DataValues.project13Url),
                    isButtonEnabled: true,
                  ),
                ),
                SizedBox(width: size.width * 0.05),
                Expanded(
                  child: ContainerCard().type5(
                    projectName: DataValues.project14Name,
                    platform: DataValues.project14Platform,
                    languages: DataValues.project14Languages,
                    description: DataValues.project14Description,
                    message: DataValues.project14Url.toString(),
                    url: Uri.parse(DataValues.project14Url),
                    isButtonEnabled: false,
                  ),
                ),
                SizedBox(width: size.width * 0.05),
                Expanded(
                  child: ContainerCard().type5(
                    projectName: DataValues.project15Name,
                    platform: DataValues.project15Platform,
                    languages: DataValues.project15Languages,
                    description: DataValues.project15Description,
                    message: DataValues.project15Url.toString(),
                    url: Uri.parse(DataValues.project15Url),
                    isButtonEnabled: false,
                  ),
                ),
              ],
            ),
            SizedBox(height: size.height * 0.02),

            ///catalyicTech
            SelectableText(
              DataValues.catalyicTech,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(height: size.height * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ContainerCard().type5(
                    projectName: DataValues.project5Name,
                    platform: DataValues.project5Platform,
                    languages: DataValues.project5Languages,
                    description: DataValues.project5Description,
                    message: DataValues.project5Url.toString(),
                    url: Uri.parse(DataValues.project5Url),
                    isButtonEnabled: false,
                  ),
                ),
                SizedBox(width: size.width * 0.05),
                Expanded(
                  child: ContainerCard().type5(
                    projectName: DataValues.project6Name,
                    platform: DataValues.project6Platform,
                    languages: DataValues.project6Languages,
                    description: DataValues.project6Description,
                    message: DataValues.project6Url.toString(),
                    url: Uri.parse(DataValues.project6Url),
                    isButtonEnabled: false,
                  ),
                ),
                SizedBox(width: size.width * 0.05),
                Expanded(
                  child: ContainerCard().type5(
                    projectName: DataValues.project7Name,
                    platform: DataValues.project7Platform,
                    languages: DataValues.project7Languages,
                    description: DataValues.project7Description,
                    message: DataValues.project7Url.toString(),
                    url: Uri.parse(DataValues.project7Url),
                    isButtonEnabled: false,
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
                  child: ContainerCard().type5(
                    projectName: DataValues.project8Name,
                    platform: DataValues.project8Platform,
                    languages: DataValues.project8Languages,
                    description: DataValues.project8Description,
                    message: DataValues.project8Url.toString(),
                    url: Uri.parse(DataValues.project8Url),
                    isButtonEnabled: false,
                  ),
                ),
                SizedBox(width: size.width * 0.05),
                const Expanded(child: SizedBox.shrink()),
                SizedBox(width: size.width * 0.05),
                const Expanded(child: SizedBox.shrink()),
              ],
            ),
            SizedBox(height: size.height * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ContainerCard().type5(
                    projectName: DataValues.project9Name,
                    platform: DataValues.project9Platform,
                    languages: DataValues.project9Languages,
                    description: DataValues.project9Description,
                    message: DataValues.project9Url.toString(),
                    url: Uri.parse(DataValues.project9Url),
                    isButtonEnabled: true,
                  ),
                ),
                SizedBox(width: size.width * 0.05),
                Expanded(
                  child: ContainerCard().type5(
                    projectName: DataValues.project10Name,
                    platform: DataValues.project10Platform,
                    languages: DataValues.project10Languages,
                    description: DataValues.project10Description,
                    message: DataValues.project10Url.toString(),
                    url: Uri.parse(DataValues.project10Url),
                    isButtonEnabled: false,
                  ),
                ),
                SizedBox(width: size.width * 0.05),
                Expanded(
                  child: ContainerCard().type5(
                    projectName: DataValues.project11Name,
                    platform: DataValues.project11Platform,
                    languages: DataValues.project11Languages,
                    description: DataValues.project11Description,
                    message: DataValues.project11Url.toString(),
                    url: Uri.parse(DataValues.project11Url),
                    isButtonEnabled: false,
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
                  child: ContainerCard().type5(
                    projectName: DataValues.project12Name,
                    platform: DataValues.project12Platform,
                    languages: DataValues.project12Languages,
                    description: DataValues.project12Description,
                    message: DataValues.project12Url.toString(),
                    url: Uri.parse(DataValues.project12Url),
                    isButtonEnabled: false,
                  ),
                ),
                SizedBox(width: size.width * 0.05),
                const Expanded(child: SizedBox.shrink()),
                SizedBox(width: size.width * 0.05),
                const Expanded(child: SizedBox.shrink()),
              ],
            ),
            SizedBox(height: size.height * 0.02),

            ///creCodeITProfessionals
            SelectableText(
              DataValues.creCodeITProfessionals,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(height: size.height * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ContainerCard().type5(
                    projectName: DataValues.project1Name,
                    platform: DataValues.project1Platform,
                    languages: DataValues.project1Languages,
                    description: DataValues.project1Description,
                    message: DataValues.project1Url.toString(),
                    url: Uri.parse(DataValues.project1Url),
                    isButtonEnabled: true,
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                Expanded(
                  child: ContainerCard().type5(
                    projectName: DataValues.project2Name,
                    platform: DataValues.project2Platform,
                    languages: DataValues.project2Languages,
                    description: DataValues.project2Description,
                    message: "",
                    url: Uri.parse(""),
                    isButtonEnabled: false,
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                Expanded(
                  child: ContainerCard().type5(
                    projectName: DataValues.project3Name,
                    platform: DataValues.project3Platform,
                    languages: DataValues.project3Languages,
                    description: DataValues.project3Description,
                    message: DataValues.project3Url.toString(),
                    url: Uri.parse(DataValues.project3Url),
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
                  child: ContainerCard().type5(
                    projectName: DataValues.project4Name,
                    platform: DataValues.project4Platform,
                    languages: DataValues.project4Languages,
                    description: DataValues.project4Description,
                    message: DataValues.project4Url.toString(),
                    url: Uri.parse(DataValues.project4Url),
                    isButtonEnabled: true,
                  ),
                ),
                SizedBox(width: size.width * 0.05),
                const Expanded(child: SizedBox.shrink()),
                SizedBox(width: size.width * 0.05),
                const Expanded(child: SizedBox.shrink()),
              ],
            ),
            SizedBox(height: size.height * 0.02),




          ],
        ),
      ),
    );
  }
}
