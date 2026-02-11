import 'package:flutter/material.dart';
import 'package:mp_corporation_app/presentation/widgets/primary_button.dart';
import 'package:mp_corporation_app/presentation/widgets/text_input.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Sign in',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
            ),
            const SizedBox(height: 44),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Align(
                    alignment: AlignmentGeometry.centerLeft,
                    child: Text(
                      'ID',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  customTextInput(
                    borderColor: Theme.of(context).colorScheme.outline,
                    hintText: 'Enter your ID',
                    context: context,
                  ),
                  const SizedBox(height: 12),
                  Align(
                    alignment: AlignmentGeometry.centerLeft,
                    child: Text(
                      'Password',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  customTextInput(
                    borderColor: Theme.of(context).colorScheme.outline,
                    hintText: 'Enter your password',
                    context: context,
                  ),
                  const SizedBox(height: 12),
                  Align(
                    alignment: AlignmentGeometry.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot Password?',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w500,
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                          decoration: TextDecoration.underline,
                          decorationColor: Theme.of(context).colorScheme.onSurfaceVariant
                        ),                      
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 52,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: primaryButton('Sign in', context),
            )
          ],
        ),
      ),
    );
  }
}
