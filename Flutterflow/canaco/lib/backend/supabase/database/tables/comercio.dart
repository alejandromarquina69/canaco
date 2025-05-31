import '../database.dart';

class ComercioTable extends SupabaseTable<ComercioRow> {
  @override
  String get tableName => 'comercio';

  @override
  ComercioRow createRow(Map<String, dynamic> data) => ComercioRow(data);
}

class ComercioRow extends SupabaseDataRow {
  ComercioRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ComercioTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get nombreComercio => getField<String>('nombre_comercio')!;
  set nombreComercio(String value) =>
      setField<String>('nombre_comercio', value);

  String get responsable => getField<String>('responsable')!;
  set responsable(String value) => setField<String>('responsable', value);

  String get telefono => getField<String>('telefono')!;
  set telefono(String value) => setField<String>('telefono', value);

  String get rfc => getField<String>('rfc')!;
  set rfc(String value) => setField<String>('rfc', value);

  String get calle => getField<String>('calle')!;
  set calle(String value) => setField<String>('calle', value);

  String get correo => getField<String>('correo')!;
  set correo(String value) => setField<String>('correo', value);

  String get cruzamiento1 => getField<String>('cruzamiento_1')!;
  set cruzamiento1(String value) => setField<String>('cruzamiento_1', value);

  String get cruzamiento2 => getField<String>('cruzamiento_2')!;
  set cruzamiento2(String value) => setField<String>('cruzamiento_2', value);

  String get numeroDomicilio => getField<String>('numero_domicilio')!;
  set numeroDomicilio(String value) =>
      setField<String>('numero_domicilio', value);

  int get codigoPostal => getField<int>('codigo_postal')!;
  set codigoPostal(int value) => setField<int>('codigo_postal', value);

  String get colonia => getField<String>('colonia')!;
  set colonia(String value) => setField<String>('colonia', value);
}
