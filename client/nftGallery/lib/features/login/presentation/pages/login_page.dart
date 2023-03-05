import 'package:final_template/app_imports.dart';
import 'package:final_template/core/constants/figma_styles.dart';
import 'package:final_template/ui/atoms/button.dart';
import 'package:final_template/ui/atoms/input_box.dart';
import 'package:final_template/ui/custom_spacers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../injection_container.dart';
import '../../../../ui/atoms/alert.dart';
import '../bloc/login_bloc.dart';
import '../widgets/text_underline.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _nameController = TextEditingController();

  final _emailController = TextEditingController();

  final _passwordController = TextEditingController();

  final LoginBloc _loginBloc = sl<LoginBloc>();

  bool createAccount = false;

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return BlocProvider(
        create: (context) => _loginBloc,
      child: BlocListener<LoginBloc,LoginState>(
        listener: (context, state){
          if(state is ShowCreateAccountFormState){
            createAccount = state.createAccount;
          }else if(state is CreateAccountState){
            print("created account");
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                    content: AlertMessages(
                      strAlertMessage: AppStrings.STRING_USER_CREATED_SUCCESSFULLY,
                      alertTypes: AlertTypes.Success,
                    )
                ));
          }else if(state is CreateAccountErrorState){
            print(state.errorMessage);
          }
        },
        child: BlocBuilder<LoginBloc,LoginState>(
          builder: (context,state){
            return SafeArea(
              child: GestureDetector(
                onTap: () {
                  FocusScope.of(context).requestFocus(new FocusNode());
                },
                child: Material(
                    color: AppColors.BASICWHITE,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _loginText(),
                        CustomSpacers.height12,
                        Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(1.0),

                          ),
                          child: Column(
                            children: [
                              if(createAccount)
                              _nameTextField(),
                              if(createAccount )
                              CustomSpacers.height16,
                              _emailTextField(),
                              CustomSpacers.height16,
                              _passwordTextField(),
                              CustomSpacers.height20,
                              _loginButton(),
                            ],
                          ),
                        ),
                        if(!createAccount )
                        _createAccount(),
                        //H5/text-xl/font-semibold
                      ],
                    )
                ),
              ),
            );

          },
        ),
      ),
    );
  }

  Widget _loginText(){
    return Text(
      AppStrings.STRING_LOGIN_TO_YOUR_ACCOUNT,
      style: FigmaStyles.h5textxlfontSemiboldbasicblack,
    );
  }

  Widget _emailTextField(){
    return InputBox(
        strPlaceHolder: AppStrings.STRING_EMAIL_ADDRESS,
        strLabelText: AppStrings.STRING_EMAIL_ADDRESS,
        bIsLabel: true,
        controller: _emailController,
    );
  }

  Widget _passwordTextField(){
    return InputBox(
      strPlaceHolder: AppStrings.STRING_PASSWORD,
      strLabelText: AppStrings.STRING_PASSWORD,
      bIsLabel: true,
      controller: _passwordController,
      inputIcon: Padding(
        padding: const EdgeInsets.only(left: 4),
          child: SvgPicture.asset(AppImages.PASSWORD_HIDE_ICON,height: 5,width: 5,)
      ),
      bIcon: true,
    );
  }

  Widget _nameTextField(){
    return InputBox(
      strPlaceHolder: AppStrings.STRING_NAME,
      strLabelText: AppStrings.STRING_NAME,
      bIsLabel: true,
      controller: _nameController,
    );
  }

  Widget _loginButton(){
    return Button(
        strButtonText: !createAccount?AppStrings.STRING_LOGIN_TO_YOUR_ACCOUNT:AppStrings.STRING_CREATE_AN_ACCOUNT,
        buttonAction: (){
          if(createAccount){
            _loginBloc.add(CreateAccountEvent(
              email: _emailController.text,
              name: _nameController.text,
              password: _passwordController.text
            ));
          }else{

          }
        },
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 12.0),
    );
  }

  Widget _createAccount(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppStrings.STRING_DONT_HAVE_ACCOUNT,
          style: FigmaStyles.bodytextbasefontNormalneutral900,
        ),
        CustomSpacers.width4,
        TextUnderline(
          text: AppStrings.STRING_CREATE_AN_ACCOUNT,
          onTap: () {
            _loginBloc.add(ShowCreateAccountFormEvent());
          },
        )
      ],
    );
  }
}
