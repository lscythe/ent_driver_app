// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Scheduling System`
  String get appName {
    return Intl.message(
      'Scheduling System',
      name: 'appName',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get loginTitle {
    return Intl.message(
      'Login',
      name: 'loginTitle',
      desc: '',
      args: [],
    );
  }

  /// `Enter your username`
  String get usernameHint {
    return Intl.message(
      'Enter your username',
      name: 'usernameHint',
      desc: '',
      args: [],
    );
  }

  /// `Enter your password`
  String get passwordHint {
    return Intl.message(
      'Enter your password',
      name: 'passwordHint',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get forgotPassword {
    return Intl.message(
      'Forgot Password?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get loginBtn {
    return Intl.message(
      'Login',
      name: 'loginBtn',
      desc: '',
      args: [],
    );
  }

  /// `Scheduling System`
  String get homeTitle {
    return Intl.message(
      'Scheduling System',
      name: 'homeTitle',
      desc: '',
      args: [],
    );
  }

  /// `Check In`
  String get checkIn {
    return Intl.message(
      'Check In',
      name: 'checkIn',
      desc: '',
      args: [],
    );
  }

  /// `Check Out`
  String get checkOut {
    return Intl.message(
      'Check Out',
      name: 'checkOut',
      desc: '',
      args: [],
    );
  }

  /// `Schedule`
  String get schedule {
    return Intl.message(
      'Schedule',
      name: 'schedule',
      desc: '',
      args: [],
    );
  }

  /// `Trip`
  String get trip {
    return Intl.message(
      'Trip',
      name: 'trip',
      desc: '',
      args: [],
    );
  }

  /// `Add Trip Form`
  String get addTripForm {
    return Intl.message(
      'Add Trip Form',
      name: 'addTripForm',
      desc: '',
      args: [],
    );
  }

  /// `Edit Trip Form`
  String get editTripForm {
    return Intl.message(
      'Edit Trip Form',
      name: 'editTripForm',
      desc: '',
      args: [],
    );
  }

  /// `Message`
  String get message {
    return Intl.message(
      'Message',
      name: 'message',
      desc: '',
      args: [],
    );
  }

  /// `Please check in first to access trip form.`
  String get notCheckIn {
    return Intl.message(
      'Please check in first to access trip form.',
      name: 'notCheckIn',
      desc: '',
      args: [],
    );
  }

  /// `Driver Name`
  String get checkInDriverPlaceholder {
    return Intl.message(
      'Driver Name',
      name: 'checkInDriverPlaceholder',
      desc: '',
      args: [],
    );
  }

  /// `Active`
  String get active {
    return Intl.message(
      'Active',
      name: 'active',
      desc: '',
      args: [],
    );
  }

  /// `InActive`
  String get inActive {
    return Intl.message(
      'InActive',
      name: 'inActive',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Logout`
  String get logoutTitle {
    return Intl.message(
      'Confirm Logout',
      name: 'logoutTitle',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to log out?`
  String get logoutDesc {
    return Intl.message(
      'Are you sure you want to log out?',
      name: 'logoutDesc',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get ok {
    return Intl.message(
      'OK',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get no {
    return Intl.message(
      'No',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `Vehicle Number`
  String get vehicleNumber {
    return Intl.message(
      'Vehicle Number',
      name: 'vehicleNumber',
      desc: '',
      args: [],
    );
  }

  /// `Trailer Number`
  String get trailerNumber {
    return Intl.message(
      'Trailer Number',
      name: 'trailerNumber',
      desc: '',
      args: [],
    );
  }

  /// `Vehicle Check List`
  String get vehicleCheckList {
    return Intl.message(
      'Vehicle Check List',
      name: 'vehicleCheckList',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get submit {
    return Intl.message(
      'Submit',
      name: 'submit',
      desc: '',
      args: [],
    );
  }

  /// `Checked In:`
  String get checkedIn {
    return Intl.message(
      'Checked In:',
      name: 'checkedIn',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get allMessage {
    return Intl.message(
      'All',
      name: 'allMessage',
      desc: '',
      args: [],
    );
  }

  /// `Alerts`
  String get alertMessage {
    return Intl.message(
      'Alerts',
      name: 'alertMessage',
      desc: '',
      args: [],
    );
  }

  /// `Requests`
  String get requestMessage {
    return Intl.message(
      'Requests',
      name: 'requestMessage',
      desc: '',
      args: [],
    );
  }

  /// `Broadcast`
  String get broadcastMessage {
    return Intl.message(
      'Broadcast',
      name: 'broadcastMessage',
      desc: '',
      args: [],
    );
  }

  /// `Your inbox is empty`
  String get emptyMessageTitle {
    return Intl.message(
      'Your inbox is empty',
      name: 'emptyMessageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Incoming {messageType} message will be listed in this folder`
  String emptyMessageDesc(String messageType) {
    return Intl.message(
      'Incoming $messageType message will be listed in this folder',
      name: 'emptyMessageDesc',
      desc: '',
      args: [messageType],
    );
  }

  /// `Vehicle/Trailer No`
  String get vehicleFilter {
    return Intl.message(
      'Vehicle/Trailer No',
      name: 'vehicleFilter',
      desc: '',
      args: [],
    );
  }

  /// `Date`
  String get date {
    return Intl.message(
      'Date',
      name: 'date',
      desc: '',
      args: [],
    );
  }

  /// `From: {from}`
  String tripFrom(Object from) {
    return Intl.message(
      'From: $from',
      name: 'tripFrom',
      desc: '',
      args: [from],
    );
  }

  /// `To: {to}`
  String tripTo(String to) {
    return Intl.message(
      'To: $to',
      name: 'tripTo',
      desc: '',
      args: [to],
    );
  }

  /// `Container Size: {size}`
  String tripSize(String size) {
    return Intl.message(
      'Container Size: $size',
      name: 'tripSize',
      desc: '',
      args: [size],
    );
  }

  /// `Container No`
  String get containerNo {
    return Intl.message(
      'Container No',
      name: 'containerNo',
      desc: '',
      args: [],
    );
  }

  /// `Transport From`
  String get transportFrom {
    return Intl.message(
      'Transport From',
      name: 'transportFrom',
      desc: '',
      args: [],
    );
  }

  /// `Deliver To`
  String get deliverTo {
    return Intl.message(
      'Deliver To',
      name: 'deliverTo',
      desc: '',
      args: [],
    );
  }

  /// `Container Size`
  String get containerSize {
    return Intl.message(
      'Container Size',
      name: 'containerSize',
      desc: '',
      args: [],
    );
  }

  /// `Trip Form Not Found`
  String get tripFormFilterErrorTitle {
    return Intl.message(
      'Trip Form Not Found',
      name: 'tripFormFilterErrorTitle',
      desc: '',
      args: [],
    );
  }

  /// `Please change the parameters to find another trip form.`
  String get tripFormFilterErrorDesc {
    return Intl.message(
      'Please change the parameters to find another trip form.',
      name: 'tripFormFilterErrorDesc',
      desc: '',
      args: [],
    );
  }

  /// `Filter`
  String get filter {
    return Intl.message(
      'Filter',
      name: 'filter',
      desc: '',
      args: [],
    );
  }

  /// `Please change to other date to filter with vehicle/trailer no`
  String get changeDateError {
    return Intl.message(
      'Please change to other date to filter with vehicle/trailer no',
      name: 'changeDateError',
      desc: '',
      args: [],
    );
  }

  /// `Calendar Info`
  String get calendarInfo {
    return Intl.message(
      'Calendar Info',
      name: 'calendarInfo',
      desc: '',
      args: [],
    );
  }

  /// `Standby`
  String get standby {
    return Intl.message(
      'Standby',
      name: 'standby',
      desc: '',
      args: [],
    );
  }

  /// `Paid Leave`
  String get paidLeave {
    return Intl.message(
      'Paid Leave',
      name: 'paidLeave',
      desc: '',
      args: [],
    );
  }

  /// `Unpaid Leave`
  String get unpaidLeave {
    return Intl.message(
      'Unpaid Leave',
      name: 'unpaidLeave',
      desc: '',
      args: [],
    );
  }

  /// `Pending Leave`
  String get pendingLeave {
    return Intl.message(
      'Pending Leave',
      name: 'pendingLeave',
      desc: '',
      args: [],
    );
  }

  /// `Medical Leave`
  String get medicalLeave {
    return Intl.message(
      'Medical Leave',
      name: 'medicalLeave',
      desc: '',
      args: [],
    );
  }

  /// `Working`
  String get working {
    return Intl.message(
      'Working',
      name: 'working',
      desc: '',
      args: [],
    );
  }

  /// `Leave Type`
  String get leaveType {
    return Intl.message(
      'Leave Type',
      name: 'leaveType',
      desc: '',
      args: [],
    );
  }

  /// `Leave Date`
  String get leaveDate {
    return Intl.message(
      'Leave Date',
      name: 'leaveDate',
      desc: '',
      args: [],
    );
  }

  /// `Days`
  String get days {
    return Intl.message(
      'Days',
      name: 'days',
      desc: '',
      args: [],
    );
  }

  /// `Request Leave`
  String get requestLeave {
    return Intl.message(
      'Request Leave',
      name: 'requestLeave',
      desc: '',
      args: [],
    );
  }

  /// `You have {balance} days but are trying to apply for {request} days.`
  String insufficientLeaveBalance(String balance, String request) {
    return Intl.message(
      'You have $balance days but are trying to apply for $request days.',
      name: 'insufficientLeaveBalance',
      desc: '',
      args: [balance, request],
    );
  }

  /// `Location Access`
  String get locationPermissionTitle {
    return Intl.message(
      'Location Access',
      name: 'locationPermissionTitle',
      desc: '',
      args: [],
    );
  }

  /// `Smart Driver collects location data to enable identification location even when the app is closed or not in use.`
  String get locationPermissionDesc {
    return Intl.message(
      'Smart Driver collects location data to enable identification location even when the app is closed or not in use.',
      name: 'locationPermissionDesc',
      desc: '',
      args: [],
    );
  }

  /// `Allow`
  String get allow {
    return Intl.message(
      'Allow',
      name: 'allow',
      desc: '',
      args: [],
    );
  }

  /// `Skip (app would not work properly)`
  String get notNow {
    return Intl.message(
      'Skip (app would not work properly)',
      name: 'notNow',
      desc: '',
      args: [],
    );
  }

  /// `Open Settings`
  String get openSetting {
    return Intl.message(
      'Open Settings',
      name: 'openSetting',
      desc: '',
      args: [],
    );
  }

  /// `Enable`
  String get enable {
    return Intl.message(
      'Enable',
      name: 'enable',
      desc: '',
      args: [],
    );
  }

  /// `Enable Location`
  String get enableLocationTitle {
    return Intl.message(
      'Enable Location',
      name: 'enableLocationTitle',
      desc: '',
      args: [],
    );
  }

  /// `Update Location Setting`
  String get updateLocationSetting {
    return Intl.message(
      'Update Location Setting',
      name: 'updateLocationSetting',
      desc: '',
      args: [],
    );
  }

  /// `Not Now`
  String get nowNowLocation {
    return Intl.message(
      'Not Now',
      name: 'nowNowLocation',
      desc: '',
      args: [],
    );
  }

  /// `We need to know your location in order to enable identification location`
  String get locationDialogDesc {
    return Intl.message(
      'We need to know your location in order to enable identification location',
      name: 'locationDialogDesc',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
