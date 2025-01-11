import 'package:crypto_ui/coin_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 230,
            decoration: const BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.elliptical(200, 40),
                bottomRight: Radius.elliptical(
                  200,
                  40,
                ),
              ),
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'TestCoin',
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      color: Colors.white,
                    ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          CoinTile(
            requiredIcon: const Icon(Icons.currency_bitcoin),
            title: 'BTC',
            subtitle: 'Sample Value',
            background: Colors.yellow[900],
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
