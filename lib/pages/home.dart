import 'package:demo_app/models/category_models.dart';
import 'package:demo_app/models/diet_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  HomePage({super.key, required String title});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CategoryModels> categories = [];
  List<ReadModel> read = [];

  void _getInitialInfo() {
    categories = CategoryModels.getCategories();
    read = ReadModel.getread();
  }

  Container _searchField() {
    return Container(
      margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF000000).withOpacity(0.11),
            blurRadius: 40,
            spreadRadius: 0.0,
          )
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            contentPadding: const EdgeInsets.all(12),
            hintStyle: const TextStyle(color: Color(0xffDDDADA), fontSize: 14),
            prefixIcon: Padding(
              padding: const EdgeInsets.all(3),
              child: SvgPicture.asset('assets/icons/search.svg'),
            ),
            suffixIcon: SizedBox(
              width: 100,
              child: IntrinsicHeight(
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                const VerticalDivider(
                  color: Color(0xffDDDADA),
                  indent: 10,
                  endIndent: 10,
                  thickness: 0.1,
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: SvgPicture.asset('assets/icons/filter.svg'),
                )
              ])),
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none)),
      ),
    );
  }

  Column _categoriesSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 19),
          child: Text(
            'Category',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        // ignore: sized_box_for_whitespace
        Container(
            height: 100,
            // color: Colors.green,
            child: ListView.separated(
              itemCount: categories.length,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 20, right: 20),
              separatorBuilder: (context, index) => const SizedBox(
                width: 25,
              ),
              itemBuilder: (context, index) {
                return Container(
                  width: 100,
                  decoration: BoxDecoration(
                      color: categories[index].boxColor.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(16)),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 100,
                          height: 50,
                          decoration: const BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                          child: SvgPicture.asset(
                            categories[index].iconpath,
                          ),
                        ),
                        Text(
                          categories[index].name,
                          style: const TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        )
                      ]),
                );
              },
            ))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    _getInitialInfo();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'readme',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.all(15),
            // alignment: Alignment.center,
            width: 37,
            decoration: BoxDecoration(
              color: const Color(0xFFFCFDFD),
              borderRadius: BorderRadius.circular(10),
            ),
            child: SvgPicture.asset('assets/icons/chevron-left.svg',
                height: 10, width: 10),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.all(15),
              // alignment: Alignment.center,
              width: 37,
              decoration: BoxDecoration(
                  color: const Color(0xFFFCFDFD),
                  borderRadius: BorderRadius.circular(10)),
              child:
                  SvgPicture.asset('assets/icons/ham.svg', height: 5, width: 5),
            ),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _searchField(),
          const SizedBox(
            height: 40,
          ),
          _categoriesSection(),
          const SizedBox(
            height: 40,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Recommendation\nfor reading',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              // ignore: sized_box_for_whitespace
              Container(
                //color: Colors.lightBlue,
                height: 210,
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Container(
                      width: 205,
                      decoration: BoxDecoration(
                        color: read[index].boxColor.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 100,
                              height: 70,
                              decoration: const BoxDecoration(
                                  //color: Colors.white,
                                  shape: BoxShape.rectangle),
                              child: SvgPicture.asset(read[index].iconPath),
                            ),
                            Text(read[index].name,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black,
                                  fontSize: 20,
                                )),
                            Text(
                              '${read[index].level} | ${read[index].duration}|${read[index].read}',
                              style: const TextStyle(
                                color: Color(0xff7B6F72),
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Container(
                              height: 45,
                              width: 130,
                              decoration: BoxDecoration(
                                  gradient: const LinearGradient(colors: [
                                    Color(0xff9DCEFF),
                                    Color(0xff92A3FD),
                                  ]),
                                  borderRadius: BorderRadius.circular(50)),
                              child: const Center(
                                child: Text(
                                  'view',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            )
                          ]),
                    );
                  },
                  // ignore: prefer_const_constructors
                  separatorBuilder: (context, index) => SizedBox(
                    width: 25,
                  ),
                  itemCount: read.length,
                  scrollDirection: Axis.horizontal,
                  // ignore: prefer_const_constructors
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
