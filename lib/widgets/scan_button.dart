import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ScanButton extends StatelessWidget {
  const ScanButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 0,
      onPressed: () => openScan(),
      child: const Icon(Icons.filter_center_focus),
    );
  }

  openScan() async
  {
    /*String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
      '#3D8BEF',
      'Cancelar',
      false,
      ScanMode.QR
    );*/

    const barcodeScanRes = 'https://www.linkedin.com/in/felipe-gomez-3911b9124/';

    print(barcodeScanRes);
  }
}
