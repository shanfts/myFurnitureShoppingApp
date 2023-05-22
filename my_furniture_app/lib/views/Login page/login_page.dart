import 'package:my_furniture_app/constants/packageImport.dart';
import 'package:my_furniture_app/views/signUp%20page/sign_up.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
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
                height: 30,
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
              const SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 400,
                  width: 300,
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                        color: darkGrayClr.withOpacity(0.1),
                        spreadRadius: 0.5,
                        blurRadius: 10,
                        offset: const Offset(0, 3))
                  ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 60,
                        width: 245,
                        child: TextField(
                          decoration: InputDecoration(
                              labelText: 'Email',
                              labelStyle: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(fontSize: 14)),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 60,
                        width: 245,
                        child: TextField(
                          decoration: InputDecoration(
                              suffixIcon: const Icon(Icons.visibility_outlined,
                                  size: 20),
                              labelText: 'Password',
                              labelStyle: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(fontSize: 14)),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forgot Password',
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge!
                                .copyWith(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                          )),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                          height: 50,
                          width: 230,
                          child: ElevatedButton(
                              onPressed: () {}, child: const Text('Login'))),
                      const SizedBox(
                        height: 10,
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const SignupPageScreen()),
                            );
                          },
                          child: Text(
                            'SIGN UP',
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge!
                                .copyWith(
                                    fontSize: 17, fontWeight: FontWeight.w400),
                          )),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
