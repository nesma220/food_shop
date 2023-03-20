import 'package:flutter/material.dart';
import 'package:task_342/view/widgets/homeWidget/ElevtedButton.dart';
import 'package:task_342/view/widgets/loginWidgets/buttonWidget.dart';
import 'package:task_342/routes/app_router.dart';

class BottomSheetWidget extends StatefulWidget {
  const BottomSheetWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomSheetWidget> createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {
  final RangeValues _currentRangeValues = const RangeValues(40, 80);
  @override
  Widget build(BuildContext context) {
    RangeLabels labels = RangeLabels(
      _currentRangeValues.start.toString(),
      _currentRangeValues.end.toString(),
    );
    return IconButton(
        onPressed: () {
          showModalBottomSheet<void>(
            isScrollControlled: true,
            context: context,
            builder: (BuildContext context) {
              return Padding(
                padding: const EdgeInsets.only(top: 29),
                child: Container(
                  height: 604,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Clear',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w400),
                            ),
                            const Text(
                              'Filters',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 19),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.grey.shade200,
                              child: IconButton(
                                  onPressed: () {
                                    //   AppRouter.back();
                                    navigatorPop(context);
                                  },
                                  icon: const Icon(
                                    Icons.clear,
                                    size: 16,
                                    color: Colors.black,
                                  )),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        color: Colors.grey,
                        thickness: 0.8,
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 22, left: 20, right: 17),
                        child: Column(
                          children: [
                            const Text(
                              'Category',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(height: 19),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                elevatedButton('New Arrival',
                                    const Color(0xffF67952), Colors.white),
                                elevatedButton('Top Tranding',
                                    const Color(0xffFFFFFF), Colors.black),
                                elevatedButton('Featured Products',
                                    const Color(0xffFFFFFF), Colors.black),
                              ],
                            ),
                            const SizedBox(
                              height: 43,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Pricing',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  '\$50-\$200',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            rangeSlider(_currentRangeValues),
                            const SizedBox(
                              height: 43,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Distance',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  '\$50-\$200',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            rangeSlider(_currentRangeValues),
                            const SizedBox(
                              height: 51,
                            ),
                            ContainerWidgetButtontext(
                              textWidget: 'Apply Filter',
                              bacgroundColorss: const Color(0xffF67952),
                              ontap: () {},
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              width: 256,
                              style: const TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          );
        },
        icon: const Icon(
          Icons.arrow_forward_ios,
          size: 12,
        ));
  }
}

StatefulBuilder rangeSlider(_currentRangeValues) => StatefulBuilder(
      builder: (context, setState) {
        return RangeSlider(
          values: _currentRangeValues,
          max: 100,
          activeColor: const Color(0xffF67952),
          inactiveColor: Colors.grey.shade300,
          divisions: 5,
          labels: RangeLabels(
            _currentRangeValues.start.round().toString(),
            _currentRangeValues.end.round().toString(),
          ),
          onChanged: (RangeValues values) {
            setState(() {
              _currentRangeValues = values;
            });
          },
        );
      },
    );
