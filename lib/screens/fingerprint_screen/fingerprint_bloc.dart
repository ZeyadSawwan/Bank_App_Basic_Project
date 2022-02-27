import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

//class FingerPrintBloc {}

class LocalAuthApi {
  static final _auth = LocalAuthentication();
  // versions check
  static Future<bool> hasBiometrics() async {
    try {
      return await _auth.canCheckBiometrics;
    } on PlatformException catch (e) {
      return false;
    }
  }

  static Future<List<BiometricType>> getBiometrics() async {
    try {
      return await _auth.getAvailableBiometrics();
    } on PlatformException catch (e) {
      return <BiometricType>[];
    }
  }
  // versions check

  static Future<bool> authenticate() async {
    final isAvailable = await hasBiometrics();
    if (!isAvailable) return false;
    // grey scan box
    try {
      return await _auth.authenticateWithBiometrics(
        localizedReason: 'Scan Fingerprint to Authenticate',
        //Fingerprint request
        useErrorDialogs: true,

        //close the app and return it will still on
        stickyAuth: true,
      );
    } on PlatformException catch (e) {
      return false;
    }
  }
}
