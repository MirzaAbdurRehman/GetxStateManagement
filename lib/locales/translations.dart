import 'package:get/get.dart';
import 'en_us.dart';
import 'ur_pk.dart';
import 'tr_tr.dart';
import 'ar_sa.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': enUS,
    'ur_PK': urPK,
    'tr_TR': trTR,
    'ar_SA': arSA,
  };
}