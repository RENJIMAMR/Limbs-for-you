import 'package:carify_clone_two/constants/app_colors.dart';
import 'package:carify_clone_two/ui/widgets/short_des_container_card.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../constants/assets.gen.dart';
import '../../tools/screen_size.dart';
import 'company_list_viewmodel.dart';

class CompanyListView extends StatelessWidget {
  CompanyListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CompanyListViewmodel>.reactive(
      // onModelReady: (model) => model.startTimer(),
      builder: (context, model, child) {
        return Scaffold(
            backgroundColor: Colors.transparent,
            body: Container(
                height: MediaQuery.sizeOf(context).height,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: Assets.images.backgroundImageLFY //background image
                        .image(fit: BoxFit.cover)
                        .image,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(13),
                  child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: [
                                Text(
                                  'Popular Campanies',
                                  style: TextStyle(
                                    shadows: [
                                      Shadow(
                                        offset: Offset(
                                            3.0, 3.0), // Position of the shadow
                                        blurRadius:
                                            8.0, // Softness of the shadow
                                        color: const Color.fromARGB(
                                                255, 200, 239, 249)
                                            .withOpacity(0.5), // Shadow color
                                      ),
                                    ],
                                    fontSize: 27,
                                    fontWeight: FontWeight.bold,
                                    color: Palette.whiteMain,
                                  ),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.search_rounded,
                                  color: Palette.whiteMain,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ShortDesContainerCard(
                            des:
                                'Endolite India Ltd, an ISO 9001:2015 company, is a joint venture between the Prime Group and the Blatchford Group and has been established for nearly 25 years. It is a Rehabilitation Services Company focused on Prosthetic & Orthotic services through its Company run clinics and dealers. It has its clinics in all major cities of the Country combined with a network of over 250 franchises. ',
                            title: 'Endolite',
                            contact: '04842536055',
                          ),
                          ShortDesContainerCard(
                            title: 'Ottobock',
                            des:
                                'Mobility is the key to living life on your own terms – for people in any age group. We have been striving to provide people with disabilities with the best possible quality of life for over 100 years. Valuable feedback regarding our users’ day-to-day experiences helps our product developers see the world through their eyes.',
                            contact: '',
                          ),
                          ShortDesContainerCard(
                            title: 'Inliven',
                            des:
                                'LIFE WITHOUT LIMITATION Centre for Prosthetics & Orthotics Vytilla,Kochi',
                            contact: '04842334647',
                          ),
                          ShortDesContainerCard(
                            title: 'Hope',
                            des:
                                'HOPE is a Prosthetic & Orthotic Rehabilitation Centre, which manufactures artificial limbs, Silicon Fingers, Fracture bracing, Hand splints, Diabetic footwear, Custom Insoles, Customized Knee Belts, Spinal Jacket for back pain etc. HOPE started functioning in Kakkanad, Ernakulam on July 2021. We have our own fabrication unit and Patient Training Facilities in our new center.',
                            contact: 'tel:07383477565',
                          ),
                          ShortDesContainerCard(
                            title: 'Ossure',
                            des:
                                'Össur focuses its efforts and expertise on helping people to be confident, safe and mobile, regardless of injuries or conditions that could compromise their quality of life.',
                            contact: '',
                          ),
                        ]),
                  ),
                )));
      },
      viewModelBuilder: () => CompanyListViewmodel(),
    );
  }
}
