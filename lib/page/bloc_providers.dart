import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ulearn/bloc/app_blocs.dart';
import 'package:ulearn/page/register/bloc/register_blocs.dart';
import 'package:ulearn/page/sign_in/bloc/signin_blocs.dart';
import 'package:ulearn/page/welcome/bloc/welcome_blocs.dart';

class AppBlocProviders {
  static get allBlocProviders => [
        BlocProvider(
          lazy: false,
          create: (context) => WelcomeBloc(),
        ),
        // BlocProvider(
        //   lazy: false,
        //   create: (context) => AppBlocs(),
        // ),
        BlocProvider(create: (context) => SignInBloc()),
        BlocProvider(create: (context) => RegisterBlocs())
      ];
}
