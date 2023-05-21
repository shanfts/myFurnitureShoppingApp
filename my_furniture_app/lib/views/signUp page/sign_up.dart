import 'package:my_furniture_app/constants/packageImport.dart';

class SignupPageScreen extends StatelessWidget {
  const SignupPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Row(
            children: [
              const Divider(
                thickness: 1,
                color: darkGrayClr,
                height: 1,
              ),
              Image.asset(headerIcon),
              const Divider(
                thickness: 1,
                color: darkGrayClr,
                height: 1,
              ),
              const Text('WELCOME'),
              Container(
                height: 440,
                width: 345,
                decoration: const BoxDecoration(color: Colors.white),
                child: Column(
                  children: [
                    SizedBox(
                      width: 300,
                      height: 50,
                      child: TextFormField(),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
