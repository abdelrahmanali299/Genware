import 'package:flutter/material.dart';
import 'package:genware/core/utils/app_routers.dart';
import 'package:genware/costants.dart';
import 'package:genware/features/auth/presentation/views/widgets/custom_button.dart';
import 'package:genware/features/auth/presentation/views/widgets/custom_text_button.dart';
import 'package:genware/features/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:go_router/go_router.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Welcome \nBack!',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 32),
          CustomTextFormField(
            icon: Icons.person,
            text: 'Username or Email',
            textcolor: Color(0xff676767),
            iconcolor: Color(0xff676767),
          ),
          const SizedBox(height: 32),
          CustomTextFormField(
            icon: Icons.lock,
            text: 'Password',
            textcolor: Color(0xff676767),
            iconcolor: Color(0xff676767),
            isPassword: true,
          ),

          Align(
            alignment: AlignmentGeometry.centerRight,
            child: CustomTextButton(
              text: 'Forget Password?',
              textColor: Colors.red,
            ),
          ),
          SizedBox(height: 60),
          CustomButton(
            color: kPrimaryColor,
            text: 'Login',
            textColor: Colors.white,
          ),
          SizedBox(height: 40),
          Align(
            alignment: AlignmentGeometry.center,
            child: Text('- OR Continue with -'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('don\'t have An Account?'),
              CustomTextButton(
                isUnderlined: true,
                text: 'Sign Up',
                textColor: Colors.red,
                onPressed: () {
                  GoRouter.of(context).push(AppRouters.kSignupView);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
