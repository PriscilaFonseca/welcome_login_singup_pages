import 'package:flutter/material.dart';
import 'package:flutter_application_model/components/text_field_container.dart';
import 'package:flutter_application_model/constants.dart';
import 'package:flutter_application_model/stores/login_store.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class RoundedPasswordField extends StatefulWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<RoundedPasswordField> createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  @override
  Widget build(BuildContext context) {
    LoginStore loginStore = LoginStore();

    return TextFieldContainer(
      child: Observer(
        builder: (_) {
          return TextField(
            obscureText: !loginStore.passwordVisible,
            onChanged: loginStore.setPassword,
            decoration: InputDecoration(
              labelText: 'Password',
              icon: const Icon(
                Icons.lock,
                color: pPrimaryColor,
              ),
              border: InputBorder.none,
              suffixIcon: InkWell(
                onTap: loginStore.togglePasswordVisibility,
                child: Icon(
                  loginStore.passwordVisible
                      ? Icons.visibility_off
                      : Icons.visibility,
                  color: pPrimaryColor,
                ),
              ),
            ),
            keyboardType: TextInputType.visiblePassword,
          );
        },
      ),
    );
  }
}
