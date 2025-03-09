import 'package:flutter/material.dart';
import 'package:smart_shop/core/constants/colors_constants.dart';
import 'package:smart_shop/core/constants/padding_constants.dart';
import 'package:smart_shop/core/widgets/redirect_menu_card.dart';
import 'package:smart_shop/core/widgets/small_card.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SmartShop'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: PaddingConstant.instance.appPaddingAll16,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 10,
          children: [
            _buildPersonImage(),
            _buildPersonInfo(context),
            _buildScrollHorizontalCardList(),
            _buildForwardCard(),
          ],
        ),
      ),
    );
  }

  CircleAvatar _buildPersonImage() {
    return const CircleAvatar(
      radius: 50,
      child: Icon(Icons.person, size: 40),
    );
  }

  RichText _buildPersonInfo(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: Theme.of(context).textTheme.titleLarge, // Varsayılan stil
        children: [
          TextSpan(
            text: 'Hoş Geldiniz, ',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontSize: 18,
                  color: ColorConstant.instance.grey,
                ),
          ),
          TextSpan(
            text: 'Ahmet Yılmaz',
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: ColorConstant.instance.blueAccent,
                ),
          ),
        ],
      ),
    );
  }

  SingleChildScrollView _buildScrollHorizontalCardList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SmallCard(
            title: "Harcamalarım",
            icon: Icons.wallet,
            onTap: () {},
          ),
          SmallCard(
            title: "Tamamlanan Alışverişler",
            icon: Icons.check_box_outlined,
            onTap: () {},
          ),
          SmallCard(
            title: "Alışveriş Notlarım",
            icon: Icons.note_add_outlined,
            onTap: () {},
          ),
          SmallCard(
            title: "Bekleyen Alışverişler ",
            icon: Icons.timer_sharp,
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Expanded _buildForwardCard() {
    return Expanded(
        child: ListView(children: [
      RedirectMenuCard(
        leadingIcon: Icons.shopping_cart_checkout_rounded,
        onTap: () {},
        title: 'Yeni Alışveriş Listesi',
        subtitle: 'Yeni bir alışveriş listesi oluşturun',
        trailingIcon: Icons.arrow_forward_ios,
      ),
      RedirectMenuCard(
        leadingIcon: Icons.shopify_outlined,
        onTap: () {},
        title: 'Alışveriş Şablonlarım',
        subtitle: 'Yeni bir alışveriş şablon listesi oluşturun',
        trailingIcon: Icons.arrow_forward_ios,
      ),
      RedirectMenuCard(
        leadingIcon: Icons.history,
        onTap: () {},
        title: 'Geçmiş Alışverişler',
        subtitle: 'Önceki alışveriş listelerinize göz atın ve tekrar kullanın',
        trailingIcon: Icons.arrow_forward_ios,
      ),
      RedirectMenuCard(
        leadingIcon: Icons.star_border,
        onTap: () {},
        title: 'Favori Ürünlerim',
        subtitle: 'Sık sık satın aldığınız ürünleri listeleyin ve hızlıca ekleyin',
        trailingIcon: Icons.arrow_forward_ios,
      ),
      RedirectMenuCard(
        leadingIcon: Icons.settings,
        onTap: () {},
        title: 'Uygulama Ayarları',
        subtitle: 'Tercihlerinizi düzenleyin',
        trailingIcon: Icons.arrow_forward_ios,
      ),
      RedirectMenuCard(
        leadingIcon: Icons.person,
        onTap: () {},
        title: 'Kullanıcı Bilgileri',
        subtitle: 'Kullanıcı bilgilerinizi ekleyin veya düzenleyin',
        trailingIcon: Icons.arrow_forward_ios,
      ),
    ]));
  }
}
