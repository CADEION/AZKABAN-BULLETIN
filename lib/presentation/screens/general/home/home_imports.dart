import 'package:animation_wrappers/animations/faded_scale_animation.dart';
import 'package:auto_route/auto_route.dart';
import 'package:azkaban_bulletin/core/constants/my_assets.dart';
import 'package:azkaban_bulletin/core/constants/my_colors.dart';
import 'package:azkaban_bulletin/presentation/routers/router_import.gr.dart';
import 'package:azkaban_bulletin/presentation/screens/general/home/home_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i18n_extension/i18n_extension.dart';
import 'package:velocity_bloc/cubit/velocity_cubit/velocity_cubit.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../../../../data/repositories/repositories.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';


part 'home.dart';
part 'home.i18n.dart';
part 'home_view_model.dart';
part 'home_details.dart';
