// import 'package:echo_chain/screens/buyer_screen.dart';
// import 'package:echo_chain/screens/login_screen.dart';
import 'package:echo_chain/screens/buyer_screen.dart';
import 'package:echo_chain/screens/buying_energy.dart';
import 'package:echo_chain/screens/login_screen.dart';
import 'package:echo_chain/screens/maps_add.dart';
import 'package:echo_chain/screens/payment_success.dart';
import 'package:echo_chain/screens/require.dart';
import 'package:echo_chain/screens/signup_screen.dart';
import 'package:echo_chain/screens/splash_screen.dart';
import 'package:echo_chain/screens/statistics.dart';
import 'package:echo_chain/screens/wallet.dart';
import 'package:echo_chain/screens/wallet_integration.dart';
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
