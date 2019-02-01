// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:typed_data';

import 'geometry.dart';

bool rectIsValid(Rect rect) {
  assert(rect != null, 'Rect argument was null.');
  assert(
      !(rect.left.isNaN ||
          rect.right.isNaN ||
          rect.top.isNaN ||
          rect.bottom.isNaN),
      'Rect argument contained a NaN value.');
  return true;
}

bool rrectIsValid(RRect rrect) {
  assert(rrect != null, 'RRect argument was null.');
  assert(
      !(rrect.left.isNaN ||
          rrect.right.isNaN ||
          rrect.top.isNaN ||
          rrect.bottom.isNaN),
      'RRect argument contained a NaN value.');
  return true;
}

bool offsetIsValid(Offset offset) {
  assert(offset != null, 'Offset argument was null.');
  assert(!offset.dx.isNaN && !offset.dy.isNaN,
      'Offset argument contained a NaN value.');
  return true;
}

bool matrix4IsValid(Float64List matrix4) {
  assert(matrix4 != null, 'Matrix4 argument was null.');
  assert(matrix4.length == 16, 'Matrix4 must have 16 entries.');
  return true;
}

bool radiusIsValid(Radius radius) {
  assert(radius != null, 'Radius argument was null.');
  assert(!radius.x.isNaN && !radius.y.isNaN,
      'Radius argument contained a NaN value.');
  return true;
}
