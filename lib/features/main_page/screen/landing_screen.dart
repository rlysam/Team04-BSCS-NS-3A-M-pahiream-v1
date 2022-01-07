import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pahiream_frontend/features/main_page/features/switch_button/presentation/cubit/switch_button_cubit.dart';
import 'package:pahiream_frontend/features/main_page/screen/landing_screen_desktop.dart';
import 'package:pahiream_frontend/features/main_page/screen/landing_screen_tablet.dart';
import 'package:pahiream_frontend/utils/Responsive/responsive_layout.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SwitchButtonCubit(),
      child: buildLandingPage(),
    );
  }

  ResponsiveLayout buildLandingPage() {
    return const ResponsiveLayout(
      desktopBody: DesktopLanding(),
      tabletBody: TabletLanding(),
    );
  }
}
