import 'package:url_launcher/url_launcher.dart';

mixin LaunchMixin {
  //Mixins should be created for such packages.

  Future<void> launchSocial(Uri url) async {
    if (!await launchUrl(url)) {
      throw 'Something went wrong! Please try again. $url';
    }
  }

  Future<void> launchInBrowser(Uri url) async {
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }
  }
}
