import 'package:carify_clone_two/constants/assets.gen.dart';
import 'package:carify_clone_two/models/company_details_model.dart';

class Dummydb {
  static List<CompanyDetailsModel> CompanyList = [
    CompanyDetailsModel(name: 'INLIVEN', imageUrl: Assets.images.company1.path),
    CompanyDetailsModel(name: 'HOPE', imageUrl: Assets.images.company2.path),
    CompanyDetailsModel(name: 'CPO', imageUrl: Assets.images.company3.path),
    CompanyDetailsModel(
        name: 'OSSURE', imageUrl: Assets.images.company4Ossur.path),
    CompanyDetailsModel(name: 'OSTEON', imageUrl: Assets.images.company5.path),
    CompanyDetailsModel(name: 'REBUILT', imageUrl: Assets.images.company6.path),
    CompanyDetailsModel(name: 'KARE', imageUrl: Assets.images.company7.path),
    CompanyDetailsModel(
        name: 'ENDOLITE', imageUrl: Assets.images.company8.path),
  ];
  static List upperBodyCategory = ['Hand Knee Joint', 'Palm', 'Hand Fingers'];
  static List lowerBodyCategory = ['Knee Joint', 'Foot', 'Socket'];
}
