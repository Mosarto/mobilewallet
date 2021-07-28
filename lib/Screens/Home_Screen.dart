import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobilewalletexploration/Data/data.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<bool> selected = [
    false,
    false,
    false,
    false,
    false,
  ];
  void select(int n) {
    for (int i = 0; i < selected.length; i++) {
      if (i != n) {
        selected[i] = false;
      } else {
        selected[i] = true;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/img/Background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 24,
                  spreadRadius: 16,
                  color: Colors.black.withOpacity(0.01),
                )
              ],
            ),
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Container(
                      height: 50,
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/menu.svg',
                            width: 25,
                          ),
                          Spacer(),
                          Container(
                            height: 40,
                            width: 40,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Positioned(
                                  child: Container(
                                    height: 38,
                                    width: 38,
                                    padding: EdgeInsets.all(1.5),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                    ),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/img/avatar.jpg'),
                                          fit: BoxFit.cover,
                                          alignment: Alignment.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 2,
                                  right: 3,
                                  child: Container(
                                    height: 9,
                                    width: 9,
                                    padding: EdgeInsets.all(1),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                    ),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.green,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Your Balance',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(height: 20),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 40.0,
                          sigmaY: 40.0,
                        ),
                        child: Container(
                          height: 150,
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(16.0),
                            border: Border.all(
                              width: 1.5,
                              color: Colors.white.withOpacity(0.2),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'March 23, 2021',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff2F2D3D),
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                height: 35,
                                child: Row(
                                  children: [
                                    Text(
                                      '\$21,860.02',
                                      style: TextStyle(
                                        fontSize: 28,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff2F2D3D),
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      'USD',
                                      style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff2F2D3D),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                              Container(
                                height: 20,
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/icons/up.svg',
                                      height: 10,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      '14.32%',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff2F2D3D),
                                      ),
                                    ),
                                    SizedBox(width: 15),
                                    SvgPicture.asset(
                                      'assets/icons/down.svg',
                                      height: 10,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      '2.58%',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff2F2D3D),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                    Container(
                      height: 70,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          for (final buttondata in iconsbutton) ...[
                            Container(
                              width: 50,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => buttondata.page,
                                        ),
                                      );
                                    },
                                    child: Container(
                                      height: 50,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(18),
                                      ),
                                      child: SvgPicture.asset(
                                        'assets/icons/${buttondata.icon}',
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '${buttondata.name}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff2F2D3D),
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                    SizedBox(height: 35),
                    Container(
                      height: 30,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Activities',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Container(
                            height: 28,
                            width: 65,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Text(
                              'Weekly',
                              style: TextStyle(
                                color: Color(0xff706D85),
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 300,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          for (final daysdata in datedate) ...[
                            InkWell(
                              hoverColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () {
                                setState(() {
                                  select(
                                    int.parse('${daysdata.index}'),
                                  );
                                });
                              },
                              child: Container(
                                width: 50,
                                child: Column(
                                  children: [
                                    AnimatedContainer(
                                      duration: Duration(milliseconds: 265),
                                      curve: Curves.easeInSine,
                                      height: (daysdata.size)! +
                                          (selected[int.parse(
                                                      '${daysdata.index}')] ==
                                                  true
                                              ? 0
                                              : 30),
                                    ),
                                    AnimatedContainer(
                                      duration: Duration(milliseconds: 265),
                                      curve: Curves.easeInSine,
                                      height: selected[int.parse(
                                                  '${daysdata.index}')] ==
                                              true
                                          ? 30
                                          : 0,
                                      margin: EdgeInsets.only(bottom: 10),
                                      child: AnimatedContainer(
                                        duration: Duration(milliseconds: 265),
                                        curve: Curves.easeInSine,
                                        width: selected[int.parse(
                                                    '${daysdata.index}')] ==
                                                true
                                            ? 65
                                            : 0,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          gradient: LinearGradient(
                                            colors: [
                                              Color(0xff655BA4),
                                              Color(0xff443B7E),
                                            ],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                          ),
                                        ),
                                        child: Container(
                                          height: 15,
                                          child: Text(
                                            '\$${daysdata.valor}',
                                            overflow: TextOverflow.fade,
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white,
                                              fontSize: 10,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        width: 50,
                                        decoration: BoxDecoration(
                                          color: Color(0xffDFDFF5),
                                          borderRadius:
                                              BorderRadius.circular(25.0),
                                          border: Border.all(
                                            width: 1.2,
                                            color:
                                                Colors.white.withOpacity(0.8),
                                          ),
                                        ),
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Positioned(
                                              child: Container(
                                                margin: EdgeInsets.only(
                                                  top: 15,
                                                  bottom: 15,
                                                ),
                                                width: 16,
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    colors: [
                                                      Color(0xff9281FF),
                                                      Color(0xff5E44FF),
                                                    ],
                                                    begin: Alignment.topCenter,
                                                    end: Alignment.bottomCenter,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          25.0),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              top: 0,
                                              child: Container(
                                                width: 30,
                                                height: 30,
                                                alignment: Alignment.center,
                                                margin: EdgeInsets.only(
                                                  top: 15,
                                                  bottom: 15,
                                                ),
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  gradient: LinearGradient(
                                                    colors: [
                                                      Color(0xff9281FF),
                                                      Color(0xff5E44FF),
                                                    ],
                                                    begin: Alignment.topCenter,
                                                    end: Alignment.bottomCenter,
                                                  ),
                                                ),
                                                child: Container(
                                                  width: 15,
                                                  height: 15,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xffEEECF9),
                                                    shape: BoxShape.circle,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      '${daysdata.name}',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
