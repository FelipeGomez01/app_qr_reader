import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:app_qr_reader/pages/addresses_page.dart';
//import 'package:qr_reader_app/providers/db_provider.dart';
import 'package:app_qr_reader/providers/ui_provider.dart';
import 'package:app_qr_reader/widgets/custom_navigator_bar.dart';
import 'package:app_qr_reader/widgets/scan_button.dart';

import 'maps_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Historial'),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.delete_forever))
        ],
      ),
      body: const _HomePageBody(),
      bottomNavigationBar: const CustomNavigatorBar(),
      floatingActionButton: const ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _HomePageBody extends StatelessWidget {
  const _HomePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){

    final uiProvider = Provider.of<UiProvider>(context);

    final currentIndex = uiProvider.selectedMenuOpt;

    //TODO: Temporal leer la base de datos
    //DBProvider.db.database;

    switch(currentIndex)
    {
      case 0:
        return const MapsPage();

      case 1:
        return const AddressesPage();
    }
    return Container();
  }
}

