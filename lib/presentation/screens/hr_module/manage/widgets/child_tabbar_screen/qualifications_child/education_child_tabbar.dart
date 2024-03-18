import 'package:demo_prohealth/presentation/screens/hr_module/manage/widgets/icon_button_constant.dart';
import 'package:flutter/material.dart';
import '../../../../../../../app/theme_manager.dart';
import 'constants/row_container_widget_const.dart';
///done by saloni
class EducationChildTabbar extends StatelessWidget {
  const EducationChildTabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width/80,
          vertical: MediaQuery.of(context).size.height/100),
      child: TwoContainersRow(
        child1:  Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Education #1',
                      style: TextStyle(
                        fontFamily: 'FiraSans',
                        fontSize: 13,
                        color: Color(0xFF333333),
                        fontWeight: FontWeight.bold,
                      ),),
                    SizedBox(height: 15,),
                    Text('Degree',
                        style: ThemeManager.customTextStyle(context)),
                    SizedBox(height: 10,),
                    Text('Graduate',
                        style: ThemeManager.customTextStyle(context)),
                    SizedBox(height: 10,),
                    Text('Educational Institute',
                        style: ThemeManager.customTextStyle(context)),
                    SizedBox(height: 10,),
                    Text('Major Subject',
                        style: ThemeManager.customTextStyle(context)),
                  ],
                ),
                SizedBox(width: MediaQuery.of(context).size.width/22,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(''),
                    SizedBox(height: 10,),
                    Text('MS',
                      style: ThemeManagerDark.customTextStyle(context),),
                    SizedBox(height: 10,),
                    Text('True',
                      style: ThemeManagerDark.customTextStyle(context),),
                    SizedBox(height: 10,),
                    Text('MIT',
                      style: ThemeManagerDark.customTextStyle(context),),
                    SizedBox(height: 10,),
                    Text('Biology',
                      style: ThemeManagerDark.customTextStyle(context),),
                  ],
                ),
                SizedBox(width: MediaQuery.of(context).size.width/12,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(''),
                    SizedBox(height: 10,),
                    Text('Phone',
                        style: ThemeManager.customTextStyle(context)),
                    SizedBox(height: 10,),
                    Text('City',
                        style: ThemeManager.customTextStyle(context)),
                    SizedBox(height: 15,),
                    Text('State',
                        style: ThemeManager.customTextStyle(context)),
                    SizedBox(height: 15,),
                    Text('Country',
                        style: ThemeManager.customTextStyle(context)),
                  ],
                ),
                SizedBox(width: MediaQuery.of(context).size.width/12,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(''),
                    SizedBox(height: 10,),
                    Text('+1234687654',
                      style: ThemeManagerDark.customTextStyle(context),),
                    SizedBox(height: 10,),
                    Text('Hamburg',
                      style: ThemeManagerDark.customTextStyle(context),),
                    SizedBox(height: 10,),
                    Text('Northen Germany',
                        style: ThemeManagerDark.customTextStyle(context)),
                    SizedBox(height: 10,),
                    Text('Germany',
                        style: ThemeManagerDark.customTextStyle(context)),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButtonWidget(iconData: Icons.edit,
                    buttonText: 'Edit', onPressed: (){})
              ],
            )
          ],
        ),
        child2: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Education #2',
                      style: TextStyle(
                        fontFamily: 'FiraSans',
                        fontSize: 13,
                        color: Color(0xFF333333),
                        fontWeight: FontWeight.bold,
                      ),),
                    SizedBox(height: 15,),
                    Text('Degree',
                        style: ThemeManager.customTextStyle(context)),
                    SizedBox(height: 10,),
                    Text('Graduate',
                        style: ThemeManager.customTextStyle(context)),
                    SizedBox(height: 10,),
                    Text('Educational Institute',
                        style: ThemeManager.customTextStyle(context)),
                    SizedBox(height: 10,),
                    Text('Major Subject',
                        style: ThemeManager.customTextStyle(context)),
                  ],
                ),
                SizedBox(width: MediaQuery.of(context).size.width/22,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(''),
                    SizedBox(height: 10,),
                    Text('MS',
                      style: ThemeManagerDark.customTextStyle(context),),
                    SizedBox(height: 10,),
                    Text('True',
                      style: ThemeManagerDark.customTextStyle(context),),
                    SizedBox(height: 10,),
                    Text('MIT',
                      style: ThemeManagerDark.customTextStyle(context),),
                    SizedBox(height: 10,),
                    Text('Biology',
                      style: ThemeManagerDark.customTextStyle(context),),
                  ],
                ),
                SizedBox(width: MediaQuery.of(context).size.width/12,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(''),
                    SizedBox(height: 10,),
                    Text('Phone',
                        style: ThemeManager.customTextStyle(context)),
                    SizedBox(height: 10,),
                    Text('City',
                        style: ThemeManager.customTextStyle(context)),
                    SizedBox(height: 15,),
                    Text('State',
                        style: ThemeManager.customTextStyle(context)),
                    SizedBox(height: 15,),
                    Text('Country',
                        style: ThemeManager.customTextStyle(context)),
                  ],
                ),
                SizedBox(width: MediaQuery.of(context).size.width/12,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(''),
                    SizedBox(height: 10,),
                    Text('+1234687654',
                      style: ThemeManagerDark.customTextStyle(context),),
                    SizedBox(height: 10,),
                    Text('Hamburg',
                      style: ThemeManagerDark.customTextStyle(context),),
                    SizedBox(height: 10,),
                    Text('Northen Germany',
                        style: ThemeManagerDark.customTextStyle(context)),
                    SizedBox(height: 10,),
                    Text('Germany',
                        style: ThemeManagerDark.customTextStyle(context)),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButtonWidget(iconData: Icons.edit,
                    buttonText: 'Edit', onPressed: (){})
              ],
            )
          ],
        ),
      ),
    );
  }
}