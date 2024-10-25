import 'package:auto_route/auto_route.dart';
import 'package:azkaban_bulletin/core/constants/my_assets.dart';
import 'package:azkaban_bulletin/data/datasources/remote/api_client.dart';
import 'package:azkaban_bulletin/data/repositories/tags_repo.dart';
import 'package:azkaban_bulletin/presentation/routers/router_import.gr.dart';
import 'package:azkaban_bulletin/presentation/screens/auth/auth_imports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../core/constants/my_colors.dart';
import '../../../data/datasources/remote/api_endpoint.dart';
import '../../common_widgets/common_widget_imports.dart';
import 'onboard_view_model.dart';
import 'widgets/widget_imports.dart';



part 'onboard.dart';