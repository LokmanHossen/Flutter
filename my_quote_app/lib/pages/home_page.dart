import 'package:flutter/material.dart';
import 'quote_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.horizontal,
        children: [
          QuoteWidget(
            quote:
                "Don't let the noice of other opinions drown out your own inner voice",
            author: "Steven jobs ",
            bgColor: Colors.blue,
            onLikeClick: () {},
            onShareClick: () {},
          ),
          QuoteWidget(
            quote:
                "সুযোগ যদি তোমার দরজায় কড়া না নাড়ে, তবে নতুন একটি দরজা বানাও।",
            author: "মিল্টন বার্লে ",
            bgColor: Color.fromARGB(255, 66, 109, 102),
            onLikeClick: () {},
            onShareClick: () {},
          ),
          QuoteWidget(
            quote:
                "হ্যাঁ এবং না কথা দুটো সবচেয়ে পুরনো এবং সবচেয়ে ছোট। কিন্তু এ কথা দুটো বলতেই সবচেয়ে বেশি ভাবতে হয়।",
            author: "পীথাগোরাস ",
            bgColor: Color.fromARGB(255, 31, 53, 51),
            onLikeClick: () {},
            onShareClick: () {},
          ),
          QuoteWidget(
            quote:
                "ধার্মিকতা আর ধর্মান্ধতা এক জিনিস নয়। ধার্মিকতা মানুষকে আলোর পথে নিয়ে যায় আর ধর্মান্ধতা মানুষকে ধ্বংসের দিকে ঠেলে দেয়। এ দেশের মানুষকে আমি ধার্মিক বলব না কারণ এ দেশের বেশিরভাগ মানুষই ধর্মান্ধ।",
            author: "রেদোয়ান মাসুদ ",
            bgColor: Color.fromARGB(150, 211, 23, 86),
            onLikeClick: () {},
            onShareClick: () {},
          ),
          QuoteWidget(
            quote:
                "আপনি যদি গরীব হয়ে জন্ম নেন তাহলে এটা আপনার দোষ নয়, কিন্তু যদি গরীব থেকেই মারা যান তবে সেটা আপনার দোষ।",
            author: "বিল গেটস ",
            bgColor: Color.fromARGB(255, 114, 69, 15),
            onLikeClick: () {},
            onShareClick: () {},
          ),
          QuoteWidget(
            quote:
                "যারা হৃদয় দিয়ে কাজ করতে পারে না; তাদের অর্জন অন্তঃসারশূন্য, উৎসাহহীন সাফল্য চারদিকে তিক্ততার উদ্ভব ঘটায়।",
            author: "এ পি জে আব্দুল কালাম ",
            bgColor: Colors.brown[300],
            onLikeClick: () {},
            onShareClick: () {},
          ),
        ],
      ),
    );
  }
}
