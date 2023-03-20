import 'package:flutter/material.dart';
import 'package:task_342/routes/app_router.dart';

class WalletsScreen extends StatefulWidget {
  WalletsScreen({super.key});

  @override
  State<WalletsScreen> createState() => _WalletsScreenState();
}

class _WalletsScreenState extends State<WalletsScreen> {
//  PageController pageController ;
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            navigatorPop(context);
            //   AppRouter.back();
          },
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.black,
        ),
        title: const Text(
          'My Wallets',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              navigatorPop(context);
              //     AppRouter.back();
            },
            icon: const Icon(Icons.more_vert_outlined),
            color: Colors.black,
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              height: 250,
              width: 400,
              child: PageView(
                scrollDirection: Axis.horizontal,
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                children: const [
                  MyCard(),
                  MyCard(),
                  MyCard(),
                ],
              ),
            ),
          ),
          const SizedBox(height: 29),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              WidgetIndector(
                marginEnd: 4,
                selected: currentPage == 0,
              ),
              WidgetIndector(
                marginEnd: 4,
                selected: currentPage == 1,
              ),
              WidgetIndector(
                selected: currentPage == 2,
              ),
            ],
          ),
          const SizedBox(height: 33),
          const Padding(
            padding: EdgeInsets.only(left: 35),
            child: Text(
              'Recent transactions',
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
            child: Container(
              height: 340,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return const RecentWidget();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RecentWidget extends StatelessWidget {
  const RecentWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: EdgeInsets.only(top: 10, bottom: 10),
          height: 74,
          width: 84,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade200,
              image: const DecorationImage(
                  image: AssetImage('assets/images/bottomImage/shirts.png'))),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Henley Shirts',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              '23 Mar’2021',
              style: TextStyle(fontSize: 13, color: Colors.grey),
            ),
          ],
        ),
        const SizedBox(
          width: 25,
        ),
        const Text(
          '\$250',
          style: TextStyle(
              fontWeight: FontWeight.w500, fontSize: 16, color: Colors.red),
        ),
      ],
    );
  }
}

class WidgetIndector extends StatelessWidget {
  WidgetIndector({super.key, this.marginEnd = 0, required this.selected});

  final double marginEnd;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: selected ? 16 : 14,
      height: selected ? 16 : 14,
      decoration: BoxDecoration(
        color: selected ? Colors.orange.shade800 : Colors.grey,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsetsDirectional.only(end: marginEnd),
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        width: 200,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: const LinearGradient(colors: [
            Color.fromARGB(255, 238, 139, 141),
            Color(0xffF38959),
            Color.fromARGB(255, 238, 139, 141),
            Color.fromARGB(255, 238, 124, 90),
            Color.fromARGB(255, 219, 146, 229),
          ]),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const Text(
                'Platinum Card',
                style: TextStyle(color: Colors.white),
              ),
              trailing: Image.asset('assets/images/bottomImage/visa.png'),
            ),
            Image.asset('assets/images/bottomImage/card1.png'),
            const SizedBox(height: 30),
            const Text(
              '123 579 4685',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            const SizedBox(height: 10),
            const Text(
              'Valid   20/09/2023',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
