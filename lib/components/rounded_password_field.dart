import 'package:flutter/material.dart';
import 'package:flutter_application_model/components/text_field_container.dart';
import 'package:flutter_application_model/constants.dart';
import 'package:flutter_application_model/stores/login_store.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final String labelText;
  final String? errorText;
  const RoundedPasswordField({
    Key? key,
    required this.onChanged,
    required this.errorText,
    required this.labelText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginStore loginStore = LoginStore();

    return Observer(
      builder: (_) {
        return TextFieldContainer(
          child: TextField(
            onChanged: onChanged,
            obscureText: !loginStore.passwordVisible,
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(
              errorText: errorText,
              labelText: labelText,
              border: InputBorder.none,
              icon: const Icon(
                Icons.lock,
                color: pPrimaryColor,
              ),
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
          ),
        );
      },
    );
  }
}
