import 'package:flutter/material.dart';

class OffersPage extends StatelessWidget {
  const OffersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Offer(title: 'Title', desc: 'Description'),
        const Offer(title: 'Title', desc: 'Description'),
        const Offer(title: 'Title', desc: 'Description'),
        const Offer(title: 'Title', desc: 'Description'),
        const Offer(title: 'Title', desc: 'Description'),
        const Offer(title: 'Title', desc: 'Description'),
      ],
    );
  }
}

class Offer extends StatelessWidget {
  final String title;
  final String desc;

  const Offer({super.key, required this.title, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 120,
        child: Card(
          color: Colors.orangeAccent,
          elevation: 8,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("images/background.png"),
              ),
            ),
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.amberAccent,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          title,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.amberAccent,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          desc,
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
