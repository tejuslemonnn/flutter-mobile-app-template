import 'package:flutter/material.dart';
import 'package:flutter_mobile_template/core/constants/enums/icon_enums.dart';
import 'package:flutter_mobile_template/core/extensions/string_extensions.dart';

import 'package:flutter_svg/flutter_svg.dart';

extension IconExtensions on IconEnums {
  Widget get appIcons {
    switch (this) {
      case IconEnums.menu:
        return SvgPicture.asset("menu".toSvg);
    }
  }
}
