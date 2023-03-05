# This script will either run or build APK for DEV


# #!/usr/bin/bash 
# set -e


flutter clean
flutter build web -t lib/ui/widgetbook/main_widgetbook.dart
cd ..
cp -a clean_napses_template/build/web/ serve_widget_book/public-flutter

