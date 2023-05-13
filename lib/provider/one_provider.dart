import 'package:flutter/foundation.dart';
import 'package:lerning_all_in_one/model/lerning_model.dart';

class LerningProvider extends ChangeNotifier
{
  List appList=[
    LerningModel(name: "Wc3 Schools",img: "assets/images/img.png",link: "https://www.w3schools.com/"),
    LerningModel(name: "BYJU'S ",img: "assets/images/img_1.png",link: "https://byjus.com/"),
    LerningModel(name: "toppr",img: "assets/images/img_2.png",link: "https://www.toppr.com/"),
    LerningModel(name: "unacademy",img: "assets/images/img_3.png",link: "https://unacademy.com/"),
    LerningModel(name: "Python",img: "assets/images/img_4.png",link: "https://www.python.org/"),
    LerningModel(name: "CuriousJr",img: "assets/images/img_5.png",link: "https://curiousjr.com/"),
    LerningModel(name: "Php",img: "assets/images/img_6.png",link: "https://www.php.net/"),
    LerningModel(name: "Java",img: "assets/images/img_7.png",link: "https://www.java.com/en/"),
    LerningModel(name: "Programiz",img: "assets/images/img_8.png",link: "https://www.programiz.com/"),
    LerningModel(name: "Javapoint",img: "assets/images/img_9.png",link: "https://www.javatpoint.com/"),
  ];

}
