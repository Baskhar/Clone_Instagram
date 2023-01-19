import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:terceiro_projeto/Clone_Instagram/Home.dart';
import 'package:terceiro_projeto/material_banner/material_banner_page.dart';
import 'package:terceiro_projeto/pages/botoes_rotacao_texto/botes_rotacao_texto_page.dart';
import 'package:terceiro_projeto/pages/button_navigator_bar/button_navigator_bar_page.dart';
import 'package:terceiro_projeto/pages/cidades/cidades_page.dart';
import 'package:terceiro_projeto/pages/circle_avatar/circle_avatar_page.dart';
import 'package:terceiro_projeto/pages/colors/colors_page.dart';
import 'package:terceiro_projeto/pages/container/container_page.dart';
import 'package:terceiro_projeto/pages/dialogs/dialogs_page.dart';
import 'package:terceiro_projeto/pages/forms/forms_page.dart';
import 'package:terceiro_projeto/pages/home/home_page.dart';
import 'package:terceiro_projeto/pages/layout_builder/layout_builder_page.dart';
import 'package:terceiro_projeto/pages/media_query/media_query_page.dart';
import 'package:terceiro_projeto/pages/rows_columns/row_colum_page.dart';
import 'package:terceiro_projeto/pages/scrolls/listview_page.dart';
import 'package:terceiro_projeto/pages/scrolls/singlechildscrollview_page.dart';
import 'package:terceiro_projeto/pages/snackbar/snackbar_page.dart';
import 'package:terceiro_projeto/pages/stack/stack_page.dart';
import 'package:terceiro_projeto/pages/stack/stack_page2.dart';

void main() => runApp(
  DevicePreview(
    enabled: false,//!kReleaseMode,//se não estiver em release mode ele fica ativo
    builder: (context) => MyApp(), // Wrap your app
  ),
);

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      title: "Flutter Demo",
      theme: ThemeData(
      //  primaryColor: Colors.black,
      ),
      routes: {
        '/': (_) => HomePage(),
        '/container': (_) => ContainerPage(),
        '/rows_columns': (_) => RowColumPage(),
        '/media_query': (_) => MediaQueryPage(),
        '/layout_builder': (_) => LayoutBuilderPage(),
        '/botoes_rotacao_texto': (_) => BotoessRotacaoPage(),
        '/singlechildscrollview': (_) => SingleChildScrollView1(),
        '/listview': (_) => ListViewPage(),
        '/dialogs_page': (_) => DialogsPage(),
        '/snackbar_page': (_) => SnackBarPage(),
        '/forms_page': (_) => FormsPage(),
        '/cidades': (_) => CidadesPage(),
        '/stack': (_) => StackPage(),
        '/stack2': (_) => StackPage2(),
        '/button_navigator_bar': (_) => ButtonNavigatorBar(),
        '/circle_avatar': (_) => CircleAvatarPage(),
        '/colors': (_) => ColorsPage(),
        '/material_banner': (_) => MaterialBannerPage(),
        '/instragram_main': (_) => HomeInsta(),
      },
    );

  }
}
