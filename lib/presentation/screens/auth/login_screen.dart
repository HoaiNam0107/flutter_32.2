import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/services/auth_service.dart';
import '../../../data/repositories/auth_repository_impl.dart';
import '../../../domain/usecases/login_usecase.dart';
import '../../../utils/security_utils.dart';
import '../../blocs/auth_bloc/auth_bloc.dart';
import '../../blocs/auth_bloc/auth_event.dart';
import '../../blocs/auth_bloc/auth_state.dart';
import '../home/home_screen.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(
        LoginUseCase(
          AuthRepositoryImpl(
            AuthService(),
          ),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(title: const Text('Login')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _usernameController,
                decoration: const InputDecoration(labelText: 'Username'),
              ),
              TextField(
                controller: _passwordController,
                decoration: const InputDecoration(labelText: 'Password'),
                obscureText: true,
              ),
              const SizedBox(height: 20),
              BlocConsumer<AuthBloc, AuthState>(
                listener: (context, state) {
                  if (state is AuthSuccess) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                    );
                  } else if (state is AuthFailure) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(state.error)),
                    );
                  }
                },
                builder: (context, state) {
                  if (state is AuthLoading) {
                    return const CircularProgressIndicator();
                  }
                  return RepaintBoundary(
                    child: ElevatedButton(
                      onPressed: () {
                        final username = SecurityUtils.sanitizeInput(
                            _usernameController.text);
                        final password = SecurityUtils.sanitizeInput(
                            _passwordController.text);
                        if (username.isNotEmpty && password.isNotEmpty) {
                          final encryptedUsername =
                              SecurityUtils.encryptInput(username);
                          final encryptedPassword =
                              SecurityUtils.encryptInput(password);
                          print('Encrypted Username: $encryptedUsername');
                          print('Encrypted Password: $encryptedPassword');

                          context.read<AuthBloc>().add(
                                LoginSubmitted(username, password),
                              );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content:
                                  Text('Please enter all required fields.'),
                            ),
                          );
                        }
                      },
                      child: const Text('Login'),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
