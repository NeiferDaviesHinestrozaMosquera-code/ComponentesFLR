import 'package:flutter/material.dart';
import 'package:fluttercomponentes/widgets/custom_input_field.dart';




class InputsScreen extends StatelessWidget {

  const InputsScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey =  GlobalKey<FormState> ();  ////PARA DETERMINAR EL ESTADO DEL FORMULARIO

    final Map< String , String> formValues = {
        'nombre' : 'Neifer',
        'apellido' : 'Davies',
        'correo' : 'put@gmail.com',
        'contraseña' : 'abc123456',
        'role' : 'Admin'
    };

    return  Scaffold(
      appBar: AppBar(
        title:const Text('Inputs y forms'),
        ),
      body: SingleChildScrollView(
        child: Padding( padding: const EdgeInsets.symmetric(
          horizontal: 20 , 
          vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children:   [
          
                  CustomInputField(labelText: 'Nombre', helperText: 'Nombre de usuario', formProperty: 'nombre', formValues: formValues,),
                  const SizedBox(height: 30),
                  CustomInputField(labelText: 'Apellido', helperText: 'Apellido de usuario', formProperty: 'apellido', formValues: formValues,),
                  const SizedBox(height: 30),
                  CustomInputField(labelText: 'Correo', helperText: 'Correo de usuario', keyboardType: TextInputType.emailAddress, formProperty: 'correo', formValues: formValues),
                  const SizedBox(height: 30),
                  CustomInputField(labelText: 'Contraseña', helperText: 'contraseña de usuario', isPassword: true, formProperty: 'contraseña', formValues: formValues),
                  const SizedBox(height: 30),
          
                  DropdownButtonFormField <String> (
                    value: 'Admin',
                    items: const [
                     DropdownMenuItem(value : 'Admin' ,child: Text('Admin')),
                     DropdownMenuItem(value : 'SuperAdmin' ,child: Text('Superadmin')),
                     DropdownMenuItem(value : 'Superuser' ,child: Text('Superuser')),
                     DropdownMenuItem(value : 'Root' ,child: Text('Root')),
                     DropdownMenuItem(value : 'User' ,child: Text('User')),
                     DropdownMenuItem(value : 'Cliente' ,child: Text('Cliente')),
                    ]	, 
                    onChanged: (value){
                      print(value);
                      formValues['role'] = value ?? 'Admin';
                    }
                    ),
                  
                  const SizedBox(height: 50),
                  ElevatedButton(
                    onPressed: () {
                      FocusScope.of(context).requestFocus(FocusNode());  ///PARA QUITAR EL TECLADO CUANDO SE DA EN EL BOTON
                     if ( !myFormKey.currentState!.validate()) {
                       print('Formulario no valido');
                       return;           
                     }
                        ///VAMOS A IMPRIIMIR VALORES
                        print(formValues);
                    }, 
                    child: const SizedBox(
                    width: double.infinity,
                    child:
                     Center(
                       child:
                        Text('Guardar')
                        )
                     )                  
                    )
                  ],
                ),
              ),
            ),
          
          )

    );
  }
}

