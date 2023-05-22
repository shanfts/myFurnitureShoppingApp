import 'package:my_furniture_app/constants/packageImport.dart';

class SignupPageScreen extends StatelessWidget {
  const SignupPageScreen({super.key});

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
                height: 20,
              ),
              Text(
                'WELCOME',
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(fontSize: 28),
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 490,
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
                              labelText: 'Name',
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
                      SizedBox(
                        height: 60,
                        width: 245,
                        child: TextField(
                          decoration: InputDecoration(
                              suffixIcon: const Icon(Icons.visibility_outlined,
                                  size: 20),
                              labelText: 'Confirm Password',
                              labelStyle: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(fontSize: 14)),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      SizedBox(
                          height: 50,
                          width: 230,
                          child: ElevatedButton(
                              onPressed: () {}, child: const Text('SIGN UP'))),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already have account?',
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                'SIGN IN',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge!
                                    .copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                              )),
                        ],
                      )
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
