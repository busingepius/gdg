import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

import "../BLoC/blocs.dart";
import "../constants/constants.dart";

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.filter_list),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10.0),
            child: Chip(
              padding: const EdgeInsets.all(3.0),
              label: Text("David"),
              shape: StadiumBorder(
                side: BorderSide(color: Colors.grey),
              ),
              avatar: CircleAvatar(
                backgroundColor: Colors.grey[300],
                child: Image.asset(
                  "assets/images/logo.png",
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 15.0,
                right: 15.0,
                top: 55.0,
                bottom: 20.0,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                      // text: "Hello Davide",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                      ),
                      children: [
                        TextSpan(text: "Hello David\n"),
                        TextSpan(
                          text: "Welcome Back!",
                          style: TextStyle(
                            fontWeight: FontWeight.w100,
                            fontSize: 15.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Icon(Icons.search),
                  Container(
                    margin: const EdgeInsets.only(left: 15.0),
                    padding: const EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Icon(Icons.pages_rounded),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50.0,
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 15.0),
                itemCount: chipTitles.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  final String title = chipTitles[index];
                  return Container(
                    margin: const EdgeInsets.only(left: 3.0),
                    child: InkWell(
                      onTap: () => title == "Pending"
                          ? BlocProvider.of<IndexBloc>(context)
                              .add(CurrentIndex(value: 1))
                          : null,
                      child: Chip(
                        label: Text(title),
                        shape:
                            StadiumBorder(side: BorderSide(color: Colors.grey)),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 400.0,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 15.0,
                          vertical: 30.0,
                        ),
                        height: 70, width: 70, color: Colors.yellow[200]!),
                  ),                  
                  Positioned.fill(
                    child: GridView(
                      // physics: NeverScrollableScrollPhysics(),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15.0,
                        vertical: 30.0,
                      ),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[100]!,
                            borderRadius: BorderRadius.circular(30.0),
                            border: Border.all(
                              color: Colors.white,
                              width: 15.0,
                              // style:BorderStyle.none,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 12.0),
                                child: Icon(
                                  Icons.discount,
                                  size: 15.0,
                                  color: Colors.black38,
                                ),
                              ),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "230k\n",
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "  Sales",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w100,
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(30.0),
                            border: Border.all(
                              width: 10.0,
                              color: Colors.yellow[200]!,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 12.0),
                                child: Icon(
                                  Icons.account_circle_outlined,
                                  size: 18.0,
                                  color: Colors.black38,
                                ),
                              ),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "8.549k\n",
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "Customers",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w100,
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(30.0),
                            border: Border.all(
                              width: 10.0,
                              color: Colors.yellow[200]!,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 12.0),
                                child: Icon(
                                  Icons.book_sharp,
                                  size: 15.0,
                                  color: Colors.black38,
                                ),
                              ),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "1.423k\n",
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                    TextSpan(
                                      text: " Products",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w100,
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(30.0),
                            border: Border.all(
                              color: Colors.white,
                              width: 15.0,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 12.0),
                                child: Icon(
                                  Icons.shape_line_rounded,
                                  size: 15.0,
                                ),
                              ),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "\$9745\n",
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "Revenue",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w100,
                                        fontSize: 12.0,
                                      ),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
