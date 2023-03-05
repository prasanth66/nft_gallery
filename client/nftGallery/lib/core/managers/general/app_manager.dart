import 'package:final_template/core/managers/firebase/firebase_manager.dart';
import 'package:final_template/injection_container.dart' as di;
import '../../../app_imports.dart';

class AppManager {
  static Future<void> initialise() async {
    await di.init();
    await SharedPreferencesManager.init();
    await FirebaseManager.initialise();
  }
}
