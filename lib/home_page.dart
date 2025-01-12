import 'package:crypto_font_icons/crypto_font_icons.dart';
import 'package:crypto_ui/coin_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 230,
          decoration: const BoxDecoration(
            color: Colors.teal,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.elliptical(200, 60),
              bottomRight: Radius.elliptical(
                200,
                60,
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
          requiredIcon: CryptoFontIcons.BTC,
          title: 'BTC',
          subtitle: 'Sample Value',
          background: Colors.yellow[900],
          onPressed: () {},
        ),
        CoinTile(
          requiredIcon: CryptoFontIcons.ETH,
          title: 'ETH',
          subtitle: 'Sample Value',
          background: Colors.purple,
          onPressed: () {},
        ),
        CoinTile(
          requiredIcon: CryptoFontIcons.DOGE,
          title: 'DOGE',
          subtitle: 'Sample Value',
          background: Colors.yellowAccent,
          onPressed: () {},
        ),
        CoinTile(
          requiredIcon: CryptoFontIcons.XRP,
          title: 'XRP',
          subtitle: 'Sample Value',
          background: Colors.black,
          onPressed: () {},
        ),
        CoinTile(
          requiredIcon: CryptoFontIcons.USDT,
          title: 'USDT',
          subtitle: 'Sample Value',
          background: Colors.green,
          onPressed: () {},
        ),
      ],
    );
  }
}
