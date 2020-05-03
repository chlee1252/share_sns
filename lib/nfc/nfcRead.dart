import 'dart:async';

import 'package:nfc_in_flutter/nfc_in_flutter.dart';

class NFCRead {
  static StreamSubscription<NDEFMessage> stream;

  static void start() {
    stream = NFC
        .readNDEF(alertMessage: "Please move your phone near partner's phone")
        .listen((NDEFMessage message) {
      if (message.isEmpty) {
        print("Read empty NDEF message");
        return;
      }
      print("Read NDEF message with ${message.records.length} records");
      for (NDEFRecord record in message.records) {
        print("Record '${record.data}");
      }
    }, onError: (error) {
      stream = null;
      if (error is NFCUserCanceledSessionException) {
        print("user canceled");
      } else if (error is NFCSessionTimeoutException) {
        print("session timeout");
      } else {
        print("error: $error");
      }
    }, onDone: () {
      stream = null;
    });
  }

  static void stop() {
    stream?.cancel();
    stream = null;
  }

  static void toggleScan() {
    if (stream == null) {
      start();
    } else {
      stop();
    }
  }
}
