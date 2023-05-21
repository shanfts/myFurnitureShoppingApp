import 'package:my_furniture_app/constants/packageImport.dart';
import 'package:my_furniture_app/views/Login%20page/login_page.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('My app'),
      //   actions: const [
      //     ChangeThemeButtonWidget(),
      //   ],
      // ),
      body: Center(
        child: Stack(
          children: [
            SizedBox(
                height: Size.infinite.height,
                width: Size.infinite.width,
                child: Image.asset(
                  getsartedimg,
                  fit: BoxFit.fill,
                )),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'MAKE YOUR',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  Text(
                    'HOME BEAUTIFUL',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'The best simple place where you discover most wonderful furniture and make your home beautiful.',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 55,
                      width: 150,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => const LoginPage()),
                            );
                          },
                          child: const Text('Get Started')),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
