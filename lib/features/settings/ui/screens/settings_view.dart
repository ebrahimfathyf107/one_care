import 'package:flutter/widgets.dart';

import '../../../../core/customs/custom_scaffold.dart';
import '../widgets/settings_view_body.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});
static const String routeName = '/settingsView';
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(body: 
    SettingsViewBody()) ;
  }
}
