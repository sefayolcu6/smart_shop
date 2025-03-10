import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:smart_shop/core/constants/colors_constants.dart';
import 'package:smart_shop/core/constants/images_constants.dart';
import 'package:smart_shop/core/constants/routers/router_names.dart';
import 'package:smart_shop/core/mixins/utils.dart';
import 'package:smart_shop/core/widgets/button_widget.dart';
import 'package:smart_shop/core/widgets/flushbar_widget.dart';
import 'package:smart_shop/core/widgets/textformfield_widget.dart';
import 'package:smart_shop/features/introduction/viewmodel/introduction_cubit.dart';
import 'package:smart_shop/features/introduction/viewmodel/introduction_state.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> with Utils {
  late IntroductionCubit introductionCubit;
  @override
  void initState() {
    introductionCubit = context.read<IntroductionCubit>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Hoş Geldiniz",
          body: "Uygulamamıza hoş geldiniz! İlk kez mi kullanıyorsunuz?",
          image: Lottie.asset(
            height: screenHeigth(context) * 0.3,
            ImagesConstants.instance.firstPageLottie,
          ),
          decoration: PageDecoration(
            pageColor: ColorConstant.instance.primarygreen,
            bodyTextStyle: TextStyle(fontSize: 18.0, color: ColorConstant.instance.white),
            titleTextStyle: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: ColorConstant.instance.white),
          ),
        ),
        PageViewModel(
          title: "Kolay Kullanım",
          body: "Uygulamanın tüm özelliklerini kolayca kullanabilirsiniz.",
          image: Lottie.asset(
            height: screenHeigth(context) * 0.3,
            ImagesConstants.instance.secondPageLottie,
          ),
          decoration: PageDecoration(
            pageColor: ColorConstant.instance.primaryColor,
            bodyTextStyle: TextStyle(fontSize: 18.0, color: Colors.white),
            titleTextStyle: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        PageViewModel(
          title: "Hedeflerinize Ulaşın",
          body: "Uygulama ile hedeflerinize daha hızlı ulaşabilirsiniz.",
          image: Lottie.asset(
            height: screenHeigth(context) * 0.3,
            ImagesConstants.instance.thirdPageLottie,
          ),
          decoration: PageDecoration(
            pageColor: ColorConstant.instance.orange,
            bodyTextStyle: TextStyle(fontSize: 18.0, color: Colors.white),
            titleTextStyle: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        PageViewModel(
          title: "Adınızı kaydederek uygulamayı hemen kullanmaya başlayın..",
          bodyWidget: BlocListener<IntroductionCubit, IntroductionState>(
            listener: (context, state) {
              if (state is IntroductionSuccess) {
                successFlushbar(context: context, title: "Başarılı", description: "Hoş Geldiniz ${state.userName}");
                context.go(RouterNames.dashboard, extra: state.userName);
              } else if (state is IntroductionError) {
                errorFlushbar(context: context, title: "Başarısız", description: state.errorMessage);
              }
            },
            child: Column(
              spacing: 10,
              children: [
                AppTextFormField(label: "Adınızı Girin", controller: introductionCubit.nameController),
                AppElevatedButton(
                    child: Text("Kaydet"),
                    onPressed: () async {
                      await introductionCubit.saveNameInHive();
                    }),
              ],
            ),
          ),
          image: Lottie.asset(
            height: screenHeigth(context) * 0.3,
            ImagesConstants.instance.fourthPageLottie,
          ),
          decoration: PageDecoration(
            pageColor: ColorConstant.instance.red,
            bodyTextStyle: TextStyle(fontSize: 18.0, color: Colors.white),
            titleTextStyle: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ],
      onDone: () {
        // Kullanıcı "Get Started" butonuna tıkladığında yapılacak işlemler.
        // context.go(RouterNames.dashboard);
      },
      onSkip: () {
        // Kullanıcı "Skip" butonuna tıkladığında yapılacak işlemler.
        // context.go(RouterNames.dashboard);
      },
      showSkipButton: true,
      // skip: const Text("Atla"),
      skip: const SizedBox(),
      next: const Icon(Icons.arrow_forward),
      done: const SizedBox(),
      // done: const Text("Başla", style: TextStyle(fontWeight: FontWeight.bold)),
      dotsDecorator: DotsDecorator(
        size: Size(10.0, 10.0),
        activeSize: Size(22.0, 10.0),
        color: ColorConstant.instance.grey,
        activeColor: ColorConstant.instance.red,
        spacing: EdgeInsets.symmetric(horizontal: 3.0),
      ),
    );
  }
}
