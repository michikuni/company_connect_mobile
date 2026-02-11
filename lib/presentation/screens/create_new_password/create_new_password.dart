import 'package:flutter/material.dart';
import 'package:mp_corporation_app/presentation/widgets/primary_button.dart';
import 'package:mp_corporation_app/presentation/widgets/text_input.dart';

class CreateNewPasswordScreen extends StatelessWidget {
  const CreateNewPasswordScreen({super.key});

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
                      'Create New Password',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      textAlign: TextAlign.center,
                      'Please enter and confirm your new password.\nYou will need to login after you reset.',
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
                  'Password',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ),
              SizedBox(height: 8),
              customTextInput(
                isObscured: true,
                borderColor: Theme.of(context).colorScheme.outline,
                hintText: '*********',
                context: context,
              ),
              SizedBox(height: 12,),
              Align(
                alignment: AlignmentGeometry.centerLeft,
                child: Text(
                  'Confirm Password',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ),
              SizedBox(height: 8),
              customTextInput(
                isObscured: true,
                borderColor: Theme.of(context).colorScheme.outline,
                hintText: '*********',
                context: context,
              ),
              Expanded(child: Container()),
              Align(
                child: primaryButton('Reset Password', context),
              ),
              SizedBox(height: 56,)
            ],
          ),
        ),
      ),
    );
  }
}
