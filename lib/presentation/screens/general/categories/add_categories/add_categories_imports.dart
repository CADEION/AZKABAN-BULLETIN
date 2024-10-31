import 'package:auto_route/auto_route.dart';
import 'package:azkaban_bulletin/data/repositories/repositories.dart';
import 'package:azkaban_bulletin/presentation/routers/router_import.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i18n_extension/i18n_extension.dart';
import 'package:velocity_bloc/cubit/velocity_cubit/velocity_cubit.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../../core/constants/my_colors.dart';
import '../../../../common_widgets/common_widget_imports.dart';
import '../categories_model.dart';

part 'add_categories.dart';
part 'add_categories.i18n.dart';
part 'add_categories_view_model.dart';
