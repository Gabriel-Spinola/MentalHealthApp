import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mental_health_application2/utils/app_layout.dart';
import 'package:mental_health_application2/utils/app_styles.dart';
import 'package:mental_health_application2/widgets/column_layout.dart';
import 'package:path/path.dart';

import '../Widgets/bottom_bar.dart';
import '../widgets/app_layout_builder.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20.0), vertical: AppLayout.getHeight(20.0)),
        children: <Widget>[
          Gap(AppLayout.getHeight(40.0)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: AppLayout.getWidth(86.0),
                height: AppLayout.getWidth(86.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(10.0)),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/img_1.png'),
                  )
                ),
              ),
              Gap(AppLayout.getHeight(10.0)),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Seu Perfil', style: Styles.headLine1Style),
                  Gap(AppLayout.getWidth(2.0)),
                  Text('Lorena', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.grey.shade500)),
                  Gap(AppLayout.getHeight(8)),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(3.0), vertical: AppLayout.getHeight(3.0)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(100.0)),
                      color: const Color(0xFFFFF4F3),
                    ),
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(3.0),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF526799),
                          ),
                          child: const Icon(FluentSystemIcons.ic_fluent_shield_filled, color: Colors.white, size: 15.0),
                        ),
                        Gap(AppLayout.getHeight(5.0)),
                        const Text('Premium Status', style: TextStyle(color: Color(0xFF526799), fontWeight: FontWeight.w600)),
                        Gap(AppLayout.getHeight(5.0)),
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: <Widget>[
                  InkWell(
                    child: Text('editar', style: Styles.textStyle.copyWith(color: Styles.primaryColor, fontWeight: FontWeight.w300)),
                    onTap: () {
                      print('Tapped');
                    },
                  ),
                ],
              ),
            ],
          ),
          Gap(AppLayout.getHeight(8.0)),
          Divider(color: Colors.grey.shade300),
          Gap(AppLayout.getWidth(8.0)),
          Stack(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: AppLayout.getHeight(98.0),
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(18.0)),
                ),
              ),
              Positioned(
                right: -45,
                top: -40,
                child: Container(
                padding: EdgeInsets.all(AppLayout.getHeight(30.0)),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  shape: BoxShape.circle,
                  border: Border.all(width: 18, color: Color(0xFF264CD2)),
                ),
              ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(14.0), vertical: AppLayout.getHeight(20.0)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      maxRadius: 25.0,
                      backgroundColor: Colors.white,
                      child: Icon(FluentSystemIcons.ic_fluent_lightbulb_filament_filled, color: Styles.primaryColor, size: 27),
                    ),
                    Gap(AppLayout.getWidth(10.0)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Você ganhou uma conquista', style: Styles.headLine2Style.copyWith(color: Colors.white, fontSize: 18.2)),
                        Text('Você leu 5 artigos sobre saúde', style: Styles.headLine2Style.copyWith(color: Colors.white.withOpacity(.9), fontWeight: FontWeight.w500, fontSize: 16.0)),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          Gap(AppLayout.getWidth(25.0)),
          Text('Pontos Acumulados', style: Styles.headLine2Style),
          Column(
            children: <Widget>[
              Gap(AppLayout.getHeight(15.0)),
              Text('280', style: TextStyle(fontSize: 40, color: Styles.textColor, fontWeight: FontWeight.w600)),
              Gap(AppLayout.getHeight(15.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Contra criada em', style: Styles.headLine4Style.copyWith(fontSize: 16.0)),
                  Text('23/08/2022', style: Styles.headLine4Style.copyWith(fontSize: 16.0)),
                ],
              ),
              Gap(AppLayout.getHeight(4.0)),
              Divider(color: Colors.grey.shade300),
              Gap(AppLayout.getHeight(4.0)),
              const AppLayoutBuilder(sections: 12,  width: 5, isColor: false),
              Gap(AppLayout.getHeight(12)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const ColumnLayout(
                    alignment: CrossAxisAlignment.start,
                    firstText: 'Nome',
                    secondText: 'Email',
                    isColor: false,
                  ),
                  Gap(AppLayout.getHeight(10.0)),
                  const ColumnLayout(
                    alignment: CrossAxisAlignment.end,
                    firstText: 'Lorena da Mota',
                    secondText: 'loerenaaller@gmail.com',
                    isColor: false,
                  ),
                ],
              ),
              Gap(AppLayout.getHeight(12)),
              const AppLayoutBuilder(sections: 12,  width: 5, isColor: false),
              Gap(AppLayout.getHeight(12)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const ColumnLayout(
                    alignment: CrossAxisAlignment.start,
                    firstText: 'Estado',
                    secondText: 'Cidade',
                    isColor: false,
                  ),
                  Gap(AppLayout.getHeight(10.0)),
                  const ColumnLayout(
                    alignment: CrossAxisAlignment.end,
                    firstText: 'Minas Gerais',
                    secondText: 'Contagem',
                    isColor: false,
                  ),
                ],
              ),
            ],
          )
        ],
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
