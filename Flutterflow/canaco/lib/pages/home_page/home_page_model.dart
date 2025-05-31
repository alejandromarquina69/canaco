import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for nombre_comercio widget.
  FocusNode? nombreComercioFocusNode;
  TextEditingController? nombreComercioTextController;
  String? Function(BuildContext, String?)?
      nombreComercioTextControllerValidator;
  String? _nombreComercioTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obligatorio';
    }

    return null;
  }

  // State field(s) for rfc widget.
  FocusNode? rfcFocusNode;
  TextEditingController? rfcTextController;
  String? Function(BuildContext, String?)? rfcTextControllerValidator;
  String? _rfcTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    return null;
  }

  // State field(s) for calle widget.
  FocusNode? calleFocusNode;
  TextEditingController? calleTextController;
  String? Function(BuildContext, String?)? calleTextControllerValidator;
  String? _calleTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    return null;
  }

  // State field(s) for numero_domicilio widget.
  FocusNode? numeroDomicilioFocusNode;
  TextEditingController? numeroDomicilioTextController;
  String? Function(BuildContext, String?)?
      numeroDomicilioTextControllerValidator;
  String? _numeroDomicilioTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    return null;
  }

  // State field(s) for cruzamiento_1 widget.
  FocusNode? cruzamiento1FocusNode;
  TextEditingController? cruzamiento1TextController;
  String? Function(BuildContext, String?)? cruzamiento1TextControllerValidator;
  String? _cruzamiento1TextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    return null;
  }

  // State field(s) for cruzamiento_2 widget.
  FocusNode? cruzamiento2FocusNode;
  TextEditingController? cruzamiento2TextController;
  String? Function(BuildContext, String?)? cruzamiento2TextControllerValidator;
  String? _cruzamiento2TextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    return null;
  }

  // State field(s) for colonia widget.
  FocusNode? coloniaFocusNode;
  TextEditingController? coloniaTextController;
  String? Function(BuildContext, String?)? coloniaTextControllerValidator;
  String? _coloniaTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    return null;
  }

  // State field(s) for codigo_postal widget.
  FocusNode? codigoPostalFocusNode;
  TextEditingController? codigoPostalTextController;
  String? Function(BuildContext, String?)? codigoPostalTextControllerValidator;
  String? _codigoPostalTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    return null;
  }

  // State field(s) for responsable widget.
  FocusNode? responsableFocusNode;
  TextEditingController? responsableTextController;
  String? Function(BuildContext, String?)? responsableTextControllerValidator;
  String? _responsableTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    return null;
  }

  // State field(s) for telefono widget.
  FocusNode? telefonoFocusNode;
  TextEditingController? telefonoTextController;
  String? Function(BuildContext, String?)? telefonoTextControllerValidator;
  String? _telefonoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    if (val.length > 10) {
      return 'Teléfono inválido';
    }
    if (!RegExp('^\\d+\$').hasMatch(val)) {
      return 'solo se permiten digitos';
    }
    return null;
  }

  // State field(s) for correo widget.
  FocusNode? correoFocusNode;
  TextEditingController? correoTextController;
  String? Function(BuildContext, String?)? correoTextControllerValidator;
  String? _correoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  bool isDataUploading_uploadDataA6n = false;
  FFUploadedFile uploadedLocalFile_uploadDataA6n =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataA6n = '';

  bool isDataUploading_uploadLicencia = false;
  FFUploadedFile uploadedLocalFile_uploadLicencia =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadLicencia = '';

  bool isDataUploading_uploadComprobante = false;
  FFUploadedFile uploadedLocalFile_uploadComprobante =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadComprobante = '';

  @override
  void initState(BuildContext context) {
    nombreComercioTextControllerValidator =
        _nombreComercioTextControllerValidator;
    rfcTextControllerValidator = _rfcTextControllerValidator;
    calleTextControllerValidator = _calleTextControllerValidator;
    numeroDomicilioTextControllerValidator =
        _numeroDomicilioTextControllerValidator;
    cruzamiento1TextControllerValidator = _cruzamiento1TextControllerValidator;
    cruzamiento2TextControllerValidator = _cruzamiento2TextControllerValidator;
    coloniaTextControllerValidator = _coloniaTextControllerValidator;
    codigoPostalTextControllerValidator = _codigoPostalTextControllerValidator;
    responsableTextControllerValidator = _responsableTextControllerValidator;
    telefonoTextControllerValidator = _telefonoTextControllerValidator;
    correoTextControllerValidator = _correoTextControllerValidator;
  }

  @override
  void dispose() {
    nombreComercioFocusNode?.dispose();
    nombreComercioTextController?.dispose();

    rfcFocusNode?.dispose();
    rfcTextController?.dispose();

    calleFocusNode?.dispose();
    calleTextController?.dispose();

    numeroDomicilioFocusNode?.dispose();
    numeroDomicilioTextController?.dispose();

    cruzamiento1FocusNode?.dispose();
    cruzamiento1TextController?.dispose();

    cruzamiento2FocusNode?.dispose();
    cruzamiento2TextController?.dispose();

    coloniaFocusNode?.dispose();
    coloniaTextController?.dispose();

    codigoPostalFocusNode?.dispose();
    codigoPostalTextController?.dispose();

    responsableFocusNode?.dispose();
    responsableTextController?.dispose();

    telefonoFocusNode?.dispose();
    telefonoTextController?.dispose();

    correoFocusNode?.dispose();
    correoTextController?.dispose();
  }
}
