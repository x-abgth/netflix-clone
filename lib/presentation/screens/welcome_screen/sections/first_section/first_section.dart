import 'package:flutter/material.dart';

import '../../../../../core/constants/colors.dart';

class FirstSection extends StatelessWidget {
  const FirstSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Stack(
      children: [
        SizedBox(
          height: _size.height,
          width: _size.width,
          child: Image.asset(
            "assets/images/welcome/shows-imgs-bg.jpg",
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: _size.height,
          width: _size.width,
          padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 60),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black.withOpacity(0.7),
                Colors.black.withOpacity(0.4),
                Colors.black.withOpacity(0.75),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: const [0.3, 0.5, 0.7],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              buildHeader(),
              const Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: _size.width * 0.2),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: _size.width * 0.06, vertical: 10),
                      child: const Text(
                        "Unlimited movies, TV shows and more.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 50),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: _size.width * 0.06, vertical: 10),
                      child: const Text(
                        "Watch anywhere. Cancel anytime.",
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: _size.width * 0.04, vertical: 10),
                      child: const Text(
                        "Ready to watch? Enter your email to create or restart your membership.",
                        style: TextStyle(fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.done,
                      cursorColor: Colors.black,
                      style: const TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: "Email address",
                        labelStyle: const TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                        contentPadding: const EdgeInsets.all(25),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(3)),
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide.none),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide.none),
                        suffixIcon: TextButton.icon(
                          onPressed: () {},
                          label: const Icon(Icons.chevron_right, size: 35),
                          icon: const Text(
                            "Get Started",
                            style: TextStyle(fontSize: 25),
                          ),
                          style: TextButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 24, vertical: 21),
                              shape: const RoundedRectangleBorder(),
                              backgroundColor: kBrandColor,
                              primary: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ],
    );
  }

  SizedBox buildHeader() {
    return SizedBox(
      height: 100,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "assets/images/welcome/netflix-full-logo.png",
            fit: BoxFit.cover,
            width: 140,
          ),
          const Spacer(),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 1),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Row(
              children: [
                const Icon(Icons.language, size: 16, color: Colors.white),
                const SizedBox(width: 4),
                DropdownButton(
                    focusColor: Colors.transparent,
                    underline: const SizedBox(),
                    items: const [
                      DropdownMenuItem(
                        value: "English",
                        child: Text(
                          "English",
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                      DropdownMenuItem(
                        value: "Hindi",
                        child: Text(
                          "Hindi",
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ],
                    value: "English",
                    icon: const Icon(
                      Icons.arrow_drop_down,
                      color: Colors.white,
                    ),
                    onChanged: (val) {}),
              ],
            ),
          ),
          const SizedBox(width: 40),
          TextButton(
            onPressed: () {},
            child: const Text(
              "Sign In",
              style: TextStyle(fontSize: 16),
            ),
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3)),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              backgroundColor: kBrandColor,
              primary: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
