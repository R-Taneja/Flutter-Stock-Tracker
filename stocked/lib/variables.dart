import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

const kSymbolTextStyle = TextStyle(
  fontFamily: 'Poppins',
  fontWeight: FontWeight.w600,
  color: Colors.white,
  fontSize: 30.0,
);

const kPriceTextStyle = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w800,
    color: Colors.white,
    fontSize: 65.0);

const kLabelTextStyle = TextStyle(
  fontWeight: FontWeight.w500,
  fontFamily: 'Poppins',
  color: Colors.white,
  fontSize: 13.0,
);

final PageController ctrl = PageController();
http.Response response;
String priceADOBE;
String priceAPPLE;
String priceAMAZON;
String priceAMD;
String priceAUTODESK;
String priceFACEBOOK;
String priceINTEL;
String priceMICROSOFT;
String priceGOOGLE;
String priceNVIDIA;
String priceTESLA;
String priceSTARBUCKS;
String priceDISNEY;
