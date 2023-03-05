# This script will either run or build APK/AAB for QA

# #!/usr/bin/bash 
# set -e

# Check for first argument passed and see if it is either "android" or "ios"
# If not any of this two, show a message and exit
# 1 - platform, 2 - build version(Eg: 1.1.0)  3 build number (Eg: 5) - 1.1.0+5
if [ -z "$1" ]
then 
    echo "No argument provided"
    exit
else 
    echo "========================="
    echo "Platform2 : " $1
    echo "Build Version : " $2
    echo "Build Number : " $3
    # echo "Build Number : " $4
    echo "========================="
    if [ $1 == "android" ]
    then
        # if [ $4 == "clean" ]
        # then
            flutter clean
            echo "========================="
            flutter pub get
            echo "========================="
        # fi
    elif [ $1 == "ios" ]
    then
        # if [ $4 == "clean" ]
        # then
            flutter clean
            echo "========================="
            flutter pub get
            echo "========================="
            cd ios
            pod install
            echo "========================="
        # fi
    else 
        echo "The given platform is not supported"
        exit
    fi

    if [ $1 == "android" ]
    then 
        flutter pub run change_app_package_name:main com.napses.template

        echo "========================="
        echo "Enter 1 to RUN and  2 to BUILD(apk or aab) and press Enter"
        read executionOption
        if [ $executionOption == "1" ]
        then
            echo "**************************"
            echo "Running...!!!"
            echo "**************************"
      
            flutter run --flavor QA -t lib/main_qa.dart
        else 
            echo "Enter 1 to build APK and  2 to build AAB and press Enter"
            read input
             if [ $input == "1" ]
            then
                echo "**************************"
                echo "Building APK"
                echo "**************************"
                flutter build apk --flavor QA -t lib/main_qa.dart --build-name=$2 --build-number=$3
            else 
                echo "**************************"
                echo "Building AAB"
                echo "**************************"
                flutter build appbundle --release --flavor QA -t lib/main_qa.dart --build-name=$2 --build-number=$3
            fi
        fi
    elif [ $1 == "ios" ]
    then
        echo "**************************"
        echo "Building and Running for IOS"
        echo "**************************"
        flutter run  --flavor QA -t lib/main_qa.dart
    else 
        echo "The given platform is not supported"
        exit
    fi
fi


