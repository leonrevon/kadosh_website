import 'package:kadosh_website/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:kadosh_website/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:kadosh_website/ui/views/about/about_view.dart';
import 'package:kadosh_website/ui/views/home/home_view.dart';
import 'package:kadosh_website/ui/views/startup/startup_view.dart';
import 'package:kadosh_website/ui/views/unknown/unknown_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:kadosh_website/ui/views/team/team_view.dart';
import 'package:kadosh_website/ui/views/events/events_view.dart';
import 'package:kadosh_website/services/locale_service.dart';
// @stacked-import

@StackedApp(
  routes: [
    CustomRoute(page: StartupView, initial: true),
    CustomRoute(page: HomeView),
    CustomRoute(page: AboutView),
    CustomRoute(page: TeamView),
    CustomRoute(page: EventsView),
// @stacked-route

    CustomRoute(page: UnknownView, path: '/404'),

    /// When none of the above routes match, redirect to UnknownView
    RedirectRoute(path: '*', redirectTo: '/404'),
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: RouterService),
    LazySingleton(classType: LocaleService),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
