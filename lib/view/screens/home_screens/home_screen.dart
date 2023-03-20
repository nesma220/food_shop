import 'package:flutter/material.dart';
import 'package:task_342/controller/web_services/clothes_json.dart';
import 'package:task_342/main.dart';
import 'package:task_342/routes/app_router.dart';
import 'package:task_342/view/widgets/commoned/path/path_image.dart';
import 'package:task_342/view/widgets/containerWidget.dart/container_wiget.dart';
import 'package:task_342/view/widgets/commoned/formFiledWidget.dart';
import 'package:task_342/view/widgets/homeWidget/BaseAppBar.dart';
import 'package:task_342/view/widgets/homeWidget/postWidget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: isDark ? Colors.black26 : Colors.white,
      appBar: BaseAppBar(
        // onTap: () => ZoomDrawer.of(context)!.toggle(),
        appBar: AppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 33, left: 19),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Explore ',
                style: TextStyle(
                  //   color: isDark ? Colors.white : Colors.black,
                  fontSize: 32,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 25.0),
              const Text(
                'best Outfits for you',
                style: TextStyle(
                  letterSpacing: 0.8,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  //  color: isDark ? Colors.white : Colors.black,
                ),
              ),
              const SizedBox(height: 25.0),
              const SearchFormFiledWidget(),
              SizedBox(
                height: 110,
                child: ListView.builder(
                  itemCount: ClothesModel.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return ContainerWidget(model: ClothesModel[index]);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16, left: 3, top: 44),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'New Arrival',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    InkWell(
                      onTap: () {
                        navigatorPushReplac(context, '/Search');
                        //   AppRouter.goTo(screenName: '/Search');
                      },
                      child: const Text(
                        'See All',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              PostWidget(scroll: Axis.horizontal),
            ],
          ),
        ),
      ),
    );
  }
}

class SearchFormFiledWidget extends StatelessWidget {
  const SearchFormFiledWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormFiledWidget(
      // controller: ,
      hintText: 'Search items...',
      pref: const Icon(
        Icons.search,
        color: Colors.grey,
      ),
      suff: InkWell(
        onTap: () {
          navigatorPushReplac(context, '/Search');
          // AppRouter.goToAndRemove(screenName: '/Search');
        },
        child: Container(
          height: 43,
          width: 47,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xffF67952),
            image: DecorationImage(image: AssetImage(PahtImage.fillterIcon)),
          ),
        ),
      ),
    );
  }
}
