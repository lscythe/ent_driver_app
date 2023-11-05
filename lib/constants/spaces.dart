import 'package:flutter/material.dart';

enum Spaces {
  h2(SizedBox(height: 2)),
  h4(SizedBox(height: 4)),
  h8(SizedBox(height: 8)),
  h10(SizedBox(height: 10)),
  h12(SizedBox(height: 12)),
  h14(SizedBox(height: 14)),
  h16(SizedBox(height: 16)),
  h18(SizedBox(height: 18)),
  h20(SizedBox(height: 20)),
  h24(SizedBox(height: 24)),
  h28(SizedBox(height: 28)),
  h32(SizedBox(height: 32)),
  w2(SizedBox(width: 2)),
  w4(SizedBox(width: 4)),
  w8(SizedBox(width: 8)),
  w10(SizedBox(width: 10)),
  w12(SizedBox(width: 12)),
  w14(SizedBox(width: 14));

  const Spaces(this.size);

  final SizedBox size;
}