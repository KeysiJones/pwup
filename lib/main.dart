import 'package:flutter/material.dart';
import 'package:mercado_pago_mobile_checkout/mercado_pago_mobile_checkout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Power Up',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Power Up ⇮'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String publicKey = "TEST-9321eecc-8bc8-4737-8b53-44b12d66071a";
  String accessToken =
      "TEST-4706039936892243-052710-f62db146136b653d415b1acb88e5d588-765956183";

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(icon: Icon(Icons.add), onPressed: () => {}),
          IconButton(icon: Icon(Icons.star), onPressed: () => {}),
          IconButton(icon: Icon(Icons.delete), onPressed: () => {})
        ],
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: SingleChildScrollView(
            child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              child: Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                width: double.infinity,
                height: 100,
                child: Card(
                    color: Colors.blue,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Planos PowerUp",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    )),
              ),
              onPressed: () => {},
            ),
            TextButton(
                onPressed: () async {
                  PaymentResult result =
                      await MercadoPagoMobileCheckout.startCheckout(
                    "APP_USR-1dea94c6-d84f-4808-a946-c58ba9e869ed",
                    "766024078-e3583728-032a-4ff2-b251-3810759187bb",
                  );

                  print(result.toString());
                },
                child: Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    width: double.infinity,
                    height: 100,
                    child: Card(
                        color: Colors.deepOrange,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Contratar plano premium",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        )))),
            TextButton(
                onPressed: () async {
                  PaymentResult result =
                      await MercadoPagoMobileCheckout.startCheckout(
                    "APP_USR-1dea94c6-d84f-4808-a946-c58ba9e869ed",
                    "766024078-5c1fa125-062b-4bdb-8776-fa3e9fcb98c6",
                  );

                  print(result.toString());
                },
                child: Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    width: double.infinity,
                    height: 100,
                    child: Card(
                    color: Colors.blue,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Contratar plano intermediário",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        )))),
            TextButton(
                onPressed: () async {
                  PaymentResult result =
                      await MercadoPagoMobileCheckout.startCheckout(
                    "APP_USR-1dea94c6-d84f-4808-a946-c58ba9e869ed",
                    "766024078-d44d6964-aaad-4fd1-b941-66d9ca336a37",
                  );

                  print(result.toString());
                },
                child: Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    width: double.infinity,
                    height: 100,
                    child: Card(
                        color: Colors.deepOrange,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Contratar plano básico",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        )))),
          ],
        )),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
