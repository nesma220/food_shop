import 'package:flutter/material.dart';
import 'package:task_342/controller/web_services/clothes_json.dart';
import 'package:task_342/main.dart';

class PostWidget extends StatelessWidget {
  PostWidget({super.key, required this.scroll});
  Axis scroll;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 220,
          child: ListView.builder(
            scrollDirection: scroll,
            itemCount: ClothesImagModel.length,
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 7, vertical: 10),
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: Material(
                    borderRadius: BorderRadius.circular(15.0),
                    color: index % 2 == 0 ? Colors.white : Colors.grey.shade200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(ClothesImagModel[index].imagePost!),
                        const SizedBox(
                          height: 12.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8, left: 11),
                          child: Column(
                            children: [
                              Text(
                                ClothesImagModel[index].textPost!,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(
                                height: 6.0,
                              ),
                              Text(
                                '\$${ClothesImagModel[index].pricePost}',
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
