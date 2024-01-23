// import 'package:appeco/screens/buyer_screen.dart';
// import 'package:appeco/screens/login_screen.dart';
import 'package:appeco/screens/buyer_screen.dart';
import 'package:appeco/screens/buying_energy.dart';
import 'package:appeco/screens/login_screen.dart';
import 'package:appeco/screens/maps_add.dart';
import 'package:appeco/screens/payment_success.dart';
import 'package:appeco/screens/require.dart';
import 'package:appeco/screens/signup_screen.dart';
import 'package:appeco/screens/splash_screen.dart';
import 'package:appeco/screens/statistics.dart';
import 'package:appeco/screens/wallet.dart';
import 'package:appeco/screens/wallet_integration.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: LoginScreen(),
      // home: SplashScreen(),
      // home: PaymentSuccess(),
      // home: BuyingEnergy(),
      // home: Require(),
      // home: Statistics(),
      // home: WalletIntegration(),
      // home: Wallet(),
      home: SignUpScreen(),
      // home: BuyerScreen(),
      // home: MapsAdd(),
    );
  }
}
