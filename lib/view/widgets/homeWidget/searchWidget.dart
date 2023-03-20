import 'package:flutter/material.dart';
import 'package:task_342/controller/web_services/clothes_json.dart';
import 'package:task_342/view/screens/home_screens/details_Screen.dart';

class PostWidgetSearch extends StatelessWidget {
  PostWidgetSearch({super.key, required this.scroll});
  Axis scroll;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 4.0,
        mainAxisSpacing: 4.0,
      ),
      itemCount: ClothesImagModel.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 10),
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return ProductDetails(
                    model: ClothesImagModel[index],
                  );
                },
              ));
            },
            child: Material(
              borderRadius: BorderRadius.circular(15.0),
              color: index % 2 == 0 ? Colors.white : Colors.grey.shade200,
              child: Stack(
                children: [
                  Positioned(
                    right: 4,
                    top: 6,
                    child: CircleAvatar(
                      radius: 14,
                      backgroundColor: Colors.white,
                      child: IconButton(
                        onPressed: () {},
                        icon: index % 3 == 1
                            ? const Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 14,
                              )
                            : const Icon(Icons.favorite_border,
                                color: Colors.grey, size: 14),
                      ),
                    ),
                  ),
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(ClothesImagModel[index].imagePost!),
                        const SizedBox(
                          height: 4.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8, left: 11),
                          child: Column(
                            children: [
                              SizedBox(
                                width: 90,
                                child: Text(
                                  ClothesImagModel[index].textPost!,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
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
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
