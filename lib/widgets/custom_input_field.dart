import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {

  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool isPassword;

  final String formProperty;
  final Map<String , String> formValues;




  const CustomInputField({
    Key? key,
     this.hintText, 
     this.labelText, 
     this.helperText, 
     this.icon, 
     this.suffixIcon, 
     this.keyboardType, 
     this.isPassword = false, 
     required this.formProperty, 
     required this.formValues, 
    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      initialValue: ' ',  ///SI SE QUIERE INICIAR CON UNA PALABRA
      textCapitalization: TextCapitalization.words,
      obscureText: isPassword,
      keyboardType:keyboardType,
      onChanged: (value){
        formValues[formProperty] = value;
      },
      validator: (value){
          if ( value == null)  return 'Este campo es requerido' ; ////VUELVE OBLIGATORIO EL TEXTO
          return value.length <10 ? 'Mínimo de 10 letras' : null ;  ////////VALIDA LA CANTIDAD DE TEXTO
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,  ///VALIDA EN CUENTO SE EMPIZA A ESCRIBIR
      decoration:  InputDecoration(
        hintText: hintText, ///////7LO QUE LLEVA POR DENTRO
        labelText: labelText, //////NOMBRE DE LA CAJA DE TEXTO
        helperText: helperText, ////////7MENSAJE DEL TEXTO
        counterText: '10 caracteres', /////CONTAR LAS LETRAS
       // prefixIcon: Icon(Icons.verified_outlined), ////ICONO QUE SE ENCUENTRA EN LA PARTE IZQUIERDA
        suffixIcon:suffixIcon == null ? null : Icon(suffixIcon), ////ICONO QUE SE ENCUENTRA EN LA PARTE DERECHA
        icon:icon == null ? null : Icon(icon) , ////ICONO EN LA PARTE IZQUIERDA PERO CORREO UN POCO LA CAJA DE TEXTO
      
         ),
       
    );
  }
}