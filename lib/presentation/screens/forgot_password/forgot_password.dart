import 'package:flutter/material.dart';
import 'package:mp_corporation_app/presentation/widgets/primary_button.dart';
import 'package:mp_corporation_app/presentation/widgets/text_input.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back, size: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 92,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Forgot Password',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      textAlign: TextAlign.center,
                      'No worries! Enter your email address below and we will send you a code to reset password.',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32),
              Align(
                alignment: AlignmentGeometry.centerLeft,
                child: Text(
                  'E-mail',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ),
              SizedBox(height: 8),
              customTextInput(
                borderColor: Theme.of(context).colorScheme.outline,
                hintText: 'Enter your email',
                context: context,
              ),
              Expanded(child: Container()),
              Align(
                child: primaryButton('Send Reset Instruction', context),
              ),
              SizedBox(height: 56,)
            ],
          ),
        ),
      ),
    );
  }
}
