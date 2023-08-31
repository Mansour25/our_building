import 'package:hive/hive.dart';
import 'package:our_building/core/functions/spaces.dart';
import 'package:path_provider/path_provider.dart';

class HiveHelper {
  static Box? myBox;

  static Future<Box> openHiveBox(String boxName) async {
    if (!Hive.isBoxOpen(boxName)) {
      Hive.init((await getApplicationDocumentsDirectory()).path);
    }
    return await Hive.openBox(boxName).then((value) {
      myPrint('Open hive is success');
      return value;
    });
  }

  static putData(String key, dynamic data) {
    print('==========   put   ==========');
    myBox!.put(key, data);
  }

  static getData(String key) {
    return myBox!.get(key);
  }
}
