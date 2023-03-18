import 'package:url_launcher/url_launcher.dart';

whoCalledTheDoctor() async {
  const url = 'tel:+40741744308';
  await launch(url);
}