// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(messageType) =>
      "Incoming ${messageType} message will be listed in this folder";

  static String m1(balance, request) =>
      "You have ${balance} days but are trying to apply for ${request} days.";

  static String m2(from) => "From: ${from}";

  static String m3(size) => "Container Size: ${size}";

  static String m4(to) => "To: ${to}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "active": MessageLookupByLibrary.simpleMessage("Active"),
        "addTripForm": MessageLookupByLibrary.simpleMessage("Add Trip Form"),
        "alarmPermission": MessageLookupByLibrary.simpleMessage(
            "We require access to this permission to track your current location."),
        "alertMessage": MessageLookupByLibrary.simpleMessage("Alerts"),
        "allMessage": MessageLookupByLibrary.simpleMessage("All"),
        "appName": MessageLookupByLibrary.simpleMessage("Scheduling System"),
        "broadcastMessage": MessageLookupByLibrary.simpleMessage("Broadcast"),
        "calendarInfo": MessageLookupByLibrary.simpleMessage("Calendar Info"),
        "changeDateError": MessageLookupByLibrary.simpleMessage(
            "Please change to other date to filter with vehicle/trailer no"),
        "checkIn": MessageLookupByLibrary.simpleMessage("Check In"),
        "checkInDriverPlaceholder":
            MessageLookupByLibrary.simpleMessage("Driver Name"),
        "checkOut": MessageLookupByLibrary.simpleMessage("Check Out"),
        "checkedIn": MessageLookupByLibrary.simpleMessage("Checked In:"),
        "containerNo": MessageLookupByLibrary.simpleMessage("Container No"),
        "containerSize": MessageLookupByLibrary.simpleMessage("Container Size"),
        "date": MessageLookupByLibrary.simpleMessage("Date"),
        "days": MessageLookupByLibrary.simpleMessage("Days"),
        "deliverTo": MessageLookupByLibrary.simpleMessage("Deliver To"),
        "editTripForm": MessageLookupByLibrary.simpleMessage("Edit Trip Form"),
        "emptyMessageDesc": m0,
        "emptyMessageTitle":
            MessageLookupByLibrary.simpleMessage("Your inbox is empty"),
        "filter": MessageLookupByLibrary.simpleMessage("Filter"),
        "forgotPassword":
            MessageLookupByLibrary.simpleMessage("Forgot Password?"),
        "homeTitle": MessageLookupByLibrary.simpleMessage("Scheduling System"),
        "inActive": MessageLookupByLibrary.simpleMessage("InActive"),
        "insufficientLeaveBalance": m1,
        "later": MessageLookupByLibrary.simpleMessage("Later"),
        "leaveDate": MessageLookupByLibrary.simpleMessage("Leave Date"),
        "leaveType": MessageLookupByLibrary.simpleMessage("Leave Type"),
        "locationPermission": MessageLookupByLibrary.simpleMessage(
            "This app relies on read access to your location. \nWe require access to this permission to find your current location."),
        "loginBtn": MessageLookupByLibrary.simpleMessage("Login"),
        "loginTitle": MessageLookupByLibrary.simpleMessage("Login"),
        "logoutDesc": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to log out?"),
        "logoutTitle": MessageLookupByLibrary.simpleMessage("Confirm Logout"),
        "medicalLeave": MessageLookupByLibrary.simpleMessage("Medical Leave"),
        "message": MessageLookupByLibrary.simpleMessage("Message"),
        "no": MessageLookupByLibrary.simpleMessage("No"),
        "notCheckIn": MessageLookupByLibrary.simpleMessage(
            "Please check in first to access trip form."),
        "notificationPermission": MessageLookupByLibrary.simpleMessage(
            "We require access to this permission to send you notification."),
        "ok": MessageLookupByLibrary.simpleMessage("OK"),
        "paidLeave": MessageLookupByLibrary.simpleMessage("Paid Leave"),
        "passwordHint":
            MessageLookupByLibrary.simpleMessage("Enter your password"),
        "pendingLeave": MessageLookupByLibrary.simpleMessage("Pending Leave"),
        "permissionNeeded":
            MessageLookupByLibrary.simpleMessage("Permission Needed"),
        "requestLeave": MessageLookupByLibrary.simpleMessage("Request Leave"),
        "requestMessage": MessageLookupByLibrary.simpleMessage("Requests"),
        "schedule": MessageLookupByLibrary.simpleMessage("Schedule"),
        "standby": MessageLookupByLibrary.simpleMessage("Standby"),
        "submit": MessageLookupByLibrary.simpleMessage("Submit"),
        "trailerNumber": MessageLookupByLibrary.simpleMessage("Trailer Number"),
        "transportFrom": MessageLookupByLibrary.simpleMessage("Transport From"),
        "trip": MessageLookupByLibrary.simpleMessage("Trip"),
        "tripFormFilterErrorDesc": MessageLookupByLibrary.simpleMessage(
            "Please change the parameters to find another trip form."),
        "tripFormFilterErrorTitle":
            MessageLookupByLibrary.simpleMessage("Trip Form Not Found"),
        "tripFrom": m2,
        "tripSize": m3,
        "tripTo": m4,
        "unpaidLeave": MessageLookupByLibrary.simpleMessage("Unpaid Leave"),
        "usernameHint":
            MessageLookupByLibrary.simpleMessage("Enter your username"),
        "vehicleCheckList":
            MessageLookupByLibrary.simpleMessage("Vehicle Check List"),
        "vehicleFilter":
            MessageLookupByLibrary.simpleMessage("Vehicle/Trailer No"),
        "vehicleNumber": MessageLookupByLibrary.simpleMessage("Vehicle Number"),
        "working": MessageLookupByLibrary.simpleMessage("Working"),
        "yes": MessageLookupByLibrary.simpleMessage("Yes")
      };
}
