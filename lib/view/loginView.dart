import 'package:flutter/material.dart';
import 'package:miziki_app/var/globalColor.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  
  final _mailController = TextEditingController();
  final _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/backgroundImg.png'),
            fit: BoxFit.cover,
          )
        ),

        child: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Image.asset('assets/images/logo.png')
                  ),

                  const SizedBox(height: 80),
          
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Connectez-vous",
                      style: TextStyle(
                        color: GlobalColors.textColor,
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),

                  

                  Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text('Email',
                          style: TextStyle(
                          color: GlobalColors.textColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                        ),

                        const SizedBox(height: 20),

                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                              color: Colors.white,
                              width: 1,
                            )
                          ),
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            style: TextStyle(color: Colors.white),
                            controller: _mailController,
                            decoration: const InputDecoration(
                                hintText: 'Entrez votre adresse mail',
                                hintStyle: TextStyle(
                                  color: Colors.grey
                                )
                              ),
                                
                            validator: (String? value) {
                              return (value == null || value == "")
                                  ? 'Ce champ est obligatoire'
                                  : null;
                            },
                          ),
                        ),

                        const SizedBox(height: 30),

                        ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()){

                            }
                          
                          }, 
                          style: ElevatedButton.styleFrom(
                            primary: GlobalColors.mainColor,
                            minimumSize: const Size.fromHeight(50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            )
                          ),
                          child: const Text('Connexion'),
                        ),

                        const SizedBox(height: 30),
                      ]
                    )
                  ),

                  Container(
                    alignment: Alignment.center,
                    child: Text('Ou utilisez',
                      style: TextStyle(
                        color: GlobalColors.textColor,
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                  ),

                  const SizedBox(height: 30),

                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                          color: Colors.white,
                          width: 1,
                      )
                    ),

                    child: FloatingActionButton.extended (
                      backgroundColor: Colors.transparent,
                      label: Text('Apple ID'),
                      icon: Icon(
                        Icons.apple,
                        size: 24.0,
                      ),
                      onPressed: () {},),
                  ),

                  const SizedBox(height: 580),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}