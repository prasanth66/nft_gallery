import 'dart:convert';
import 'package:final_template/app_imports.dart';
import 'package:intl/intl.dart';

class DateTimeManager {
  static String getDayDateFormat(String strDate, String strDateFormat) {
    dynamic dayData =
        '{ "1" : "Mon", "2" : "Tue", "3" : "Wed", "4" : "Thur", "5" : "Fri", "6" : "Sat", "7" : "Sun" }';

    dynamic monthData =
        '{ "1" : "Jan", "2" : "Feb", "3" : "Mar", "4" : "Apr", "5" : "May", "6" : "June", "7" : "Jul", "8" : "Aug", "9" : "Sep", "10" : "Oct", "11" : "Nov", "12" : "Dec" }';

    if (strDate.isEmpty) {
      return '';
    }

    DateTime dateTime = DateTime.parse(strDate);

    return json.decode(dayData)['${dateTime.weekday}'] +
        ", " +
        dateTime.day.toString() +
        " " +
        json.decode(monthData)['${dateTime.month}'] +
        " " +
        dateTime.year.toString();
  }

  static String getYearMonthDarFormatFromDateTime(DateTime value) {
    String strFormattedDate =
        DateFormat(AppStrings.STRING_YEAR_MONTH_DATE).format(value);

    return strFormattedDate;
  }

  static String getDateFormat(String strDate, String strDateFormat) {
    dynamic monthData =
        '{ "1" : "Jan", "2" : "Feb", "3" : "Mar", "4" : "Apr", "5" : "May", "6" : "June", "7" : "Jul", "8" : "Aug", "9" : "Sep", "10" : "Oct", "11" : "Nov", "12" : "Dec" }';

    if (strDate.isEmpty) {
      return '';
    }

    DateTime dateTime = DateTime.parse(strDate);

    return dateTime.day.toString() +
        " " +
        json.decode(monthData)['${dateTime.month}'] +
        ", " +
        dateTime.year.toString();
  }

  static String getTimeFormat(int nTime) {
    String strFormattedTime = '';

    if (nTime > 11) {
      strFormattedTime = (nTime - 12).toString() + " " + "PM";
    } else {
      strFormattedTime = nTime.toString() + " " + "AM";
    }

    return strFormattedTime;
  }

  static String getTimeRangeFormat(int nStartTime, int nEndTime) {
    String strStartTime = '';
    String strEndTime = '';
    String strFormattedTime = '';

    if (nStartTime >= 12) {
      if (nStartTime == 12) {
        strStartTime = nStartTime.toString();
      } else {
        strStartTime = (nStartTime - 12).toString();
      }
    } else {
      strStartTime = nStartTime.toString();
    }

    if (nEndTime >= 12) {
      if (nEndTime == 12) {
        strEndTime = nEndTime.toString() + " " + "PM";
      } else {
        strEndTime = (nEndTime - 12).toString() + " " + "PM";
      }
    } else {
      strEndTime = nEndTime.toString() + " " + "AM";
    }

    strFormattedTime = strStartTime + "-" + strEndTime;
    return strFormattedTime;
  }

  static getDateFormatFromDateTime(String strDate) {
    String strFormattedDate = '';

    strFormattedDate = strDate;

    return strFormattedDate;
  }

  static String getTimeFormatFromDateTime(String strDate) {
    if (strDate.isEmpty) {
      return '';
    }

    DateTime dateTime = DateTime.parse(strDate);
    DateFormat dateFormat = DateFormat("h:mm aa");
    String strTimeFormatted = dateFormat.format(dateTime.toLocal());

    return strTimeFormatted;
  }

  static String timeAgoSinceDate(String strDate, {bool numericDates = true}) {
    if (strDate.isEmpty) {
      return '';
    }

    DateTime notificationDate =
        DateFormat("yyyy-MM-dd HH:mm:ss").parse(strDate);

    final date2 = DateTime.now();
    final difference = date2.difference(notificationDate);

    if (difference.inDays > 8) {
      strDate = getDateMonthFormat(strDate, 'dd/MM/yy');
      return strDate;
    } else if ((difference.inDays / 7).floor() >= 1) {
      return (numericDates) ? '1 week ago' : 'Last week';
    } else if (difference.inDays >= 2) {
      return '${difference.inDays} days ago';
    } else if (difference.inDays >= 1) {
      return (numericDates) ? '1 day ago' : 'Yesterday';
    } else if (difference.inHours >= 2) {
      return '${difference.inHours} hours ago';
    } else if (difference.inHours >= 1) {
      return (numericDates) ? '1 hour ago' : 'An hour ago';
    } else if (difference.inMinutes >= 2) {
      return '${difference.inMinutes} minutes ago';
    } else if (difference.inMinutes >= 1) {
      return (numericDates) ? '1 minute ago' : 'A minute ago';
    } else if (difference.inSeconds >= 3) {
      return '${difference.inSeconds} seconds ago';
    } else {
      return 'Just now';
    }
  }

  static String getDateMonthFormat(String strDate, String strDateFormat) {
    if (strDate.isEmpty) {
      return '';
    }

    DateTime dateTime = DateTime.parse(strDate);
    String strDateFormatted = DateFormat(strDateFormat).format(dateTime);

    return strDateFormatted;
  }
}
