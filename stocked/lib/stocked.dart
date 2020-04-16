import 'package:flutter/material.dart';
import 'variables.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/services.dart';
import 'dart:convert';

//Enter your API key here
const kAPIKey = '';

class Stocked extends StatefulWidget {
  @override
  _StockedState createState() => _StockedState();
}

class _StockedState extends State<Stocked> {
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  void getPrice(String symbol) async {
    response = await http.get(
        'https://www.alphavantage.co/query?function=GLOBAL_QUOTE&symbol=$symbol&apikey=$kAPIKey');
    var decodedData = jsonDecode(response.body);

    if (symbol == 'ADBE') {
      priceADOBE = decodedData['Global Quote']['05. price'];
    } else if (symbol == 'AAPL') {
      priceAPPLE = decodedData['Global Quote']['05. price'];
    } else if (symbol == 'AMZN') {
      priceAMAZON = decodedData['Global Quote']['05. price'];
    } else if (symbol == 'AMD') {
      priceAMD = decodedData['Global Quote']['05. price'];
    } else if (symbol == 'ADSK') {
      priceAUTODESK = decodedData['Global Quote']['05. price'];
    } else if (symbol == 'FB') {
      priceFACEBOOK = decodedData['Global Quote']['05. price'];
    } else if (symbol == 'INTC') {
      priceINTEL = decodedData['Global Quote']['05. price'];
    } else if (symbol == 'MSFT') {
      priceMICROSOFT = decodedData['Global Quote']['05. price'];
    } else if (symbol == 'GOOGL') {
      priceGOOGLE = decodedData['Global Quote']['05. price'];
    } else if (symbol == 'NVDA') {
      priceNVIDIA = decodedData['Global Quote']['05. price'];
    } else if (symbol == 'TSLA') {
      priceTESLA = decodedData['Global Quote']['05. price'];
    } else if (symbol == 'SBUX') {
      priceSTARBUCKS = decodedData['Global Quote']['05. price'];
    } else if (symbol == 'DIS') {
      priceDISNEY = decodedData['Global Quote']['05. price'];
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: ctrl,
        children: <Widget>[
          InkWell(
            splashColor: Colors.amber,
            onTap: () {
              getPrice('ADBE');
            },
            child: Container(
              color: Colors.transparent,
              child: SafeArea(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'ADOBE',
                        style: kSymbolTextStyle,
                      ),
                      Text(
                        priceADOBE != null ? priceADOBE.toString() : '--',
                        style: kPriceTextStyle,
                      ),
                      Text(
                        'Tap to update • Swipe for more',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            splashColor: Colors.amber,
            onTap: () {
              getPrice('AAPL');
            },
            child: Container(
              color: Colors.transparent,
              child: SafeArea(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'APPLE',
                        style: kSymbolTextStyle,
                      ),
                      Text(
                        priceAPPLE != null ? priceAPPLE.toString() : '--',
                        style: kPriceTextStyle,
                      ),
                      Text(
                        'Tap to update • Swipe for more',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            splashColor: Colors.amber,
            onTap: () {
              getPrice('AMZN');
            },
            child: Container(
              color: Colors.transparent,
              child: SafeArea(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'AMAZON',
                        style: kSymbolTextStyle,
                      ),
                      Text(
                        priceAMAZON != null ? priceAMAZON.toString() : '--',
                        style: kPriceTextStyle,
                      ),
                      Text(
                        'Tap to update • Swipe for more',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            splashColor: Colors.amber,
            onTap: () {
              getPrice('AMD');
            },
            child: Container(
              color: Colors.transparent,
              child: SafeArea(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'AMD',
                        style: kSymbolTextStyle,
                      ),
                      Text(
                        priceAMD != null ? priceAMD.toString() : '--',
                        style: kPriceTextStyle,
                      ),
                      Text(
                        'Tap to update • Swipe for more',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            splashColor: Colors.amber,
            onTap: () {
              getPrice('ADSK');
            },
            child: Container(
              color: Colors.transparent,
              child: SafeArea(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'AUTODESK',
                        style: kSymbolTextStyle,
                      ),
                      Text(
                        priceAUTODESK != null ? priceAUTODESK.toString() : '--',
                        style: kPriceTextStyle,
                      ),
                      Text(
                        'Tap to update • Swipe for more',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            splashColor: Colors.amber,
            onTap: () {
              getPrice('FB');
            },
            child: Container(
              color: Colors.transparent,
              child: SafeArea(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'FACEBOOK',
                        style: kSymbolTextStyle,
                      ),
                      Text(
                        priceFACEBOOK != null ? priceFACEBOOK.toString() : '--',
                        style: kPriceTextStyle,
                      ),
                      Text(
                        'Tap to update • Swipe for more',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            splashColor: Colors.amber,
            onTap: () {
              getPrice('INTC');
            },
            child: Container(
              color: Colors.transparent,
              child: SafeArea(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'INTEL',
                        style: kSymbolTextStyle,
                      ),
                      Text(
                        priceINTEL != null ? priceINTEL.toString() : '--',
                        style: kPriceTextStyle,
                      ),
                      Text(
                        'Tap to update • Swipe for more',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            splashColor: Colors.amber,
            onTap: () {
              getPrice('MSFT');
            },
            child: Container(
              color: Colors.transparent,
              child: SafeArea(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'MICROSOFT',
                        style: kSymbolTextStyle,
                      ),
                      Text(
                        priceMICROSOFT != null
                            ? priceMICROSOFT.toString()
                            : '--',
                        style: kPriceTextStyle,
                      ),
                      Text(
                        'Tap to update • Swipe for more',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            splashColor: Colors.amber,
            onTap: () {
              getPrice('GOOGL');
            },
            child: Container(
              color: Colors.transparent,
              child: SafeArea(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'GOOGLE',
                        style: kSymbolTextStyle,
                      ),
                      Text(
                        priceGOOGLE != null ? priceGOOGLE.toString() : '--',
                        style: kPriceTextStyle,
                      ),
                      Text(
                        'Tap to update • Swipe for more',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            splashColor: Colors.amber,
            onTap: () {
              getPrice('NVDA');
            },
            child: Container(
              color: Colors.transparent,
              child: SafeArea(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'NVIDIA',
                        style: kSymbolTextStyle,
                      ),
                      Text(
                        priceNVIDIA != null ? priceNVIDIA.toString() : '--',
                        style: kPriceTextStyle,
                      ),
                      Text(
                        'Tap to update • Swipe for more',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            splashColor: Colors.amber,
            onTap: () {
              getPrice('TSLA');
            },
            child: Container(
              color: Colors.transparent,
              child: SafeArea(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'TESLA',
                        style: kSymbolTextStyle,
                      ),
                      Text(
                        priceTESLA != null ? priceTESLA.toString() : '--',
                        style: kPriceTextStyle,
                      ),
                      Text(
                        'Tap to update • Swipe for more',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            splashColor: Colors.amber,
            onTap: () {
              getPrice('SBUX');
            },
            child: Container(
              color: Colors.transparent,
              child: SafeArea(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'STARBUCKS',
                        style: kSymbolTextStyle,
                      ),
                      Text(
                        priceSTARBUCKS != null
                            ? priceSTARBUCKS.toString()
                            : '--',
                        style: kPriceTextStyle,
                      ),
                      Text(
                        'Tap to update • Swipe for more',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            splashColor: Colors.amber,
            onTap: () {
              getPrice('DIS');
            },
            child: Container(
              color: Colors.transparent,
              child: SafeArea(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'DISNEY',
                        style: kSymbolTextStyle,
                      ),
                      Text(
                        priceDISNEY != null ? priceDISNEY.toString() : '--',
                        style: kPriceTextStyle,
                      ),
                      Text(
                        'Tap to update • Swipe for more',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
