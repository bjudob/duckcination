import 'package:url_launcher/url_launcher.dart';

whoCalledTheDoctor() async {
  const url = 'tel:+40730537799';
  await launch(url);
}