import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
// ignore: unused_import
import 'package:flutter/services.dart';
import 'package:location/location.dart';
import 'package:geoflutterfire/geoflutterfire.dart';


class agroProducers extends StatefulWidget {
  @override
  _agroProducersState createState() => _agroProducersState();
}

class _agroProducersState extends State<agroProducers> {
  final TextEditingController _numeroCaptadorController = TextEditingController();
  final TextEditingController _nombreCaptadorController = TextEditingController();
  final TextEditingController _cedulaController = TextEditingController();
  final TextEditingController _estadoController = TextEditingController();
  final TextEditingController _tipoPersonaController = TextEditingController();
  final TextEditingController _primerNombreController = TextEditingController();
  final TextEditingController _segundoNombreController = TextEditingController();
  final TextEditingController _primerApellidoController = TextEditingController();
  final TextEditingController _segundoApellidoController = TextEditingController();
  final TextEditingController _apellidoConyugeController = TextEditingController();
  final TextEditingController _fechaNacimientoController = TextEditingController();
  final TextEditingController _direccionController = TextEditingController();
  final TextEditingController _provinciaController = TextEditingController();
  final TextEditingController _corregimientoController = TextEditingController();
  final TextEditingController _distritoController = TextEditingController();
  final TextEditingController _pobladoController = TextEditingController();
  final TextEditingController _numeroCasaController = TextEditingController();
  final TextEditingController _nacionalidadController = TextEditingController();
  final TextEditingController _sexoController = TextEditingController();
  final TextEditingController _correoController = TextEditingController();
  final TextEditingController _celularController = TextEditingController();
  final TextEditingController _escolaridadController = TextEditingController();
  final TextEditingController _organizacionAsociativaController = TextEditingController();
  final TextEditingController _actividadPrincipalController = TextEditingController();
  final TextEditingController _anosActivoController = TextEditingController();
  final TextEditingController _sabeLeerController = TextEditingController();
  final TextEditingController _sabeEscribirController = TextEditingController();
  final TextEditingController _observacionesController = TextEditingController();
  final TextEditingController _l12065Controller = TextEditingController();
  final TextEditingController _angelGuardianController = TextEditingController();
  final TextEditingController _becaUniversalController = TextEditingController();
  final TextEditingController _ley24Controller = TextEditingController();
  final TextEditingController _ley25Controller = TextEditingController();
  final TextEditingController _redOportunidadesController = TextEditingController();
  final TextEditingController _notasController = TextEditingController();
  final TextEditingController _numeroFincaController = TextEditingController();
  final TextEditingController _nombreFincaController = TextEditingController();
  final TextEditingController _provinciaFincaController = TextEditingController();
  final TextEditingController _distritoFincaController = TextEditingController();
  final TextEditingController _corregimientoFincaController = TextEditingController();
  final TextEditingController _pobladoFincaController = TextEditingController();
  final TextEditingController _superficieFincaController = TextEditingController();
  final TextEditingController _apoyoController = TextEditingController();
  final TextEditingController _aguaController = TextEditingController();
  final TextEditingController _accesoVehicularController = TextEditingController();
  final TextEditingController _tiempoAccesoEnVeranoMidasController = TextEditingController();
  final TextEditingController _tiempoAccesoEnVeranoController = TextEditingController();
  final TextEditingController _tiempoAccesoEnInviernoMidasController = TextEditingController();
  final TextEditingController _tiempoAccesoEnInviernoController = TextEditingController();
  final TextEditingController _asistenciaController = TextEditingController();
  final TextEditingController _actividadesController = TextEditingController();
  final TextEditingController _estructuraAlmacenamientoController = TextEditingController();
  final TextEditingController _administradorController = TextEditingController();
  final TextEditingController _distanciaFincaAdministradorController = TextEditingController();
  final TextEditingController _tipoTerrenoController = TextEditingController();
  final TextEditingController _extencionTerrenoController = TextEditingController();
  final TextEditingController _tenenciaController = TextEditingController();
  final TextEditingController _aseguramientoController = TextEditingController();
  final TextEditingController _numeroTrabajadoresFijosMujeresController = TextEditingController();
  final TextEditingController _numeroTrabajadoresFijosHombresController = TextEditingController();
  final TextEditingController _preparacionTerrenoFijoController = TextEditingController();
  final TextEditingController _siembraFijoController = TextEditingController();
  final TextEditingController _laboresCulturalesFijoController = TextEditingController();
  final TextEditingController _riegoFijoController = TextEditingController();
  final TextEditingController _aplicacionAgroquimicosFijoController = TextEditingController();
  final TextEditingController _cosechaFijoController = TextEditingController();
  final TextEditingController _numeroTrabajadoresHombresController = TextEditingController();
  final TextEditingController _numeroTrabajadoresMujeresController = TextEditingController();
  final TextEditingController _preparacionTerrenoController = TextEditingController();
  final TextEditingController _siembraController = TextEditingController();
  final TextEditingController _laboresCulturalesController = TextEditingController();
  final TextEditingController _aplicacionAgroquimicosController = TextEditingController();
  final TextEditingController _riegoController = TextEditingController();
  final TextEditingController _cosechaController = TextEditingController();
  final TextEditingController _mantenimientoController = TextEditingController();
  final TextEditingController _ayudaGeneralController = TextEditingController();
  final TextEditingController _administradorTrabajadorController = TextEditingController();
  final  Location location = new Location();

  


  
  CollectionReference _producerss =
      FirebaseFirestore.instance.collection('producers');
  Geoflutterfire geo = Geoflutterfire();
  // This function is triggered when the floatting button or one of the edit buttons is pressed
  // Adding a product if no documentSnapshot is passed
  // If documentSnapshot != null then update an existing product
  Future<void> _createOrUpdate([DocumentSnapshot? documentSnapshot]) async {
    
    String action = 'create';

    
    if (documentSnapshot != null) {
      action = 'update';
      _numeroCaptadorController.text = documentSnapshot['numeroCaptador'];
      _nombreCaptadorController.text = documentSnapshot['nombreCaptador'];
      _cedulaController.text = documentSnapshot['cedula'];
      _estadoController.text = documentSnapshot['estado'];
      _tipoPersonaController.text = documentSnapshot['tipoPersona'];
      _primerNombreController.text = documentSnapshot['primerNombre'];
      _segundoNombreController.text = documentSnapshot['segundoNombre'];
      _primerApellidoController.text = documentSnapshot['primerApellido'];
      _segundoApellidoController.text = documentSnapshot['segundoApellido'];
      _apellidoConyugeController.text = documentSnapshot['apellidoConyuge'];
      _fechaNacimientoController.text = documentSnapshot['fechaNacimiento'];
      _direccionController.text = documentSnapshot['direccion'];
      _provinciaController.text = documentSnapshot['provincia'];
      _corregimientoController.text = documentSnapshot['corregimiento'];
      _distritoController.text = documentSnapshot['distrito'];
      _pobladoController.text = documentSnapshot['poblado'];
      _numeroCasaController.text = documentSnapshot['numeroCasa'];
      _nacionalidadController.text = documentSnapshot['nacionalidad'];
      _correoController.text = documentSnapshot['correo'];
      _sexoController.text = documentSnapshot['sexo'];
      _celularController.text = documentSnapshot['celular'];
      _escolaridadController.text = documentSnapshot['escolaridad'];
      _organizacionAsociativaController.text = documentSnapshot['organizacionAsociativa'];
      _actividadPrincipalController.text = documentSnapshot['actividadPrincipal'];
      _anosActivoController.text = documentSnapshot['anosActivo'];
      _sabeLeerController.text = documentSnapshot['sabeLeer'];
      _sabeEscribirController.text = documentSnapshot['sabeEscribir'];
      _observacionesController.text = documentSnapshot['observaciones'];
      _l12065Controller.text = documentSnapshot['l12065'];
      _angelGuardianController.text = documentSnapshot['angelGuardian'];
      _becaUniversalController.text = documentSnapshot['becaUniversal'];
      _ley24Controller.text = documentSnapshot['ley24'];
      _ley25Controller.text = documentSnapshot['ley25'];
      _redOportunidadesController.text = documentSnapshot['redOportunidades'];
      _numeroFincaController.text = documentSnapshot['numeroFinca'];
      _nombreFincaController.text = documentSnapshot['nombreFinca'];
      _provinciaFincaController.text = documentSnapshot['provinciaFinca'];
      _distritoFincaController.text = documentSnapshot['distritoFinca'];
      _pobladoFincaController.text = documentSnapshot['pobladoFinca'];
      _superficieFincaController.text = documentSnapshot['superficieFinca'];
      _apoyoController.text = documentSnapshot['apoyo'];
      _aguaController.text = documentSnapshot['agua'];
      _accesoVehicularController.text = documentSnapshot['accesoVehicular'];
      _tiempoAccesoEnInviernoController.text = documentSnapshot['tiempoAccesoEnInvierno'];
      _tiempoAccesoEnVeranoController.text = documentSnapshot['tiempoAccesoEnVerano'];
      _tiempoAccesoEnInviernoMidasController.text = documentSnapshot['tiempoAccesoEnInviernoMidas'];
      _tiempoAccesoEnVeranoMidasController.text = documentSnapshot['tiempoAccesoEnVeranoMidas'];
      _asistenciaController.text = documentSnapshot['asistencia'];
      _actividadesController.text = documentSnapshot['actividades'];
      _estructuraAlmacenamientoController.text = documentSnapshot['estructuraAlmacenamiento'];
      _administradorController.text = documentSnapshot['administrador'];
      _distanciaFincaAdministradorController.text = documentSnapshot['distanciaFincaAdministrador'];
      _tipoTerrenoController.text = documentSnapshot['tipoTerreno'];
      _tenenciaController.text = documentSnapshot['extencionTerreno'];
      _aseguramientoController.text = documentSnapshot['aseguramiento'];
      _notasController.text = documentSnapshot['notas'];
      _numeroTrabajadoresFijosMujeresController.text = documentSnapshot['numeroTrabajadoresFijosMujeres'];
      _numeroTrabajadoresFijosHombresController.text = documentSnapshot['numeroTrabajadoresFijosHombres'];
      _preparacionTerrenoFijoController.text = documentSnapshot['preparacionTerrenoFijo'];
      _siembraFijoController.text = documentSnapshot['siembraFijo'];
      _laboresCulturalesFijoController.text = documentSnapshot['laboresCulturalesFijo'];
      _riegoFijoController.text = documentSnapshot['riegoFijo'];
      _aplicacionAgroquimicosFijoController.text = documentSnapshot['aplicacionAgroquimicosFijo'];
      _cosechaFijoController.text = documentSnapshot['cosechaFijo'];
      _numeroTrabajadoresHombresController.text = documentSnapshot['numeroTrabajadoresHombres'];
      _numeroTrabajadoresMujeresController.text = documentSnapshot['numeroTrabajadoresMujeres'];
      _preparacionTerrenoController.text = documentSnapshot['preparacionTerreno'];
      _siembraController.text = documentSnapshot['siembra'];
      _laboresCulturalesController.text = documentSnapshot['laboresCulturales'];
      _riegoController.text = documentSnapshot['riego'];
      _aplicacionAgroquimicosController.text = documentSnapshot['aplicacionAgroquimicos'];
      _cosechaController.text = documentSnapshot['cosecha'];
      _mantenimientoController.text = documentSnapshot['mantenimiento'];
      _ayudaGeneralController.text = documentSnapshot['ayudaGeneral'];
      _administradorTrabajadorController.text = documentSnapshot['administradorTrabajador'];
  

    }

   

    var _estados = [
    "Activo",
    "Nuevo",
    "Modificado",
    "Fallecido",
    "Cedula Errada"
    ];

    var _provinciasPty = [
    "Panamá",
    ];

    var _distritoPty = [
    "Chepo",
    ];


    var _corregimientosPty = [
    "Chepo - Cabecera",
    "Cañitas",
    "Chepillo",
    "Las Margaritas",
    "El Llano",
    "Santa Cruz de Chinina",
    "Tortí"
    ];

    var _tipoP = [
    "Natural", 
    "Juridica", 
    "Extranjera"
    ];

    var _sexo = [
    "Masculino", 
    "Femenino"
    ];

     var _bool = [
    "SI", 
    "NO"
    ];

    var _actividades = [
    "Agricultura", 
    "Agricola", 
    "Agroexportador",
    "Agroindustria",
    "Agroturismo",
    "Apicola"
    ];

    var _instituciones = [
    "MIDA", 
    "IMA", 
    "AIG",
    "FAO",
    "BDA",
    "IDIAP"
    ];

    var _provedoresAgua = [
    "Lago", 
    "Iso de agua", 
    "Pozo",
    "Quebrada permanente",
    "Quebrada en Invierno",
    "No hay agua"
    ];

    var _vias = [
    "Asfalto", 
    "Tierra", 
    "Piedra",
    "Fluvial",
    "Ninguna"
    ];

    var _sup = [
    "Privada", 
    "Propia", 
    "Publica"
    ];

    var _adminstradores = [
    "Administrador", 
    "Familia", 
    "Propietario"
    ];

    var _terrenos = [
    "Escarpado", 
    "Montañoso", 
    "Ondulado",
    "Plano",
    "Quebrado"
    ];

    var _titularidad = [
    "Arrenda", 
    "Colectiva", 
    "Derecho Posesorio",
    "Estatal",
    "Familiar",
    "Prestada"
    ];


    await showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext ctx) { 
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView(
             
              children: [
                 SizedBox(
                  height: 40,
                ),
                TextField(
                  controller: _numeroCaptadorController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Numero Captador'
                    ), 
                ),
                TextField(
                  controller: _nombreCaptadorController,
                  decoration: InputDecoration(
                    labelText: 'Nombre Captador'
                    ), 
                ),
                TextField(
                  controller: _cedulaController,
                  decoration: InputDecoration(
                    labelText: 'Cedula Productor'
                    ), 
                ),
                new Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: new Row(
                    children: <Widget>[
                      new Expanded(
                        child: new TextField(
                          controller: _estadoController, 
                          decoration: InputDecoration(
                          labelText: 'Estado',
                          ),
                        )
                      ),
                      new PopupMenuButton<String>(
                        icon: const Icon(Icons.arrow_drop_down),
                        onSelected: (String value) {
                          _estadoController.text = value;
                        },
                        itemBuilder: (BuildContext context) {
                          return _estados.map<PopupMenuItem<String>>((String value) {
                            return new PopupMenuItem(child: new Text(value), value: value);
                          }).toList();
                        },
                      ),
                    ],
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: new Row(
                    children: <Widget>[
                      new Expanded(
                        child: new TextField(
                          controller: _tipoPersonaController, 
                          decoration: InputDecoration(
                          labelText: 'Tipo Persona',
                          ),
                        )
                      ),
                      new PopupMenuButton<String>(
                        icon: const Icon(Icons.arrow_drop_down),
                        onSelected: (String value) {
                          _tipoPersonaController.text = value;
                        },
                        itemBuilder: (BuildContext context) {
                          return _tipoP.map<PopupMenuItem<String>>((String value) {
                            return new PopupMenuItem(child: new Text(value), value: value);
                          }).toList();
                        },
                      ),
                    ],
                  ),
                ),
                TextField(
                  controller: _primerNombreController,
                  decoration: InputDecoration(
                    labelText: 'Primer Nombre',
                  ),
                ),
                
                TextField(
                  controller: _segundoNombreController,
                  decoration: InputDecoration(
                    labelText: 'Segundo Nombre',
                  ),
                ),
                 TextField(
                  controller: _primerApellidoController,
                  decoration: InputDecoration(
                    labelText: 'Primer Apellido',
                  ),
                ),
                TextField(
                  controller: _segundoApellidoController,
                  decoration: InputDecoration(
                    labelText: 'Segundo Apellido',
                  ),
                ),
                TextField(
                  controller: _apellidoConyugeController,
                  decoration: InputDecoration(
                    labelText: 'Apellido Conyuge',
                  ),
                ),
                TextField(
                  controller: _fechaNacimientoController,
                  decoration: InputDecoration(
                    labelText: 'Fecha Nacimiento',
                  ),
                ),
                TextField(
                  controller: _direccionController,
                  decoration: InputDecoration(
                    labelText: 'Direccion',
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: new Row(
                    children: <Widget>[
                      new Expanded(
                        child: new TextField(
                          controller: _provinciaController, 
                          decoration: InputDecoration(
                          labelText: 'Provincia',
                          ),
                        )
                      ),
                      new PopupMenuButton<String>(
                        icon: const Icon(Icons.arrow_drop_down),
                        onSelected: (String value) {
                          _provinciaController.text = value;
                        },
                        itemBuilder: (BuildContext context) {
                          return _provinciasPty.map<PopupMenuItem<String>>((String value) {
                            return new PopupMenuItem(child: new Text(value), value: value);
                          }).toList();
                        },
                      ),
                    ],
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: new Row(
                    children: <Widget>[
                      new Expanded(
                        child: new TextField(
                          controller: _corregimientoController, 
                          decoration: InputDecoration(
                          labelText: 'Corregimiento',
                          ),
                        )
                      ),
                      new PopupMenuButton<String>(
                        icon: const Icon(Icons.arrow_drop_down),
                        onSelected: (String value) {
                          _corregimientoController.text = value;
                        },
                        itemBuilder: (BuildContext context) {
                          return _corregimientosPty.map<PopupMenuItem<String>>((String value) {
                            return new PopupMenuItem(child: new Text(value), value: value);
                          }).toList();
                        },
                      ),
                    ],
                  ),
                ),
                 new Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: new Row(
                    children: <Widget>[
                      new Expanded(
                        child: new TextField(
                          controller: _distritoController, 
                          decoration: InputDecoration(
                          labelText: 'Distrito',
                          ),
                        )
                      ),
                      new PopupMenuButton<String>(
                        icon: const Icon(Icons.arrow_drop_down),
                        onSelected: (String value) {
                          _distritoController.text = value;
                        },
                        itemBuilder: (BuildContext context) {
                          return _distritoPty.map<PopupMenuItem<String>>((String value) {
                            return new PopupMenuItem(child: new Text(value), value: value);
                          }).toList();
                        },
                      ),
                    ],
                  ),
                ),
                TextField(
                  controller: _pobladoController,
                  decoration: InputDecoration(
                    labelText: "Poblado",
                  ),
                ),
                TextField(
                  controller: _numeroCasaController,
                  decoration: InputDecoration(
                    labelText: "Numero Casa",
                  ),
                ),
                 TextField(
                  controller: _nacionalidadController,
                  decoration: InputDecoration(
                    labelText: "Nacionalidad",
                  ),
                ),
                 new Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: new Row(
                    children: <Widget>[
                      new Expanded(
                        child: new TextField(
                          controller: _sexoController, 
                          decoration: InputDecoration(
                          labelText: 'Sexo',
                          ),
                        )
                      ),
                      new PopupMenuButton<String>(
                        icon: const Icon(Icons.arrow_drop_down),
                        onSelected: (String value) {
                          _sexoController.text = value;
                        },
                        itemBuilder: (BuildContext context) {
                          return _sexo.map<PopupMenuItem<String>>((String value) {
                            return new PopupMenuItem(child: new Text(value), value: value);
                          }).toList();
                        },
                      ),
                    ],
                  ),
                ),
                TextField(
                  controller: _correoController,
                  decoration: InputDecoration(
                    labelText: "Correo Electronico",
                  ),
                ),
                 TextField(
                  controller: _celularController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Celular",
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: new Row(
                    children: <Widget>[
                      new Expanded(
                        child: new TextField(
                          controller: _escolaridadController, 
                          decoration: InputDecoration(
                          labelText: 'Escolaridad',
                          ),
                        )
                      ),
                      new PopupMenuButton<String>(
                        icon: const Icon(Icons.arrow_drop_down),
                        onSelected: (String value) {
                          _escolaridadController.text = value;
                        },
                        itemBuilder: (BuildContext context) {
                          return _bool.map<PopupMenuItem<String>>((String value) {
                            return new PopupMenuItem(child: new Text(value), value: value);
                          }).toList();
                        },
                      ),
                    ],
                  ),
                ),
                 TextField(
                  controller: _organizacionAsociativaController,
                  decoration: InputDecoration(
                    labelText: "Organizacion Asociativa",
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: new Row(
                    children: <Widget>[
                      new Expanded(
                        child: new TextField(
                          controller: _actividadPrincipalController, 
                          decoration: InputDecoration(
                          labelText: 'Actividad Principal',
                          ),
                        )
                      ),
                      new PopupMenuButton<String>(
                        icon: const Icon(Icons.arrow_drop_down),
                        onSelected: (String value) {
                          _actividadPrincipalController.text = value;
                        },
                        itemBuilder: (BuildContext context) {
                          return _actividades.map<PopupMenuItem<String>>((String value) {
                            return new PopupMenuItem(child: new Text(value), value: value);
                          }).toList();
                        },
                      ),
                    ],
                  ),
                ),
                 TextField(
                  controller: _anosActivoController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Años realizando esta actvidad",
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: new Row(
                    children: <Widget>[
                      new Expanded(
                        child: new TextField(
                          controller: _sabeLeerController, 
                          decoration: InputDecoration(
                          labelText: 'Sabe Leer',
                          ),
                        )
                      ),
                      new PopupMenuButton<String>(
                        icon: const Icon(Icons.arrow_drop_down),
                        onSelected: (String value) {
                          _sabeLeerController.text = value;
                        },
                        itemBuilder: (BuildContext context) {
                          return _bool.map<PopupMenuItem<String>>((String value) {
                            return new PopupMenuItem(child: new Text(value), value: value);
                          }).toList();
                        },
                      ),
                    ],
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: new Row(
                    children: <Widget>[
                      new Expanded(
                        child: new TextField(
                          controller: _sabeEscribirController, 
                          decoration: InputDecoration(
                          labelText: 'Sabe Escribir',
                          ),
                        )
                      ),
                      new PopupMenuButton<String>(
                        icon: const Icon(Icons.arrow_drop_down),
                        onSelected: (String value) {
                          _sabeEscribirController.text = value;
                        },
                        itemBuilder: (BuildContext context) {
                          return _bool.map<PopupMenuItem<String>>((String value) {
                            return new PopupMenuItem(child: new Text(value), value: value);
                          }).toList();
                        },
                      ),
                    ],
                  ),
                ),
                 TextField(
                  controller: _observacionesController,
                  decoration: InputDecoration(
                    labelText: "Observaciones",
                  ),
                   maxLines: 4,
                ),
                 new Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: new Row(
                    children: <Widget>[
                      new Expanded(
                        child: new TextField(
                          controller: _l12065Controller, 
                          decoration: InputDecoration(
                          labelText: 'Asociado a 120/65',
                          ),
                        )
                      ),
                      new PopupMenuButton<String>(
                        icon: const Icon(Icons.arrow_drop_down),
                        onSelected: (String value) {
                          _l12065Controller.text = value;
                        },
                        itemBuilder: (BuildContext context) {
                          return _bool.map<PopupMenuItem<String>>((String value) {
                            return new PopupMenuItem(child: new Text(value), value: value);
                          }).toList();
                        },
                      ),
                    ],
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: new Row(
                    children: <Widget>[
                      new Expanded(
                        child: new TextField(
                          controller: _angelGuardianController, 
                          decoration: InputDecoration(
                          labelText: 'Angel Guardian',
                          ),
                        )
                      ),
                      new PopupMenuButton<String>(
                        icon: const Icon(Icons.arrow_drop_down),
                        onSelected: (String value) {
                          _angelGuardianController.text = value;
                        },
                        itemBuilder: (BuildContext context) {
                          return _bool.map<PopupMenuItem<String>>((String value) {
                            return new PopupMenuItem(child: new Text(value), value: value);
                          }).toList();
                        },
                      ),
                    ],
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: new Row(
                    children: <Widget>[
                      new Expanded(
                        child: new TextField(
                          controller: _becaUniversalController, 
                          decoration: InputDecoration(
                          labelText: 'Beca Universal',
                          ),
                        )
                      ),
                      new PopupMenuButton<String>(
                        icon: const Icon(Icons.arrow_drop_down),
                        onSelected: (String value) {
                          _becaUniversalController.text = value;
                        },
                        itemBuilder: (BuildContext context) {
                          return _bool.map<PopupMenuItem<String>>((String value) {
                            return new PopupMenuItem(child: new Text(value), value: value);
                          }).toList();
                        },
                      ),
                    ],
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: new Row(
                    children: <Widget>[
                      new Expanded(
                        child: new TextField(
                          controller: _ley24Controller, 
                          decoration: InputDecoration(
                          labelText: 'Ley 24 Indemnizacion',
                          ),
                        )
                      ),
                      new PopupMenuButton<String>(
                        icon: const Icon(Icons.arrow_drop_down),
                        onSelected: (String value) {
                          _ley24Controller.text = value;
                        },
                        itemBuilder: (BuildContext context) {
                          return _bool.map<PopupMenuItem<String>>((String value) {
                            return new PopupMenuItem(child: new Text(value), value: value);
                          }).toList();
                        },
                      ),
                    ],
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: new Row(
                    children: <Widget>[
                      new Expanded(
                        child: new TextField(
                          controller: _ley25Controller, 
                          decoration: InputDecoration(
                          labelText: 'Ley 25 Tranformacion Agropecuaria',
                          ),
                        )
                      ),
                      new PopupMenuButton<String>(
                        icon: const Icon(Icons.arrow_drop_down),
                        onSelected: (String value) {
                          _ley25Controller.text = value;
                        },
                        itemBuilder: (BuildContext context) {
                          return _bool.map<PopupMenuItem<String>>((String value) {
                            return new PopupMenuItem(child: new Text(value), value: value);
                          }).toList();
                        },
                      ),
                    ],
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: new Row(
                    children: <Widget>[
                      new Expanded(
                        child: new TextField(
                          controller: _redOportunidadesController, 
                          decoration: InputDecoration(
                          labelText: 'Red Oportunidades',
                          ),
                        )
                      ),
                      new PopupMenuButton<String>(
                        icon: const Icon(Icons.arrow_drop_down),
                        onSelected: (String value) {
                          _redOportunidadesController.text = value;
                        },
                        itemBuilder: (BuildContext context) {
                          return _bool.map<PopupMenuItem<String>>((String value) {
                            return new PopupMenuItem(child: new Text(value), value: value);
                          }).toList();
                        },
                      ),
                    ],
                  ),
                ),
                TextField(
                  controller: _numeroFincaController,
                  decoration: InputDecoration(
                    labelText: "Numero de Finca",
                  ),
                ),
                 TextField(
                  controller: _nombreFincaController,
                  decoration: InputDecoration(
                    labelText: "Nombre Finca",
                  ),
                ),
                 TextField(
                  controller: _provinciaFincaController,
                  decoration: InputDecoration(
                    labelText: "Provincia Finca",
                  ),
                ),
                TextField(
                  controller: _distritoFincaController,
                  decoration: InputDecoration(
                    labelText: "Distrito Finca",
                  ),
                ),
                TextField(
                  controller: _corregimientoFincaController,
                  decoration: InputDecoration(
                    labelText: "Corregimiento",
                  ),
                ),
                TextField(
                  controller: _pobladoFincaController,
                  decoration: InputDecoration(
                    labelText: "Poblado Finca",
                  ),
                ),
                TextField(
                  controller: _superficieFincaController,
                  decoration: InputDecoration(
                    labelText: "Superficie Finca (HA)",
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: new Row(
                    children: <Widget>[
                      new Expanded(
                        child: new TextField(
                          controller: _apoyoController, 
                          decoration: InputDecoration(
                          labelText: 'Apoyo',
                          ),
                        )
                      ),
                      new PopupMenuButton<String>(
                        icon: const Icon(Icons.arrow_drop_down),
                        onSelected: (String value) {
                          _apoyoController.text = value;
                        },
                        itemBuilder: (BuildContext context) {
                          return _instituciones.map<PopupMenuItem<String>>((String value) {
                            return new PopupMenuItem(child: new Text(value), value: value);
                          }).toList();
                        },
                      ),
                    ],
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: new Row(
                    children: <Widget>[
                      new Expanded(
                        child: new TextField(
                          controller: _aguaController, 
                          decoration: InputDecoration(
                          labelText: 'Agua',
                          ),
                        )
                      ),
                      new PopupMenuButton<String>(
                        icon: const Icon(Icons.arrow_drop_down),
                        onSelected: (String value) {
                          _aguaController.text = value;
                        },
                        itemBuilder: (BuildContext context) {
                          return _provedoresAgua.map<PopupMenuItem<String>>((String value) {
                            return new PopupMenuItem(child: new Text(value), value: value);
                          }).toList();
                        },
                      ),
                    ],
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: new Row(
                    children: <Widget>[
                      new Expanded(
                        child: new TextField(
                          controller: _accesoVehicularController, 
                          decoration: InputDecoration(
                          labelText: 'Acceso Vehicular',
                          ),
                        )
                      ),
                      new PopupMenuButton<String>(
                        icon: const Icon(Icons.arrow_drop_down),
                        onSelected: (String value) {
                          _accesoVehicularController.text = value;
                        },
                        itemBuilder: (BuildContext context) {
                          return _vias.map<PopupMenuItem<String>>((String value) {
                            return new PopupMenuItem(child: new Text(value), value: value);
                          }).toList();
                        },
                      ),
                    ],
                  ),
                ),
                 TextField(
                  controller: _tiempoAccesoEnVeranoController,
                  decoration: InputDecoration(
                    labelText: "Tiempo de Acceso en Verano (hr)",
                  ),
                ),
                 TextField(
                  controller: _tiempoAccesoEnVeranoMidasController,
                  decoration: InputDecoration(
                    labelText: "Tiempo de Acceso en Verano desde el midas (hr)",
                  ),
                ),
                 TextField(
                  controller: _tiempoAccesoEnInviernoMidasController,
                  decoration: InputDecoration(
                    labelText: "Tiempo de Acceso en Invierno desde el midas (hr)",
                  ),
                ),
                TextField(
                  controller: _tiempoAccesoEnInviernoController,
                  decoration: InputDecoration(
                    labelText: "Tiempo de Acceso en Invierno (hr)",
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: new Row(
                    children: <Widget>[
                      new Expanded(
                        child: new TextField(
                          controller: _asistenciaController, 
                          decoration: InputDecoration(
                          labelText: 'Asistencia',
                          ),
                        )
                      ),
                      new PopupMenuButton<String>(
                        icon: const Icon(Icons.arrow_drop_down),
                        onSelected: (String value) {
                          _asistenciaController.text = value;
                        },
                        itemBuilder: (BuildContext context) {
                          return _sup.map<PopupMenuItem<String>>((String value) {
                            return new PopupMenuItem(child: new Text(value), value: value);
                          }).toList();
                        },
                      ),
                    ],
                  ),
                ),
                TextField(
                  controller: _actividadesController,
                  decoration: InputDecoration(
                    labelText: "Actividades",
                  ),
                   maxLines: 4,
                ),
                new Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: new Row(
                    children: <Widget>[
                      new Expanded(
                        child: new TextField(
                          controller: _estructuraAlmacenamientoController, 
                          decoration: InputDecoration(
                          labelText: 'Estructura de Almacenamiento',
                          ),
                        )
                      ),
                      new PopupMenuButton<String>(
                        icon: const Icon(Icons.arrow_drop_down),
                        onSelected: (String value) {
                          _estructuraAlmacenamientoController.text = value;
                        },
                        itemBuilder: (BuildContext context) {
                          return _bool.map<PopupMenuItem<String>>((String value) {
                            return new PopupMenuItem(child: new Text(value), value: value);
                          }).toList();
                        },
                      ),
                    ],
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: new Row(
                    children: <Widget>[
                      new Expanded(
                        child: new TextField(
                          controller: _administradorController, 
                          decoration: InputDecoration(
                          labelText: 'Administrador',
                          ),
                        )
                      ),
                      new PopupMenuButton<String>(
                        icon: const Icon(Icons.arrow_drop_down),
                        onSelected: (String value) {
                          _administradorController.text = value;
                        },
                        itemBuilder: (BuildContext context) {
                          return _adminstradores.map<PopupMenuItem<String>>((String value) {
                            return new PopupMenuItem(child: new Text(value), value: value);
                          }).toList();
                        },
                      ),
                    ],
                  ),
                ),
                TextField(
                  controller: _distanciaFincaAdministradorController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Distancia entre la Finca y el administrador (Km)",
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: new Row(
                    children: <Widget>[
                      new Expanded(
                        child: new TextField(
                          controller: _tipoTerrenoController, 
                          decoration: InputDecoration(
                          labelText: 'Tipo de Terreno',
                          ),
                        )
                      ),
                      new PopupMenuButton<String>(
                        icon: const Icon(Icons.arrow_drop_down),
                        onSelected: (String value) {
                          _tipoTerrenoController.text = value;
                        },
                        itemBuilder: (BuildContext context) {
                          return _terrenos.map<PopupMenuItem<String>>((String value) {
                            return new PopupMenuItem(child: new Text(value), value: value);
                          }).toList();
                        },
                      ),
                    ],
                  ),
                ),
                TextField(
                  controller: _extencionTerrenoController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Extencion del Terreno",
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: new Row(
                    children: <Widget>[
                      new Expanded(
                        child: new TextField(
                          controller: _tenenciaController, 
                          decoration: InputDecoration(
                          labelText: 'Tenencia',
                          ),
                        )
                      ),
                      new PopupMenuButton<String>(
                        icon: const Icon(Icons.arrow_drop_down),
                        onSelected: (String value) {
                          _tenenciaController.text = value;
                        },
                        itemBuilder: (BuildContext context) {
                          return _titularidad.map<PopupMenuItem<String>>((String value) {
                            return new PopupMenuItem(child: new Text(value), value: value);
                          }).toList();
                        },
                      ),
                    ],
                  ),
                ),
                TextField(
                  controller: _aseguramientoController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Aseguramiento Financiero",
                  ),
                ),
                TextField(
                  controller: _notasController,
                  decoration: InputDecoration(
                    labelText: "Notas",
                  ),
                   maxLines: 4,
                ),
                TextField(
                  controller: _numeroTrabajadoresFijosHombresController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Numero de trabajadores Fijos Hombres",
                  ),
                ),
                TextField(
                  controller: _numeroTrabajadoresFijosMujeresController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Numero de trabajadoras Fijas Mujeres",
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: new Row(
                    children: <Widget>[
                      new Expanded(
                        child: new TextField(
                          controller: _preparacionTerrenoFijoController, 
                          decoration: InputDecoration(
                          labelText: 'Trabajadores fijos Preparan Terreno',
                          ),
                        )
                      ),
                      new PopupMenuButton<String>(
                        icon: const Icon(Icons.arrow_drop_down),
                        onSelected: (String value) {
                          _preparacionTerrenoFijoController.text = value;
                        },
                        itemBuilder: (BuildContext context) {
                          return _bool.map<PopupMenuItem<String>>((String value) {
                            return new PopupMenuItem(child: new Text(value), value: value);
                          }).toList();
                        },
                      ),
                    ],
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: new Row(
                    children: <Widget>[
                      new Expanded(
                        child: new TextField(
                          controller: _siembraFijoController, 
                          decoration: InputDecoration(
                          labelText: 'Trabajadores fijos Siembran',
                          ),
                        )
                      ),
                      new PopupMenuButton<String>(
                        icon: const Icon(Icons.arrow_drop_down),
                        onSelected: (String value) {
                          _siembraFijoController.text = value;
                        },
                        itemBuilder: (BuildContext context) {
                          return _bool.map<PopupMenuItem<String>>((String value) {
                            return new PopupMenuItem(child: new Text(value), value: value);
                          }).toList();
                        },
                      ),
                    ],
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: new Row(
                    children: <Widget>[
                      new Expanded(
                        child: new TextField(
                          controller: _laboresCulturalesFijoController, 
                          decoration: InputDecoration(
                          labelText: 'Trabajadores fijos en labores Culturales',
                          ),
                        )
                      ),
                      new PopupMenuButton<String>(
                        icon: const Icon(Icons.arrow_drop_down),
                        onSelected: (String value) {
                          _laboresCulturalesFijoController.text = value;
                        },
                        itemBuilder: (BuildContext context) {
                          return _bool.map<PopupMenuItem<String>>((String value) {
                            return new PopupMenuItem(child: new Text(value), value: value);
                          }).toList();
                        },
                      ),
                    ],
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: new Row(
                    children: <Widget>[
                      new Expanded(
                        child: new TextField(
                          controller: _riegoFijoController, 
                          decoration: InputDecoration(
                          labelText: 'Trabajadores fijos Riegan',
                          ),
                        )
                      ),
                      new PopupMenuButton<String>(
                        icon: const Icon(Icons.arrow_drop_down),
                        onSelected: (String value) {
                          _riegoFijoController.text = value;
                        },
                        itemBuilder: (BuildContext context) {
                          return _bool.map<PopupMenuItem<String>>((String value) {
                            return new PopupMenuItem(child: new Text(value), value: value);
                          }).toList();
                        },
                      ),
                    ],
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: new Row(
                    children: <Widget>[
                      new Expanded(
                        child: new TextField(
                          controller: _aplicacionAgroquimicosFijoController, 
                          decoration: InputDecoration(
                          labelText: 'Trabajadores fijos aplican Agroquimicos',
                          ),
                        )
                      ),
                      new PopupMenuButton<String>(
                        icon: const Icon(Icons.arrow_drop_down),
                        onSelected: (String value) {
                          _aplicacionAgroquimicosFijoController.text = value;
                        },
                        itemBuilder: (BuildContext context) {
                          return _bool.map<PopupMenuItem<String>>((String value) {
                            return new PopupMenuItem(child: new Text(value), value: value);
                          }).toList();
                        },
                      ),
                    ],
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: new Row(
                    children: <Widget>[
                      new Expanded(
                        child: new TextField(
                          controller: _cosechaFijoController, 
                          decoration: InputDecoration(
                          labelText: 'Trabajadores fijos cosechan',
                          ),
                        )
                      ),
                      new PopupMenuButton<String>(
                        icon: const Icon(Icons.arrow_drop_down),
                        onSelected: (String value) {
                          _cosechaFijoController.text = value;
                        },
                        itemBuilder: (BuildContext context) {
                          return _bool.map<PopupMenuItem<String>>((String value) {
                            return new PopupMenuItem(child: new Text(value), value: value);
                          }).toList();
                        },
                      ),
                    ],
                  ),
                ),
                TextField(
                  controller: _numeroTrabajadoresHombresController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Numero de trabajadores Hombres",
                  ),
                ),
                TextField(
                  controller: _numeroTrabajadoresMujeresController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Numero de trabajadoras Mujeres",
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: new Row(
                    children: <Widget>[
                      new Expanded(
                        child: new TextField(
                          controller: _preparacionTerrenoController, 
                          decoration: InputDecoration(
                          labelText: 'Trabajadores Preparan Terreno',
                          ),
                        )
                      ),
                      new PopupMenuButton<String>(
                        icon: const Icon(Icons.arrow_drop_down),
                        onSelected: (String value) {
                          _preparacionTerrenoController.text = value;
                        },
                        itemBuilder: (BuildContext context) {
                          return _bool.map<PopupMenuItem<String>>((String value) {
                            return new PopupMenuItem(child: new Text(value), value: value);
                          }).toList();
                        },
                      ),
                    ],
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: new Row(
                    children: <Widget>[
                      new Expanded(
                        child: new TextField(
                          controller: _siembraController, 
                          decoration: InputDecoration(
                          labelText: 'Trabajadores Siembran',
                          ),
                        )
                      ),
                      new PopupMenuButton<String>(
                        icon: const Icon(Icons.arrow_drop_down),
                        onSelected: (String value) {
                          _siembraController.text = value;
                        },
                        itemBuilder: (BuildContext context) {
                          return _bool.map<PopupMenuItem<String>>((String value) {
                            return new PopupMenuItem(child: new Text(value), value: value);
                          }).toList();
                        },
                      ),
                    ],
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: new Row(
                    children: <Widget>[
                      new Expanded(
                        child: new TextField(
                          controller: _laboresCulturalesController, 
                          decoration: InputDecoration(
                          labelText: 'Trabajadores en labores Culturales',
                          ),
                        )
                      ),
                      new PopupMenuButton<String>(
                        icon: const Icon(Icons.arrow_drop_down),
                        onSelected: (String value) {
                          _laboresCulturalesController.text = value;
                        },
                        itemBuilder: (BuildContext context) {
                          return _bool.map<PopupMenuItem<String>>((String value) {
                            return new PopupMenuItem(child: new Text(value), value: value);
                          }).toList();
                        },
                      ),
                    ],
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: new Row(
                    children: <Widget>[
                      new Expanded(
                        child: new TextField(
                          controller: _riegoController, 
                          decoration: InputDecoration(
                          labelText: 'Trabajadores Riegan',
                          ),
                        )
                      ),
                      new PopupMenuButton<String>(
                        icon: const Icon(Icons.arrow_drop_down),
                        onSelected: (String value) {
                          _riegoController.text = value;
                        },
                        itemBuilder: (BuildContext context) {
                          return _bool.map<PopupMenuItem<String>>((String value) {
                            return new PopupMenuItem(child: new Text(value), value: value);
                          }).toList();
                        },
                      ),
                    ],
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: new Row(
                    children: <Widget>[
                      new Expanded(
                        child: new TextField(
                          controller: _aplicacionAgroquimicosController, 
                          decoration: InputDecoration(
                          labelText: 'Trabajadores aplican Agroquimicos',
                          ),
                        )
                      ),
                      new PopupMenuButton<String>(
                        icon: const Icon(Icons.arrow_drop_down),
                        onSelected: (String value) {
                          _aplicacionAgroquimicosController.text = value;
                        },
                        itemBuilder: (BuildContext context) {
                          return _bool.map<PopupMenuItem<String>>((String value) {
                            return new PopupMenuItem(child: new Text(value), value: value);
                          }).toList();
                        },
                      ),
                    ],
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: new Row(
                    children: <Widget>[
                      new Expanded(
                        child: new TextField(
                          controller: _cosechaController, 
                          decoration: InputDecoration(
                          labelText: 'Trabajadores Cosechan',
                          ),
                        )
                      ),
                      new PopupMenuButton<String>(
                        icon: const Icon(Icons.arrow_drop_down),
                        onSelected: (String value) {
                          _cosechaController.text = value;
                        },
                        itemBuilder: (BuildContext context) {
                          return _bool.map<PopupMenuItem<String>>((String value) {
                            return new PopupMenuItem(child: new Text(value), value: value);
                          }).toList();
                        },
                      ),
                    ],
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: new Row(
                    children: <Widget>[
                      new Expanded(
                        child: new TextField(
                          controller: _mantenimientoController, 
                          decoration: InputDecoration(
                          labelText: 'Trabajadores Mantenimiento',
                          ),
                        )
                      ),
                      new PopupMenuButton<String>(
                        icon: const Icon(Icons.arrow_drop_down),
                        onSelected: (String value) {
                          _mantenimientoController.text = value;
                        },
                        itemBuilder: (BuildContext context) {
                          return _bool.map<PopupMenuItem<String>>((String value) {
                            return new PopupMenuItem(child: new Text(value), value: value);
                          }).toList();
                        },
                      ),
                    ],
                  ),
                ),
                 new Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: new Row(
                    children: <Widget>[
                      new Expanded(
                        child: new TextField(
                          controller: _ayudaGeneralController, 
                          decoration: InputDecoration(
                          labelText: 'Trabajadores de ayuda General',
                          ),
                        )
                      ),
                      new PopupMenuButton<String>(
                        icon: const Icon(Icons.arrow_drop_down),
                        onSelected: (String value) {
                          _ayudaGeneralController.text = value;
                        },
                        itemBuilder: (BuildContext context) {
                          return _bool.map<PopupMenuItem<String>>((String value) {
                            return new PopupMenuItem(child: new Text(value), value: value);
                          }).toList();
                        },
                      ),
                    ],
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: new Row(
                    children: <Widget>[
                      new Expanded(
                        child: new TextField(
                          controller: _administradorTrabajadorController, 
                          decoration: InputDecoration(
                          labelText: 'Trabajadores de administran',
                          ),
                        )
                      ),
                      new PopupMenuButton<String>(
                        icon: const Icon(Icons.arrow_drop_down),
                        onSelected: (String value) {
                          _administradorTrabajadorController.text = value;
                        },
                        itemBuilder: (BuildContext context) {
                          return _bool.map<PopupMenuItem<String>>((String value) {
                            return new PopupMenuItem(child: new Text(value), value: value);
                          }).toList();
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  child: Text(action == 'create' ? 'Create' : 'Update'),
                  onPressed: () async {
                    print("Ok");
                    var pos = await location.getLocation();
                    print (pos);
                    final GeoFirePoint point = geo.point(latitude: pos.latitude!, longitude: pos.longitude!);
                    print (point);
                    print('ok 2');
                    final String? numeroCaptador = _numeroCaptadorController.text;
                    final String? nombreCaptador = _nombreCaptadorController.text;
                    final String? cedula = _cedulaController.text;
                    final String? estado = _estadoController.text;
                    final String? tipoPersona = _tipoPersonaController.text;
                    final String? primerNombre = _primerNombreController.text;
                    final String? segundoNombre = _segundoNombreController.text;
                    final String? primerApellido = _primerApellidoController.text;
                    final String? segundoApellido = _segundoApellidoController.text;
                    final String? apellidoConyuge = _apellidoConyugeController.text;
                    final String? fechaNacimiento = _fechaNacimientoController.text;
                    final String? direccion = _direccionController.text;
                    final String? provincia = _provinciaController.text;
                    final String? corregimiento = _corregimientoController.text;
                    final String? distrito = _distritoController.text;
                    final String? poblado = _pobladoController.text;
                    final String? numeroCasa = _numeroCasaController.text;
                    final String? nacionalidad = _nacionalidadController.text;
                    final String? correo = _correoController.text;
                    final String? sexo = _sexoController.text;
                    final String? celular = _celularController.text;
                    final String? escolaridad = _escolaridadController.text;
                    final String? organizacionAsociativa = _organizacionAsociativaController.text;
                    final String? actividadPrincipal = _actividadPrincipalController.text;
                    final String? anosActivo = _anosActivoController.text;
                    final String? sabeLeer = _sabeLeerController.text;
                    final String? sabeEscribir = _sabeEscribirController.text;
                    final String? observaciones = _observacionesController.text;
                    final String? l12065 = _l12065Controller.text;
                    final String? angelGuardian = _angelGuardianController.text;
                    final String? becaUniversal = _becaUniversalController.text;
                    final String? ley24 = _ley24Controller.text;                    
                    final String? ley25 = _ley25Controller.text;
                    final String? redOportunidades = _redOportunidadesController.text;
                    final String? numeroFinca = _numeroFincaController.text;
                    final String? nombreFinca = _nombreFincaController.text;
                    final String? provinciaFinca = _provinciaFincaController.text;
                    final String? distritoFinca = _distritoFincaController.text;
                    final String? corregimientoFinca = _corregimientoFincaController.text;
                    final String? pobladoFinca = _pobladoFincaController.text;
                    final String? superficieFinca = _superficieFincaController.text;
                    final String? apoyo = _apoyoController.text;
                    final String? agua = _aguaController.text;
                    final String? accesoVehicular = _accesoVehicularController.text;
                    final String? tiempoAccesoEnVerano = _tiempoAccesoEnVeranoController.text;
                    final String? tiempoAccesoEnInvierno = _tiempoAccesoEnInviernoController.text;
                    final String? tiempoAccesoEnInviernoMidas = _tiempoAccesoEnInviernoMidasController.text;
                    final String? tiempoAccesoEnVeranoMidas = _tiempoAccesoEnVeranoMidasController.text;
                    final String? asistencia = _asistenciaController.text;
                    final String? actividades = _actividadesController.text;
                    final String? estructuraAlmacenamiento = _estructuraAlmacenamientoController.text;
                    final String? distanciaFincaAdministrador = _distanciaFincaAdministradorController.text;
                    final String? administrador = _administradorController.text;
                    final String? tipoTerreno = _tipoTerrenoController.text;
                    final String? extencionTerreno = _extencionTerrenoController.text;
                    final String? tenencia = _tenenciaController.text;
                    final String? aseguramiento = _aseguramientoController.text;
                    final String? notas = _notasController.text;
                    final String? numeroTrabajadoresFijosMujeres = _numeroTrabajadoresFijosMujeresController.text; 
                    final String? numeroTrabajadoresFijosHombres = _numeroTrabajadoresFijosHombresController.text; 
                    final String? preparacionTerrenoFijo = _preparacionTerrenoFijoController.text; 
                    final String? siembraFijo = _siembraFijoController.text;  
                    final String? laboresCulturalesFijo = _laboresCulturalesFijoController.text; 
                    final String? riegoFijo = _riegoFijoController.text ;
                    final String? aplicacionAgroquimicosFijo = _aplicacionAgroquimicosFijoController.text; 
                    final String? cosechaFijo = _cosechaFijoController.text; 
                    final String? numeroTrabajadoresHombres = _numeroTrabajadoresHombresController.text; 
                    final String? numeroTrabajadoresMujeres = _numeroTrabajadoresMujeresController.text; 
                    final String? preparacionTerreno = _preparacionTerrenoController.text; 
                    final String? siembra = _siembraController.text; 
                    final String? laboresCulturales = _laboresCulturalesController.text;
                    final String? aplicacionAgroquimicos = _aplicacionAgroquimicosController.text; 
                    final String? cosecha = _cosechaController.text;
                    final String? riego = _riegoController.text;
                    final String? mantenimiento = _mantenimientoController.text; 
                    final String? ayudaGeneral = _ayudaGeneralController.text; 
                    final String? administradorTrabajador = _administradorTrabajadorController.text;
                    
      

                    
                    
                    if (cedula != null && primerNombre != null) {
                      if (action == 'create') {
                        // Persist a new product to Firestore
                        await _producerss.add({"cedula": cedula, "estado": estado, "tipoPersona":tipoPersona, "primerNombre": primerNombre, "segundoNombre": segundoNombre,"primerApellido" : primerApellido, "segundoApellido": segundoApellido, "apellidoConyuge": apellidoConyuge, "fechaNacimiento": fechaNacimiento, "direccion": direccion, "provincia":provincia, "corregimiento": corregimiento, "distrito":distrito, "poblado":poblado, "numeroCasa":numeroCasa, "nacionalidad": nacionalidad, "correo": correo, "sexo": sexo, "celular": celular,"escolaridad": escolaridad,"organizacionAsociativa": organizacionAsociativa,"actividadPrincipal": actividadPrincipal,"anosActivo": anosActivo,"sabeLeer": sabeLeer,"sabeEscribir": sabeEscribir,"observaciones": observaciones,"l12065": l12065,"angelGuardian": angelGuardian,"becaUniversal": becaUniversal,"ley25": ley25, "ley24": ley24, "redOportunidades": redOportunidades,  "numeroFinca" : numeroFinca, "nombreFinca" : nombreFinca, "provinciaFinca" : provinciaFinca,"distritoFinca" : distritoFinca,"corregimientoFinca" : corregimientoFinca,"pobladoFinca" : pobladoFinca, "superficieFinca" : superficieFinca, "apoyo" : apoyo,"agua" : agua, "accesoVehicular" : accesoVehicular,"tiempoAccesoEnVerano" : tiempoAccesoEnVerano,"tiempoAccesoEnInvierno" : tiempoAccesoEnInvierno,"tiempoAccesoEnInviernoMidas" : tiempoAccesoEnInviernoMidas,"tiempoAccesoEnVeranoMidas" : tiempoAccesoEnVeranoMidas,"asistencia" : asistencia,"actividades" : actividades,"estructuraAlmacenamiento" : estructuraAlmacenamiento,"distanciaFincaAdministrador" : distanciaFincaAdministrador,"administrador" : administrador,"tipoTerreno" : tipoTerreno,"extencionTerreno" : extencionTerreno,"tenencia" : tenencia,"aseguramiento" : aseguramiento,"notas" : notas,"numeroTrabajadoresFijosHombres" : numeroTrabajadoresFijosHombres,"numeroTrabajadoresFijosMujeres" : numeroTrabajadoresFijosMujeres,"preparacionTerrenoFijo" : preparacionTerrenoFijo,"siembraFijo" : siembraFijo, "laboresCulturalesFijo" : laboresCulturalesFijo, "riegoFijo" : riegoFijo, "aplicacionAgroquimicosFijo" : aplicacionAgroquimicosFijo, "cosechaFijo":cosechaFijo, "numeroTrabajadoresHombres" : numeroTrabajadoresHombres,"numeroTrabajadoresMujeres" : numeroTrabajadoresMujeres,"preparacionTerreno" : preparacionTerreno,"siembra" : siembra, "laboresCulturales" : laboresCulturales, "riego" : riego, "aplicacionAgroquimicos" : aplicacionAgroquimicos, "cosecha":cosecha, "mantenimiento":mantenimiento, "ayudaGeneral":ayudaGeneral, "administradorTrabajador":administradorTrabajador, 'point': point.data, 'numeroCaptador':numeroCaptador, 'nombreCaptador':nombreCaptador });                 
                      } 

                      if (action == 'update') {
                        // Update the product
                        await _producerss
                            .doc(documentSnapshot!.id)
                            .update({"cedula": cedula, "estado": estado, "tipoPersona":tipoPersona, "primerNombre": primerNombre, "segundoNombre": segundoNombre,"primerApellido" : primerApellido, "segundoApellido": segundoApellido, "apellidoConyuge": apellidoConyuge, "fechaNacimiento": fechaNacimiento, "direccion": direccion, "provincia":provincia, "corregimiento": corregimiento, "distrito":distrito, "poblado":poblado, "numeroCasa":numeroCasa, "nacionalidad": nacionalidad, "correo": correo, "sexo": sexo, "celular": celular,"escolaridad": escolaridad,"organizacionAsociativa": organizacionAsociativa,"actividadPrincipal": actividadPrincipal,"anosActivo": anosActivo,"sabeLeer": sabeLeer,"sabeEscribir": sabeEscribir,"observaciones": observaciones,"l12065": l12065,"angelGuardian": angelGuardian,"becaUniversal": becaUniversal,"ley25": ley25, "ley24": ley24, "redOportunidades": redOportunidades, "numeroFinca" : numeroFinca, "nombreFinca" : nombreFinca, "provinciaFinca" : provinciaFinca,"distritoFinca" : distritoFinca,"corregimientoFinca" : corregimientoFinca,"pobladoFinca" : pobladoFinca, "superficieFinca" : superficieFinca, "apoyo" : apoyo,"agua" : agua, "accesoVehicular" : accesoVehicular,"tiempoAccesoEnVerano" : tiempoAccesoEnVerano,"tiempoAccesoEnInvierno" : tiempoAccesoEnInvierno,"tiempoAccesoEnInviernoMidas" : tiempoAccesoEnInviernoMidas,"tiempoAccesoEnVeranoMidas" : tiempoAccesoEnVeranoMidas,"asistencia" : asistencia,"actividades" : actividades,"estructuraAlmacenamiento" : estructuraAlmacenamiento,"distanciaFincaAdministrador" : distanciaFincaAdministrador,"administrador" : administrador,"tipoTerreno" : tipoTerreno,"extencionTerreno" : extencionTerreno,"tenencia" : tenencia,"aseguramiento" : aseguramiento,"notas" : notas,"numeroTrabajadoresFijosHombres" : numeroTrabajadoresFijosHombres,"numeroTrabajadoresFijosMujeres" : numeroTrabajadoresFijosMujeres,"preparacionTerrenoFijo" : preparacionTerrenoFijo,"siembraFijo" : siembraFijo, "laboresCulturalesFijo" : laboresCulturalesFijo, "riegoFijo" : riegoFijo, "aplicacionAgroquimicosFijo" : aplicacionAgroquimicosFijo, "cosechaFijo":cosechaFijo, "numeroTrabajadoresHombres" : numeroTrabajadoresHombres,"numeroTrabajadoresMujeres" : numeroTrabajadoresMujeres,"preparacionTerreno" : preparacionTerreno,"siembra" : siembra, "laboresCulturales" : laboresCulturales, "riego" : riego, "aplicacionAgroquimicos" : aplicacionAgroquimicos, "cosecha":cosecha, "mantenimiento":mantenimiento, "ayudaGeneral":ayudaGeneral, "administradorTrabajador":administradorTrabajador, 'numeroCaptador':numeroCaptador, 'nombreCaptador':nombreCaptador });
                      }
                      
                      // Clear the text fields
                      _numeroCaptadorController.text = '';
                      _nombreCaptadorController.text = '';
                      _cedulaController.text = '';
                      _estadoController.text = '';
                      _tipoPersonaController.text = '';
                      _primerNombreController.text = '';
                      _segundoNombreController.text = '';
                      _primerApellidoController.text = '';
                      _segundoApellidoController.text = '';
                      _apellidoConyugeController.text = '';
                      _fechaNacimientoController.text = '';
                      _direccionController.text = '';
                      _provinciaController.text = '';
                      _corregimientoController.text = '';
                      _distritoController.text = '';
                      _pobladoController.text = '';
                      _numeroCasaController.text = '';
                      _nacionalidadController.text = '';
                      _correoController.text = '';
                      _sexoController.text = '';
                      _celularController.text = ''; 
                      _escolaridadController.text = '';
                      _organizacionAsociativaController.text = '';
                      _actividadPrincipalController.text = '';
                      _anosActivoController.text = '';
                      _sabeLeerController.text = '';
                      _sabeEscribirController.text = '';
                      _observacionesController.text = '';
                      _l12065Controller.text = '';
                      _angelGuardianController.text = '';
                      _becaUniversalController.text = '';
                      _ley25Controller.text = '';
                      _ley24Controller.text = '';
                      _redOportunidadesController.text = '';
                      _numeroFincaController.text = '';
                      _nombreFincaController.text = '';
                      _provinciaFincaController.text = '';
                      _distritoFincaController.text = '';
                      _corregimientoFincaController.text = '';
                      _pobladoFincaController.text = '';
                      _superficieFincaController.text = '';
                      _apoyoController.text = '';
                      _aguaController.text = '';
                      _accesoVehicularController.text = '';
                      _tiempoAccesoEnVeranoController.text = '';
                      _tiempoAccesoEnInviernoController.text = '';
                      _tiempoAccesoEnInviernoMidasController.text = '';
                      _tiempoAccesoEnVeranoMidasController.text = '';
                      _asistenciaController.text = '';
                      _actividadesController.text = '';
                      _estructuraAlmacenamientoController.text = '';
                      _distanciaFincaAdministradorController.text = '';
                      _administradorController.text = '';
                      _tipoTerrenoController.text = '';
                      _extencionTerrenoController.text = '';
                      _tenenciaController.text = '';
                      _aseguramientoController.text = '';
                      _notasController.text = '';
                      

                      // Hide the bottom sheet
                      Navigator.of(context).pop();
                    }
                  },
                )
              ],
            ),
          );
        });
  }

  // Deleteing a product by id
  Future<void> _deleteProducer(String producerId) async {
    await _producerss.doc(producerId).delete();

    // Show a snackbar
    ScaffoldMessenger.of(context).showSnackBar(
      
        SnackBar(content: Text('You have successfully deleted a producer')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Productores'),
      ),
      // Using StreamBuilder to display all products from Firestore in real-time
      body: StreamBuilder(
        stream: _producerss.snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
          if (streamSnapshot.hasData) {
            return ListView.builder(
              itemCount: streamSnapshot.data!.docs.length,
              itemBuilder: (context, index) {
                final DocumentSnapshot documentSnapshot =
                    streamSnapshot.data!.docs[index];
                return Card(
                  margin: EdgeInsets.all(10),
                  child: ListTile(
                    title: Text(documentSnapshot['cedula']),
                    subtitle: Text(documentSnapshot['primerNombre']),
                    trailing: SizedBox(
                      width: 100,
                      child: Row(
                        children: [
                          // Press this button to edit a single product
                          IconButton(
                              icon: Icon(Icons.edit),
                              onPressed: () =>
                                  _createOrUpdate(documentSnapshot)),
                          // This icon button is used to delete a single product
                          IconButton(
                              icon: Icon(Icons.delete),
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (_) => AlertDialog(
                                        title: Text('Eliminar Productor'),
                                        content: Text('Seguro que quieres borrar este registro?'),
                                        actions: [
                                         new TextButton(
                                          child: new Text("Delete"),
                                          onPressed: ()   =>
                                           _deleteProducer(documentSnapshot.id), ),
                                        new TextButton(
                                          child: Text("Cancel"),
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                        ),
                                      ],
                                    )
                                );
                              }
                            ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }

          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
      // Add new product
      floatingActionButton: FloatingActionButton(
        onPressed: () => _createOrUpdate(),
        child: Icon(Icons.add),
      ),
    );
  }
}