import 'package:crypto_ui/coin_tile.dart';
import 'package:flutter/material.dart';

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  _WalletState createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
          child: const Align(
            alignment: Alignment.center,
            child: Text('Wallet'),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'Balance',
          style: Theme.of(context)
              .textTheme
              .headlineMedium
              ?.copyWith(color: Colors.green[400]),
        ),
        const SizedBox(
          height: 20,
        ),
        ListView(
          children: [
            const CoinTile(
              requiredIcon: Icon(Icons.currency_bitcoin_outlined),
              title: 'BTC',
              subtitle: 'Subtitle',
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {},
              child: ListTile(
                tileColor: Colors.white,
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withOpacity(0.7),
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.green,
                  ),
                ),
                title: const Text('Add Crypto'),
                subtitle: const Text('Create Wallet To Crypto'),
              ),
            ),
          ],
        )
      ],
    );
  }
}
