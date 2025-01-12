import 'package:crypto_font_icons/crypto_font_icons.dart';
import 'package:crypto_ui/coin_tile.dart';
import 'package:flutter/material.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({super.key});

  @override
  _WalletPageState createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 230,
          decoration: const BoxDecoration(
            color: Colors.teal,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.elliptical(
                200,
                60,
              ),
              bottomRight: Radius.elliptical(
                200,
                60,
              ),
            ),
          ),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              'Wallet Balance',
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
          requiredIcon: CryptoFontIcons.BTC,
          title: 'BTC 0.00',
          subtitle: 'Subtitle',
          background: Colors.yellow[900],
        ),
        const CoinTile(
          requiredIcon: CryptoFontIcons.ETH,
          title: 'ETH 0.00',
          subtitle: 'Sample Value',
          background: Colors.purple,
        ),
        CoinTile(
          requiredIcon: CryptoFontIcons.DOGE,
          title: 'DOGE 0.00',
          subtitle: 'Sample Value',
          background: Colors.yellowAccent[400],
        ),
        const CoinTile(
          requiredIcon: CryptoFontIcons.XRP,
          title: 'XRP 0.00',
          subtitle: 'Sample Value',
          background: Colors.black,
        ),
        const CoinTile(
          requiredIcon: CryptoFontIcons.USDT,
          title: 'USDT',
          subtitle: 'Sample Value',
          background: Colors.green,
        ),
        GestureDetector(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(12.0),
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
        ),
      ],
    );
  }
}
