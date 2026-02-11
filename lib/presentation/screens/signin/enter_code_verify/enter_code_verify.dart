import 'package:flutter/material.dart';
import 'package:mp_corporation_app/presentation/widgets/primary_button.dart';
import 'package:mp_corporation_app/presentation/widgets/text_input.dart';

class EnterCodeVerifyScreen extends StatelessWidget {
  const EnterCodeVerifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String email = 'johndoe@gmail.com.';
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
                      'Verify Account',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      textAlign: TextAlign.center,
                      'Code has been send to $email.\nEnter the code to verify your account.',
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
                  'Enter Code',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ),
              SizedBox(height: 8),
              customTextInput(
                isObscured: false,
                borderColor: Theme.of(context).colorScheme.outline,
                hintText: '4 Digit Code',
                context: context,
              ),
              Expanded(
                child: SizedBox(
                  child: Center(
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                        children: [
                          const TextSpan(text: "Didn't Receive Code?"),
                          WidgetSpan(
                            alignment: PlaceholderAlignment.middle,
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'Resend Code',
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.outline,
                                  decoration: TextDecoration.underline,
                                  decorationColor: Theme.of(context).colorScheme.outline
                                ),
                              ),
                            ),
                          ),
                          const TextSpan(text: "\nResend Code in 00:59"),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Align(child: primaryButton('Verify Account', context)),
              SizedBox(height: 56),
            ],
          ),
        ),
      ),
    );
  }
}

