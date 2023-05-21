import 'package:my_furniture_app/constants/packageImport.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Expanded(
                  child: Divider(
                    endIndent: 20,
                    thickness: 1,
                    color: mediumGrayColor,
                  ),
                ),
                SizedBox(
                    height: 60,
                    width: 60,
                    child: Image.asset(
                      headerIcon,
                      fit: BoxFit.cover,
                    )),
                const Expanded(
                  child: Divider(
                    indent: 20,
                    thickness: 1,
                    color: mediumGrayColor,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              'Hello !',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(fontSize: 32, color: mediumGrayColor),
            ),
            Text(
              'WELCOME BACK',
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(fontSize: 28),
            ),
            Container(
              height: 440,
              width: 345,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  TextFormField(
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  TextFormField(
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  TextButton(
                      onPressed: () {}, child: const Text('Forgot Password')),
                  SizedBox(
                      height: 50,
                      width: 280,
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text('Login'))),
                  TextButton(onPressed: () {}, child: const Text('SIGN UP')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
