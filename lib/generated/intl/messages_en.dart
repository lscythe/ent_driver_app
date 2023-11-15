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

  static String m1(from) => "From: ${from}";

  static String m2(size) => "Container Size: ${size}";

  static String m3(to) => "To: ${to}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "active": MessageLookupByLibrary.simpleMessage("Active"),
        "addTripForm": MessageLookupByLibrary.simpleMessage("Add Trip Form"),
        "alertMessage": MessageLookupByLibrary.simpleMessage("Alerts"),
        "allMessage": MessageLookupByLibrary.simpleMessage("All"),
        "appName": MessageLookupByLibrary.simpleMessage("Scheduling System"),
        "broadcastMessage": MessageLookupByLibrary.simpleMessage("Broadcast"),
        "changeDateError": MessageLookupByLibrary.simpleMessage(
            "Please change to other date to filter with vehicle/trailer no",),
        "checkIn": MessageLookupByLibrary.simpleMessage("Check In"),
        "checkInDriverPlaceholder":
            MessageLookupByLibrary.simpleMessage("Driver Name"),
        "checkOut": MessageLookupByLibrary.simpleMessage("Check Out"),
        "checkedIn": MessageLookupByLibrary.simpleMessage("Checked In:"),
        "containerNo": MessageLookupByLibrary.simpleMessage("Container No"),
        "containerSize": MessageLookupByLibrary.simpleMessage("Container Size"),
        "date": MessageLookupByLibrary.simpleMessage("Date"),
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
        "loginBtn": MessageLookupByLibrary.simpleMessage("Login"),
        "loginTitle": MessageLookupByLibrary.simpleMessage("Login"),
        "logoutDesc": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to log out?",),
        "logoutTitle": MessageLookupByLibrary.simpleMessage("Confirm Logout"),
        "message": MessageLookupByLibrary.simpleMessage("Message"),
        "no": MessageLookupByLibrary.simpleMessage("No"),
        "notCheckIn": MessageLookupByLibrary.simpleMessage(
            "Please check in first to access trip form.",),
        "ok": MessageLookupByLibrary.simpleMessage("OK"),
        "passwordHint":
            MessageLookupByLibrary.simpleMessage("Enter your password"),
        "requestMessage": MessageLookupByLibrary.simpleMessage("Requests"),
        "schedule": MessageLookupByLibrary.simpleMessage("Schedule"),
        "submit": MessageLookupByLibrary.simpleMessage("Submit"),
        "trailerNumber": MessageLookupByLibrary.simpleMessage("Trailer Number"),
        "transportFrom": MessageLookupByLibrary.simpleMessage("Transport From"),
        "trip": MessageLookupByLibrary.simpleMessage("Trip"),
        "tripFormFilterErrorDesc": MessageLookupByLibrary.simpleMessage(
            "Please change the parameters to find another trip form.",),
        "tripFormFilterErrorTitle":
            MessageLookupByLibrary.simpleMessage("Trip Form Not Found"),
        "tripFrom": m1,
        "tripSize": m2,
        "tripTo": m3,
        "usernameHint":
            MessageLookupByLibrary.simpleMessage("Enter your username"),
        "vehicleCheckList":
            MessageLookupByLibrary.simpleMessage("Vehicle Check List"),
        "vehicleFilter":
            MessageLookupByLibrary.simpleMessage("Vehicle/Trailer No"),
        "vehicleNumber": MessageLookupByLibrary.simpleMessage("Vehicle Number"),
        "yes": MessageLookupByLibrary.simpleMessage("Yes"),
      };
}
