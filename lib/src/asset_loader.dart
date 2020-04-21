import 'dart:convert';

import 'package:flutter/services.dart';

abstract class AssetLoader {
  const AssetLoader();
  Future<Map<String, dynamic>> load(String localePath);
}

//
//
//
// default used is RootBundleAssetLoader which uses flutter's assetloader
class RootBundleAssetLoader extends AssetLoader {
  const RootBundleAssetLoader();

  @override
  Future<Map<String, dynamic>> load(String localePath) async {
    print('easy localization: Load asset from $localePath');
    return json.decode(await rootBundle.loadString(localePath));
  }
}
