import 'package:flutter/material.dart';

enum Paddings {
  a4(EdgeInsets.all(4)),
  a6(EdgeInsets.all(6)),
  a8(EdgeInsets.all(8)),
  a10(EdgeInsets.all(10)),
  a12(EdgeInsets.all(12)),
  a14(EdgeInsets.all(14)),
  a16(EdgeInsets.all(16)),
  a18(EdgeInsets.all(18)),
  v8h12(EdgeInsets.symmetric(vertical: 8, horizontal: 12)),
  v8h16(EdgeInsets.symmetric(vertical: 8, horizontal: 16)),
  v8h18(EdgeInsets.symmetric(vertical: 8, horizontal: 18)),
  v10h12(EdgeInsets.symmetric(vertical: 10, horizontal: 12)),
  v10h16(EdgeInsets.symmetric(vertical: 10, horizontal: 16)),
  v10h18(EdgeInsets.symmetric(vertical: 10, horizontal: 18)),
  v12h16(EdgeInsets.symmetric(vertical: 12, horizontal: 16)),
  v12h18(EdgeInsets.symmetric(vertical: 12, horizontal: 18)),
  v12h20(EdgeInsets.symmetric(vertical: 12, horizontal: 20)),
  v14h18(EdgeInsets.symmetric(vertical: 14, horizontal: 18)),
  v14h20(EdgeInsets.symmetric(vertical: 14, horizontal: 20)),
  v16h20(EdgeInsets.symmetric(vertical: 16, horizontal: 20)),
  v16h24(EdgeInsets.symmetric(vertical: 16, horizontal: 24)),
  v16h28(EdgeInsets.symmetric(vertical: 16, horizontal: 28)),
  v16h32(EdgeInsets.symmetric(vertical: 18, horizontal: 32));

  const Paddings(this.size);

  final EdgeInsets size;
}
