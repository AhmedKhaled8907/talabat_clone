import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:talabat_clone/core/common/widgets/custom_loading_indicator.dart';
import 'package:talabat_clone/core/utils/functions/show_snack_bar.dart';
import 'package:talabat_clone/core/utils/resources/app_routes.dart';
import 'package:talabat_clone/features/auth/presentation/manager/auth_bloc/auth_bloc.dart';
import 'package:talabat_clone/features/auth/presentation/views/widgets/forgot_password_view_body.dart';

import '../../../../../core/utils/resources/app_strings.dart';

class ForgotPasswordBlocConsumer extends StatelessWidget {
  const ForgotPasswordBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthSuccess) {
          showSnackbar(
            context,
            message: AppStrings.resetPasswordSuccessfully,
          );
          GoRouter.of(context).pushReplacement(AppRoutes.kSignInRoute);
        }

        if (state is AuthFailure) {
          showSnackbar(
            context,
            message: state.message,
          );
        }
      },
      builder: (context, state) {
        return CustomLoadingIndicator(
          isLoading: state is AuthLoading,
          child: ForgotPasswordViewBody(),
        );
      },
    );
  }
}