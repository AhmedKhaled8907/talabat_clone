import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:talabat_clone/core/common/widgets/custom_loading_indicator.dart';
import 'package:talabat_clone/features/auth/presentation/manager/auth_bloc/auth_bloc.dart';

import 'sign_up_view_body.dart';

class SignUpBlocConsumer extends StatelessWidget {
  const SignUpBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Successfully signed up'),
            ),
          );
        } else if (state is AuthFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.message)),
          );
        }
      },
      builder: (context, state) {
        return CustomLoadingIndicator(
          isLoading: state is AuthLoading,
          child: SignUpViewBody(),
        );
      },
    );
  }
}
