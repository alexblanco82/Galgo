import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'es', 'gl'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? esText = '',
    String? glText = '',
  }) =>
      [enText, esText, glText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Loadings
  {
    'j22yg4hp': {
      'en': '01',
      'es': '01',
      'gl': '01',
    },
    '6uo0wkfl': {
      'en': '02',
      'es': '02',
      'gl': '02',
    },
    'vatfffey': {
      'en': '03',
      'es': '03',
      'gl': '03',
    },
    'rgj0xa67': {
      'en': '04',
      'es': '04',
      'gl': '04',
    },
    'o363y6qu': {
      'en': '05',
      'es': '05',
      'gl': '05',
    },
    'w9x0qi0z': {
      'en': '06',
      'es': '06',
      'gl': '06',
    },
    '0dnj84tm': {
      'en': '07',
      'es': '07',
      'gl': '07',
    },
    'ulxeoz4w': {
      'en': '08',
      'es': '08',
      'gl': '08',
    },
    'r56hmqee': {
      'en': '09',
      'es': '09',
      'gl': '09',
    },
    'm4fv4r0d': {
      'en': '10',
      'es': '10',
      'gl': '10',
    },
    'c96kyk4y': {
      'en': '11',
      'es': '11',
      'gl': '11',
    },
    'pphlfnud': {
      'en': '12',
      'es': '12',
      'gl': '12',
    },
    'ni04kr5q': {
      'en': '13',
      'es': '13',
      'gl': '13',
    },
    'qljae5hh': {
      'en': '14',
      'es': '14',
      'gl': '14',
    },
    'h2saim9f': {
      'en': '15',
      'es': '15',
      'gl': '15',
    },
    '06o001gy': {
      'en': '16',
      'es': 'dieciséis',
      'gl': '16',
    },
    '0j5f8z5c': {
      'en': '17',
      'es': '17',
      'gl': '17',
    },
    'rfk4mwqq': {
      'en': '18',
      'es': '18',
      'gl': '18',
    },
    '1edn3x9n': {
      'en': '19',
      'es': '19',
      'gl': '19',
    },
    'og3wg6uo': {
      'en': '20',
      'es': '20',
      'gl': '20',
    },
    'asv4u0py': {
      'en': 'Loading Animations',
      'es': 'Cargando animaciones',
      'gl': 'Cargando animacións',
    },
    'nfvwt9rb': {
      'en': 'Home',
      'es': 'Hogar',
      'gl': 'Casa',
    },
  },
  // Start
  {
    'fpcfj5x2': {
      'en': 'Skip',
      'es': 'Saltar',
      'gl': 'Saltar',
    },
    'la8cewbz': {
      'en': 'Get started with GalGo',
      'es': 'Comience con GalGo',
      'gl': 'Comeza con GalGo',
    },
    'phszpz68': {
      'en': 'Continue',
      'es': 'Continuar',
      'gl': 'Continuar',
    },
    'yns3wmuo': {
      'en': 'Home',
      'es': 'Hogar',
      'gl': 'Casa',
    },
  },
  // SignUp
  {
    'ct6u3i0s': {
      'en': 'Enter your mobile number',
      'es': 'Ingrese su numero celular',
      'gl': 'Introduce o teu número de móbil',
    },
    'xul6oikx': {
      'en': 'Mobile number',
      'es': 'Número de teléfono móvil',
      'gl': 'Número de móbil',
    },
    '7960k38z': {
      'en': 'Continue',
      'es': 'Continuar',
      'gl': 'Continuar',
    },
    'bz8aqwkl': {
      'en': 'Continue with Apple',
      'es': 'Continuar con Apple',
      'gl': 'Continúa con Apple',
    },
    's5qhase3': {
      'en': 'Continue with Facebook',
      'es': 'Continuar con Facebook',
      'gl': 'Continúa con Facebook',
    },
    'noeqay15': {
      'en': 'Continue with Google',
      'es': 'Continuar con Google',
      'gl': 'Continúa con Google',
    },
    'nc92ytso': {
      'en':
          'By procedding, you consent to get calls, WhatsApp or SMS messages, including by automated means, from Huber and its ffiliates to the number provided',
      'es':
          'Al continuar, usted acepta recibir llamadas, WhatsApp o mensajes SMS, incluso por medios automatizados, de Huber y sus filiales al número proporcionado.',
      'gl':
          'Ao proceder, aceptas recibir chamadas, WhatsApp ou mensaxes SMS, incluso por medios automatizados, de Huber e as súas filiales ao número proporcionado.',
    },
    'av7nqhog': {
      'en': 'This site is protected by reCAPTCHA and the Google ',
      'es': 'Este sitio está protegido por reCAPTCHA y Google',
      'gl': 'Este sitio está protexido por reCAPTCHA e Google',
    },
    'lo5bkviz': {
      'en': 'Privacy Policy ',
      'es': 'política de privacidad',
      'gl': 'Política de Privacidade',
    },
    'c3wsftz7': {
      'en': 'and ',
      'es': 'y',
      'gl': 'e',
    },
    '6l5yym8b': {
      'en': 'Terms of Service ',
      'es': 'Términos de servicio',
      'gl': 'Condicións de servicio',
    },
    'gooe8shy': {
      'en': 'apply.',
      'es': 'aplicar.',
      'gl': 'aplicar.',
    },
    'issj64eu': {
      'en': 'Home',
      'es': 'Hogar',
      'gl': 'Casa',
    },
  },
  // PinCode
  {
    'llyz0duv': {
      'en': 'Enter the 4-digit code sent to you at 07539 123456 ',
      'es': 'Ingresa el código de 4 dígitos que te enviaron al 07539 123456',
      'gl': 'Introduce o código de 4 díxitos que che enviaron ao 07539 123456',
    },
    'fudoiw6r': {
      'en': 'I haven’t received a code',
      'es': 'no he recibido un codigo',
      'gl': 'Non recibín un código',
    },
    '09hho6o5': {
      'en': '(0:05)',
      'es': '(0:05)',
      'gl': '(0:05)',
    },
    '6egi60dc': {
      'en': 'Home',
      'es': 'Hogar',
      'gl': 'Casa',
    },
  },
  // AccountEmail
  {
    'mzpzb18d': {
      'en': 'What is your email address?',
      'es': '¿Cuál es tu dirección de correo electrónico?',
      'gl': 'Cal é o teu enderezo de correo electrónico?',
    },
    'a4foybwy': {
      'en': 'name@example.com',
      'es': 'nombre@ejemplo.com',
      'gl': 'nome@exemplo.com',
    },
    'p5lsti6x': {
      'en': 'Next',
      'es': 'Próximo',
      'gl': 'A continuación',
    },
    'n3nmg4zk': {
      'en': 'Home',
      'es': 'Hogar',
      'gl': 'Casa',
    },
  },
  // AccountPassword
  {
    'si4ewagr': {
      'en': 'Create your account password',
      'es': 'Crea la contraseña de tu cuenta',
      'gl': 'Crea o contrasinal da túa conta',
    },
    '2pcr45qu': {
      'en':
          'Your passwords must be at least 8 characters long and contain at least one letter and one digit',
      'es':
          'Sus contraseñas deben tener al menos 8 caracteres y contener al menos una letra y un dígito',
      'gl':
          'Os teus contrasinais deben ter polo menos 8 caracteres e conter polo menos unha letra e un díxitos',
    },
    'iiwvh3v2': {
      'en': 'Please enter your password',
      'es': 'Por favor, introduzca su contraseña',
      'gl': 'Introduce o teu contrasinal',
    },
    'a79jxjxg': {
      'en': 'Next',
      'es': 'Próximo',
      'gl': 'A continuación',
    },
    'veqhx2qk': {
      'en': 'Home',
      'es': 'Hogar',
      'gl': 'Casa',
    },
  },
  // AccountName
  {
    'mxrx7b4p': {
      'en': 'What’s your name?',
      'es': '¿Cómo te llamas?',
      'gl': 'Como te chamas?',
    },
    'xir6zuss': {
      'en': 'Let us know how to properly address you',
      'es': 'Déjanos saber cómo dirigirnos a ti adecuadamente.',
      'gl': 'Indícanos como dirixirnos correctamente',
    },
    'nv62gjyp': {
      'en': 'Please enter first name',
      'es': 'Por favor ingrese el nombre',
      'gl': 'Introduce o nome',
    },
    'om80t0er': {
      'en': 'Please enter surname',
      'es': 'Por favor ingrese el apellido',
      'gl': 'Introduce o apelido',
    },
    'uttacmov': {
      'en': 'Next',
      'es': 'Próximo',
      'gl': 'A continuación',
    },
    'y3uedkj0': {
      'en': 'Home',
      'es': 'Hogar',
      'gl': 'Casa',
    },
  },
  // AcceptTerms
  {
    'mak1ryb9': {
      'en': 'Accept GalGo  Terms & Review Privacy Notice',
      'es': 'Acepte los términos de GalGo y revise el aviso de privacidad',
      'gl': 'Acepta os termos de GalGo e revisa o aviso de privacidade',
    },
    'nw973qa6': {
      'en': 'By selecting ‘I Agree’ below, I have reviewed and agree to the ',
      'es':
          'Al seleccionar \"Acepto\" a continuación, he revisado y acepto las',
      'gl':
          'Ao seleccionar \"Estou de acordo\" a continuación, revisei e acepto',
    },
    'hb8u4uin': {
      'en': 'Terms of Use ',
      'es': 'Condiciones de uso',
      'gl': 'Condicións de uso',
    },
    '05rgpd4g': {
      'en': 'and acknowledge the ',
      'es': 'y reconocer el',
      'gl': 'e recoñece o',
    },
    'j3i864fs': {
      'en': 'Privacy Notice. ',
      'es': 'Aviso de Privacidad.',
      'gl': 'Aviso de privacidade.',
    },
    's86rl6sd': {
      'en': 'I am at least 18 years of age.  ',
      'es': 'Tengo al menos 18 años.',
      'gl': 'Teño polo menos 18 anos.',
    },
    '74n2lhhd': {
      'en': 'I agree',
      'es': 'Estoy de acuerdo',
      'gl': 'Estou de acordo',
    },
    't4fx33lo': {
      'en': 'Next',
      'es': 'Próximo',
      'gl': 'A continuación',
    },
    'loyzgfbg': {
      'en': 'Home',
      'es': 'Hogar',
      'gl': 'Casa',
    },
  },
  // Updates
  {
    '6xed8p5i': {
      'en': 'Discounts, updates and more',
      'es': 'Descuentos, actualizaciones y más',
      'gl': 'Descontos, actualizacións e moito máis',
    },
    'bxe0pnor': {
      'en':
          'You’re all set to receive special offers, personalised recommendations and essential product updates for all Huber services. This may include related services like Rides, Eats, Grocery, Scooters/Bikes and more.',
      'es':
          'Ya está todo listo para recibir ofertas especiales, recomendaciones personalizadas y actualizaciones de productos esenciales para todos los servicios de Huber. Esto puede incluir servicios relacionados como paseos, comidas, comestibles, scooters/bicicletas y más.',
      'gl':
          'Xa estás preparado para recibir ofertas especiais, recomendacións personalizadas e actualizacións de produtos esenciais para todos os servizos de Huber. Isto pode incluír servizos relacionados como paseos, comidas, supermercados, scooters/bicicletas e moito máis.',
    },
    'd8bamxs5': {
      'en': 'To manage your communication or marketing peferences, just go to:',
      'es':
          'Para gestionar tus preferencias de comunicación o marketing, sólo tienes que acceder a:',
      'gl':
          'Para xestionar as túas preferencias de comunicación ou marketing, só tes que ir a:',
    },
    'to0lunbk': {
      'en': 'Marketing preferences settings',
      'es': 'Configuración de preferencias de marketing',
      'gl': 'Configuración de preferencias de marketing',
    },
    'a64mn6td': {
      'en': 'Next',
      'es': 'Próximo',
      'gl': 'A continuación',
    },
    'cs4tha9h': {
      'en': 'Home',
      'es': 'Hogar',
      'gl': 'Casa',
    },
  },
  // PermissionAccess
  {
    '1r3iupm6': {
      'en': 'Allow location access',
      'es': 'Permitir acceso a la ubicación',
      'gl': 'Permitir o acceso á localización',
    },
    'e51d5s59': {
      'en':
          'This lets us show you which restaurants and stores you can order from',
      'es':
          'Esto nos permite mostrarte en qué restaurantes y tiendas puedes realizar pedidos.',
      'gl':
          'Isto permítenos mostrarche en que restaurantes e tendas podes pedir',
    },
    'z6gh96d2': {
      'en': 'Allow',
      'es': 'Permitir',
      'gl': 'Permitir',
    },
    'ydevsrrw': {
      'en': 'Close',
      'es': 'Cerca',
      'gl': 'Pechar',
    },
    'st8k2m9k': {
      'en': 'Home',
      'es': 'Hogar',
      'gl': 'Casa',
    },
  },
  // PaymentMethod
  {
    'ey21a5t7': {
      'en': 'Select your preferred payment method',
      'es': 'Seleccione su método de pago preferido',
      'gl': 'Selecciona o teu método de pago preferido',
    },
    'sp6s3ox7': {
      'en': 'Cash',
      'es': 'Dinero',
      'gl': 'Efectivo',
    },
    '0e9za3mi': {
      'en': 'PayPal',
      'es': 'PayPal',
      'gl': 'PayPal',
    },
    'hlh6gnk5': {
      'en': 'Credit or debit card',
      'es': 'Tarjeta de crédito o débito',
      'gl': 'Tarxeta de crédito ou débito',
    },
    'ltwk7u23': {
      'en': 'Home',
      'es': 'Hogar',
      'gl': 'Casa',
    },
  },
  // AddCreditCard
  {
    '4ab7gjsa': {
      'en': 'Card number',
      'es': 'Número de tarjeta',
      'gl': 'Número de tarxeta',
    },
    'iyssk7tx': {
      'en': 'Exp. date',
      'es': 'Exp. fecha',
      'gl': 'Exp. data',
    },
    'fpcb42v4': {
      'en': 'MM/YY',
      'es': 'MM/AA',
      'gl': 'MM/AA',
    },
    'gz0ndqbe': {
      'en': 'CVV',
      'es': 'CVV',
      'gl': 'CVV',
    },
    'j8pkke48': {
      'en': '123',
      'es': '123',
      'gl': '123',
    },
    'tes37eie': {
      'en': 'Country',
      'es': 'País',
      'gl': 'País',
    },
    'lsenqiwf': {
      'en': 'Postcode',
      'es': 'Código postal',
      'gl': 'Código postal',
    },
    'sgy15j2k': {
      'en': 'Save',
      'es': 'Ahorrar',
      'gl': 'Gardar',
    },
    'lx74hulo': {
      'en': 'Invalid or unsupported card number',
      'es': 'Número de tarjeta no válido o no admitido',
      'gl': 'Número de tarxeta non válido ou non admitido',
    },
    'dmygdj6i': {
      'en': 'Please choose an option from the dropdown',
      'es': 'Por favor elija una opción del menú desplegable',
      'gl': 'Escolle unha opción do menú despregable',
    },
    '8tbi2gqq': {
      'en': 'Card expired',
      'es': 'Tarjeta caducada',
      'gl': 'Tarxeta caducada',
    },
    'iwmtv0yp': {
      'en': 'Please choose an option from the dropdown',
      'es': 'Por favor elija una opción del menú desplegable',
      'gl': 'Escolle unha opción do menú despregable',
    },
    'd5sn7im0': {
      'en': 'Code too short',
      'es': 'Código demasiado corto',
      'gl': 'O código moi curto',
    },
    't4nrjmd3': {
      'en': 'Please choose an option from the dropdown',
      'es': 'Por favor elija una opción del menú desplegable',
      'gl': 'Escolle unha opción do menú despregable',
    },
    'zzidt5hp': {
      'en': 'Please enter a valid postal code',
      'es': 'Por favor introduce un código postal válido',
      'gl': 'Introduce un código postal válido',
    },
    '8aattogy': {
      'en': 'Please choose an option from the dropdown',
      'es': 'Por favor elija una opción del menú desplegable',
      'gl': 'Escolle unha opción do menú despregable',
    },
    'd156gkdz': {
      'en': 'Home',
      'es': 'Hogar',
      'gl': 'Casa',
    },
  },
  // AddAddress
  {
    'x2195z1l': {
      'en': 'Adjust pin',
      'es': 'Ajustar pasador',
      'gl': 'Axustar o pin',
    },
    '65fcw6mq': {
      'en': '187 Ferndale Rd, Brixton, London, \tSW9',
      'es': '187 Ferndale Rd, Brixton, Londres, SW9',
      'gl': '187 Ferndale Rd, Brixton, Londres, SW9',
    },
    'v05oyg0n': {
      'en': 'Business or building name',
      'es': 'Nombre del negocio o edificio',
      'gl': 'Nome da empresa ou edificio',
    },
    '0qvfbvqo': {
      'en': 'Flat or house number',
      'es': 'Número de piso o casa',
      'gl': 'Número de piso ou casa',
    },
    'k6n5milr': {
      'en': 'Street address',
      'es': 'Dirección',
      'gl': 'Enderezo',
    },
    'i44xbwac': {
      'en': 'Postcode',
      'es': 'Código postal',
      'gl': 'Código postal',
    },
    'lpgvpc8e': {
      'en': 'Delivery options',
      'es': 'Opciones de entrega',
      'gl': 'Opcións de entrega',
    },
    'suchyb8a': {
      'en': 'Leave at door',
      'es': 'dejar en la puerta',
      'gl': 'Deixa na porta',
    },
    'or1dnmip': {
      'en': 'Meet at door',
      'es': 'Reunirse en la puerta',
      'gl': 'Reunímonos na porta',
    },
    'u5u0r5bp': {
      'en': 'Meet outside',
      'es': 'Reunirse afuera',
      'gl': 'Reunímonos fóra',
    },
    'ot6kepqc': {
      'en': 'Meet in park',
      'es': 'Reunirse en el parque',
      'gl': 'Reunímonos no parque',
    },
    '7ndjf8g8': {
      'en': 'Add instructions',
      'es': 'Agregar instrucciones',
      'gl': 'Engade instrucións',
    },
    'jxnc5cvr': {
      'en': 'Address label',
      'es': 'Etiqueta de dirección',
      'gl': 'Etiqueta de enderezo',
    },
    'e5gvwltd': {
      'en': 'Add a label (e.g. school)',
      'es': 'Agregar una etiqueta (por ejemplo, escuela)',
      'gl': 'Engadir unha etiqueta (por exemplo, escola)',
    },
    'o2lr2o25': {
      'en': 'Save and continue',
      'es': 'Guardar y continuar',
      'gl': 'Garda e continúa',
    },
    '65kjuw8o': {
      'en': 'Home',
      'es': 'Hogar',
      'gl': 'Casa',
    },
  },
  // Membership
  {
    'd68idpa2': {
      'en': 'Save with a membership',
      'es': 'Ahorra con una membresía',
      'gl': 'Aforra cunha subscrición',
    },
    'zlp8ezpl': {
      'en': 'Try GalGo One',
      'es': 'Pruebe GalGo One',
      'gl': 'Proba GalGo One',
    },
    '06jej6uo': {
      'en': 'Free for 1 month',
      'es': 'Gratis por 1 mes',
      'gl': 'Gratis durante 1 mes',
    },
    'kkipt83l': {
      'en': '£0 Delivery Feee on eliible food, groceries and more',
      'es': 'Tarifa de entrega de £0 en alimentos elegibles, abarrotes y más',
      'gl': 'Taxa de envío de 0 £ en alimentos, comestibles e moito máis',
    },
    'r8jn5n2a': {
      'en': '5% off eligibe deliveries and pick-up orders',
      'es': '5% de descuento en entregas elegibles y pedidos para recoger',
      'gl': '5% de desconto en entregas e pedidos de recollida',
    },
    'qhs3km3n': {
      'en': '5-10%',
      'es': '5-10%',
      'gl': '5-10 %',
    },
    't8qsoavh': {
      'en': '£5 credit if our Latest Arrival estimate on your order is off*',
      'es':
          'Crédito de £5 si nuestra última estimación de llegada en su pedido es incorrecta*',
      'gl':
          '5 £ de crédito se a nosa estimación de última chegada no teu pedido está desactivada*',
    },
    'r8r5acaw': {
      'en': 'Member exclusibes and rewards',
      'es': 'Exclusividades y recompensas para miembros',
      'gl': 'Exclusións e recompensas para membros',
    },
    'sodtzbp3': {
      'en': 'Cancel without fees or penalties',
      'es': 'Cancelar sin comisiones ni penalizaciones',
      'gl': 'Cancela sen comisións nin penalizacións',
    },
    'oyefwxhy': {
      'en':
          '*Benefits available only for eligible stores marked with the Huber One icon. £15 minimum order applies to qualify for £0 Delivery Fee and 5% off from participating non-grocery stores. £25 minimum order applies to participating grocery stores to qualify for £0 Delivery Fee, where grocery is available. Benefits don’t apply to orders with tobacco items. Huber One Promise is based on the Latest Arrival estimate, determined once you place your order. Huber One discounts are not available for trips booked 30 minutes or more in advance, for shared trips or for Local Cab. Taxes and fees, if applicable, do not apply to order minimums. Other exclusions may apply, please see the Terms and Conditions at https://builderking.io/\n',
      'es':
          '*Beneficios disponibles solo para tiendas elegibles marcadas con el ícono de Huber One. Se aplica un pedido mínimo de £15 para calificar para una tarifa de envío de £0 y un 5% de descuento en tiendas participantes que no sean comestibles. Se aplica un pedido mínimo de £25 a las tiendas de comestibles participantes para calificar para una tarifa de entrega de £0, donde haya comestibles disponibles. Los beneficios no aplican a pedidos con artículos de tabaco. Huber One Promise se basa en la estimación de la última llegada, determinada una vez que realiza su pedido. Los descuentos de Huber One no están disponibles para viajes reservados con 30 minutos o más de anticipación, para viajes compartidos o para taxi local. Los impuestos y tarifas, si corresponde, no se aplican a los pedidos mínimos. Pueden aplicarse otras exclusiones; consulte los Términos y condiciones en https://builderking.io/',
      'gl':
          '*Ventaxes dispoñibles só para tendas elixibles marcadas coa icona Huber One. O pedido mínimo de £ 15 aplícase para optar a unha taxa de entrega de £ 0 e un desconto do 5 % nas tendas que non sexan supermercados participantes. O pedido mínimo de £ 25 aplícase ás tendas de comestibles participantes para optar a unha taxa de entrega de £ 0, onde hai compras dispoñibles. Os beneficios non se aplican aos pedidos con artigos de tabaco. Huber One Promise baséase na estimación da última chegada, determinada unha vez que realices o teu pedido. Os descontos de Huber One non están dispoñibles para viaxes reservadas con 30 minutos ou máis de antelación, para viaxes compartidas ou para Local Cab. Os impostos e taxas, se é o caso, non se aplican aos mínimos de pedido. Poden aplicarse outras exclusións; consulte os Termos e condicións en https://builderking.io/',
    },
    '1duiv7n4': {
      'en': 'Try for free',
      'es': 'Prueba gratis',
      'gl': 'Proba gratis',
    },
    'ijwkjn1d': {
      'en': 'Try GalGo One',
      'es': 'Pruebe GalGo One',
      'gl': 'Proba GalGo One',
    },
    '9m50et8b': {
      'en': 'Delivery fees will vary by store',
      'es': 'Los gastos de envío variarán según la tienda.',
      'gl': 'Os gastos de envío variarán segundo a tenda',
    },
    'i5755uu8': {
      'en': 'Don’t try',
      'es': 'no lo intentes',
      'gl': 'Non o intentes',
    },
    '4ywer3tx': {
      'en': 'Home',
      'es': 'Hogar',
      'gl': 'Casa',
    },
  },
  // FindNearFood
  {
    't54921y6': {
      'en': 'Find food near you',
      'es': 'Encuentra comida cerca de ti',
      'gl': 'Busca comida preto de ti',
    },
    '2uuylnbr': {
      'en':
          'We need to know your address in order to find delicious food for you.',
      'es':
          'Necesitamos saber su dirección para poder encontrar comida deliciosa para usted.',
      'gl':
          'Necesitamos coñecer o teu enderezo para poder atopar unha deliciosa comida para ti.',
    },
    'bp9d99xm': {
      'en': 'Enter a new address',
      'es': 'Introduzca una nueva dirección',
      'gl': 'Introduce un novo enderezo',
    },
    'tixy6gmb': {
      'en': 'Nearby',
      'es': 'Cercano',
      'gl': 'Preto',
    },
    '1zho9mvw': {
      'en': 'Current Location',
      'es': 'Ubicación actual',
      'gl': 'Localización actual',
    },
    'hkjsq1qh': {
      'en': '187 Ferndale Rd, Brixton, London, \tSW9',
      'es': '187 Ferndale Rd, Brixton, Londres, SW9',
      'gl': '187 Ferndale Rd, Brixton, Londres, SW9',
    },
    'pk1cmrjx': {
      'en': 'Save and continue',
      'es': 'Guardar y continuar',
      'gl': 'Garda e continúa',
    },
    '7tztp6yt': {
      'en': 'Home',
      'es': 'Hogar',
      'gl': 'Casa',
    },
  },
  // Delivery
  {
    'sx261z43': {
      'en': 'Deliver now',
      'es': 'Entregar ahora',
      'gl': 'Entrega agora',
    },
    'xhuuuw8k': {
      'en': 'Schedule',
      'es': 'Cronograma',
      'gl': 'Horario',
    },
    'cl63tcji': {
      'en': 'Enter a new address',
      'es': 'Introduce una nueva dirección',
      'gl': 'Introduce un novo enderezo',
    },
    'rvoj5t6r': {
      'en': 'Nearby',
      'es': 'Cercano',
      'gl': 'Preto',
    },
    '6r0hvs7d': {
      'en': 'Current Location',
      'es': 'Ubicación actual',
      'gl': 'Localización actual',
    },
    'ikgveqov': {
      'en': '187 Ferndale Rd, Brixton, London, \tSW9',
      'es': '187 Ferndale Rd, Brixton, Londres, SW9',
      'gl': '187 Ferndale Rd, Brixton, Londres, SW9',
    },
    'sbdbq5a0': {
      'en': 'Recent locations',
      'es': 'Ubicaciones recientes',
      'gl': 'Localizacións recentes',
    },
    '11u78hpk': {
      'en': 'Home',
      'es': 'Hogar',
      'gl': 'Casa',
    },
    'rw6evkvw': {
      'en': '187 Homefield Avenue & Batcombe Ave...',
      'es': '187 Homefield Avenue y Batcombe Ave...',
      'gl': '187 Homefield Avenue e Batcombe Ave...',
    },
    '7xh22rs3': {
      'en': 'Saved places',
      'es': 'Lugares guardados',
      'gl': 'Lugares gardados',
    },
    'i2ygy711': {
      'en': 'Continue',
      'es': 'Continuar',
      'gl': 'Continuar',
    },
    'xsmiv0j6': {
      'en': 'Home',
      'es': 'Hogar',
      'gl': 'Casa',
    },
  },
  // Home
  {
    'dg6hpl84': {
      'en': 'Now',
      'es': 'Ahora',
      'gl': 'Agora',
    },
    '2oa6iues': {
      'en': '187 Ferndale Rd, Brixton',
      'es': '187 Ferndale Rd, Brixton',
      'gl': '187 Ferndale Rd, Brixton',
    },
    'lmtz5uzv': {
      'en': 'Food, groceries, drinks, etc.',
      'es': 'Alimentos, abarrotes, bebidas, etc.',
      'gl': 'Comida, comestibles, bebidas, etc.',
    },
    'wx9q6e2c': {
      'en': 'Resaurants',
      'es': 'Restaurantes',
      'gl': 'Restaurantes',
    },
    'iy86wz2c': {
      'en': 'Grocery',
      'es': 'Tienda de comestibles',
      'gl': 'Supermercado',
    },
    'i134smdr': {
      'en': 'Convenience',
      'es': 'Conveniencia',
      'gl': 'Comodidade',
    },
    'dmyhguc8': {
      'en': 'Alcohol',
      'es': 'Alcohol',
      'gl': 'Alcol',
    },
    '63ouyrpr': {
      'en': 'Ride',
      'es': 'Conducir',
      'gl': 'Paseo',
    },
    'bqpkgaqe': {
      'en': 'Speciality foods',
      'es': 'Alimentos especiales',
      'gl': 'Alimentos especiais',
    },
    '21eenspb': {
      'en': 'Peri Peri Near Me, Brixton',
      'es': 'Peri Peri cerca de mí, Brixton',
      'gl': 'Peri Peri Near Me, Brixton',
    },
    'g8snv9zm': {
      'en': 'Sponsored',
      'es': 'Patrocinado',
      'gl': 'Patrocinado',
    },
    'h2ejzj95': {
      'en': '£2.49 Delivery Fee',
      'es': '£ 2,49 Tarifa de envío',
      'gl': 'Gastos de envío 2,49 €',
    },
    '66kfhcx8': {
      'en': '25-45 min',
      'es': '25-45 minutos',
      'gl': '25-45 min',
    },
    '9z2rgnu3': {
      'en': 'Home',
      'es': 'Hogar',
      'gl': 'Casa',
    },
  },
  // Filter
  {
    'q72n99r0': {
      'en': 'Sort and Filter',
      'es': 'Ordenar y filtrar',
      'gl': 'Ordenar e filtrar',
    },
    '6kmfo8is': {
      'en': 'Clear all',
      'es': 'Limpiar todo',
      'gl': 'Borrar todo',
    },
    '3ojarskp': {
      'en': 'Sort',
      'es': 'Clasificar',
      'gl': 'Ordenar',
    },
    '511htzo2': {
      'en': 'Picked for you (default)',
      'es': 'Elegido para ti (predeterminado)',
      'gl': 'Escollido para ti (predeterminado)',
    },
    'ugz1o37q': {
      'en': 'Most popular',
      'es': 'Más popular',
      'gl': 'O máis popular',
    },
    'ddqf6lx6': {
      'en': 'Rating',
      'es': 'Clasificación',
      'gl': 'Valoración',
    },
    'nj6ks8yp': {
      'en': 'Delivery time',
      'es': 'El tiempo de entrega',
      'gl': 'Tempo de entrega',
    },
    'i5bphe6x': {
      'en': 'From GalGo',
      'es': 'Desde GalGo',
      'gl': 'De GalGo',
    },
    'mdwth2hx': {
      'en': 'Deals',
      'es': 'Ofertas',
      'gl': 'Ofertas',
    },
    'ka0x6p68': {
      'en': 'Highest rated',
      'es': 'El mejor valorado',
      'gl': 'Mellor valorado',
    },
    'naapnve3': {
      'en': 'Price range',
      'es': 'Rango de precios',
      'gl': 'Franxa de prezo',
    },
    'farypsls': {
      'en': 'Max. Delivery Fee',
      'es': 'Máx. Gastos de envío',
      'gl': 'Máx. Taxa de entrega',
    },
    'q6427jjl': {
      'en': 'Dietary',
      'es': 'Dietético',
      'gl': 'Dietética',
    },
    'hb0febdc': {
      'en': 'Vegetarian',
      'es': 'Vegetariano',
      'gl': 'Vexetariano',
    },
    'tnwns6cf': {
      'en': 'Vegan',
      'es': 'Vegano',
      'gl': 'Vegan',
    },
    '6baecb53': {
      'en': 'Glueten-free',
      'es': 'Sin pegamento',
      'gl': 'Sen glute',
    },
    'su9edelw': {
      'en': 'Halal',
      'es': 'halal',
      'gl': 'Halal',
    },
    'q776oe71': {
      'en': 'Allergy friendly',
      'es': 'Apto para alérgicos',
      'gl': 'Apto para alerxias',
    },
    'zrdqq1jy': {
      'en': 'Apply',
      'es': 'Aplicar',
      'gl': 'Solicitar',
    },
    'l32p9vv5': {
      'en': 'Home',
      'es': 'Hogar',
      'gl': 'Casa',
    },
  },
  // Search1
  {
    'la6bi6xf': {
      'en': 'Food, groceries, drinks, etc.',
      'es': 'Alimentos, abarrotes, bebidas, etc.',
      'gl': 'Comida, comestibles, bebidas, etc.',
    },
    'omc5x842': {
      'en': 'All',
      'es': 'Todo',
      'gl': 'Todos',
    },
    'gwcg854j': {
      'en': 'FastFood',
      'es': 'Comida rápida',
      'gl': 'Comida rápida',
    },
    'g27op3qf': {
      'en': 'Burger',
      'es': 'Hamburguesa',
      'gl': 'Hamburguesa',
    },
    '7464mvry': {
      'en': 'ALL',
      'es': 'TODO',
      'gl': 'TODOS',
    },
    '4pas44fv': {
      'en': 'FastFood',
      'es': 'Comida rápida',
      'gl': 'Comida rápida',
    },
    '18bu2rtw': {
      'en': 'Burger',
      'es': 'Hamburguesa',
      'gl': 'Hamburguesa',
    },
    'revpn9t1': {
      'en': 'Home',
      'es': 'Hogar',
      'gl': 'Casa',
    },
  },
  // Search
  {
    'co3qpr6l': {
      'en': 'Food, groceries, drinks, etc.',
      'es': 'Alimentos, abarrotes, bebidas, etc.',
      'gl': 'Comida, comestibles, bebidas, etc.',
    },
    'p7j5cwzi': {
      'en': 'All',
      'es': 'Todo',
      'gl': 'Todos',
    },
    'vwtnc5q0': {
      'en': 'FastFood',
      'es': 'Comida rápida',
      'gl': 'Comida rápida',
    },
    'jvs81g6h': {
      'en': 'Burger',
      'es': 'Hamburguesa',
      'gl': 'Hamburguesa',
    },
    'h3q79wye': {
      'en': 'Grocery',
      'es': 'Tienda de comestibles',
      'gl': 'Supermercado',
    },
    'gn50z8rb': {
      'en': 'All',
      'es': 'Todo',
      'gl': 'Todos',
    },
    'yosd5vl9': {
      'en': 'Top categories',
      'es': 'Categorías principales',
      'gl': 'Categorías principais',
    },
    'zy53dm9b': {
      'en': 'Fast food',
      'es': 'Comida rápida',
      'gl': 'Comida rápida',
    },
    'yrs5wvx1': {
      'en': 'Pizza',
      'es': 'Pizza',
      'gl': 'Pizza',
    },
    '18zagmjh': {
      'en': 'Chinese',
      'es': 'Chino',
      'gl': 'chinés',
    },
    'sjuxszso': {
      'en': 'Burgers',
      'es': 'hamburguesas',
      'gl': 'Hamburguesas',
    },
    'c77r85ek': {
      'en': 'Burgers',
      'es': 'hamburguesas',
      'gl': 'Hamburguesas',
    },
    '8kz8k0i5': {
      'en': 'Burgers',
      'es': 'hamburguesas',
      'gl': 'Hamburguesas',
    },
    'u8llz8pj': {
      'en': 'Burgers',
      'es': 'hamburguesas',
      'gl': 'Hamburguesas',
    },
    '4zwxz2bl': {
      'en': 'Burgers',
      'es': 'hamburguesas',
      'gl': 'Hamburguesas',
    },
    'g6u99970': {
      'en': 'Burgers',
      'es': 'hamburguesas',
      'gl': 'Hamburguesas',
    },
    '6rnu9uof': {
      'en': '80 results for “fast food”',
      'es': '80 resultados para “comida rápida”',
      'gl': '80 resultados para “comida rápida”',
    },
    'b2fr3ege': {
      'en': 'Peri Peri Near Me, Brixton',
      'es': 'Peri Peri cerca de mí, Brixton',
      'gl': 'Peri Peri Near Me, Brixton',
    },
    '1a6kjkmv': {
      'en': 'Sponsored',
      'es': 'Patrocinado',
      'gl': 'Patrocinado',
    },
    '3u15mc45': {
      'en': '£2.49 Delivery Fee',
      'es': '£ 2,49 Tarifa de envío',
      'gl': 'Gastos de envío 2,49 €',
    },
    '48zwl8so': {
      'en': '25-45 min',
      'es': '25-45 minutos',
      'gl': '25-45 min',
    },
    'fgmxey4x': {
      'en': '4.3',
      'es': '4.3',
      'gl': '4.3',
    },
    'lcncrs85': {
      'en': 'Peri Peri Near Me, Brixton',
      'es': 'Peri Peri cerca de mí, Brixton',
      'gl': 'Peri Peri Near Me, Brixton',
    },
    'aiuk51nz': {
      'en': 'Sponsored',
      'es': 'Patrocinado',
      'gl': 'Patrocinado',
    },
    'ypgolkin': {
      'en': '£2.49 Delivery Fee',
      'es': '£ 2,49 Tarifa de envío',
      'gl': 'Gastos de envío 2,49 €',
    },
    'ontvb0ax': {
      'en': '25-45 min',
      'es': '25-45 minutos',
      'gl': '25-45 min',
    },
    's9llwpig': {
      'en': '4.3',
      'es': '4.3',
      'gl': '4.3',
    },
    'tg8zewl9': {
      'en': 'Peri Peri Near Me, Brixton',
      'es': 'Peri Peri cerca de mí, Brixton',
      'gl': 'Peri Peri Near Me, Brixton',
    },
    'yxs80d0n': {
      'en': 'Sponsored',
      'es': 'Patrocinado',
      'gl': 'Patrocinado',
    },
    'f3ij9vn1': {
      'en': '£2.49 Delivery Fee',
      'es': '£ 2,49 Tarifa de envío',
      'gl': 'Gastos de envío 2,49 €',
    },
    'i6eo9lha': {
      'en': '25-45 min',
      'es': '25-45 minutos',
      'gl': '25-45 min',
    },
    'woadp6xh': {
      'en': '4.3',
      'es': '4.3',
      'gl': '4.3',
    },
    'd4tg32uw': {
      'en': 'Peri Peri Near Me, Brixton',
      'es': 'Peri Peri cerca de mí, Brixton',
      'gl': 'Peri Peri Near Me, Brixton',
    },
    '35wa7m1d': {
      'en': 'Sponsored',
      'es': 'Patrocinado',
      'gl': 'Patrocinado',
    },
    '414fkwtk': {
      'en': '£2.49 Delivery Fee',
      'es': '£ 2,49 Tarifa de envío',
      'gl': 'Gastos de envío 2,49 €',
    },
    '055ufrvm': {
      'en': '25-45 min',
      'es': '25-45 minutos',
      'gl': '25-45 min',
    },
    'hti6usam': {
      'en': '4.3',
      'es': '4.3',
      'gl': '4.3',
    },
    '6qbsb5k8': {
      'en': '80 results for “Burger”',
      'es': '80 resultados para “Hamburguesa”',
      'gl': '80 resultados para “Hamburguesa”',
    },
    'vys876nv': {
      'en': 'Burger Mee',
      'es': 'Hamburguesa',
      'gl': 'Burger Mee',
    },
    'ow2356v9': {
      'en': 'Burgers',
      'es': 'hamburguesas',
      'gl': 'Hamburguesas',
    },
    '4vglb2e4': {
      'en': 'American',
      'es': 'Americano',
      'gl': 'americano',
    },
    'vojjc3d2': {
      'en': '£',
      'es': '£',
      'gl': '£',
    },
    'jg4amtdn': {
      'en': 'Burger Mee',
      'es': 'Hamburguesa',
      'gl': 'Burger Mee',
    },
    '1ryi6r9w': {
      'en': 'Burgers',
      'es': 'hamburguesas',
      'gl': 'Hamburguesas',
    },
    'r592n361': {
      'en': 'American',
      'es': 'Americano',
      'gl': 'americano',
    },
    'dpayodx0': {
      'en': '£',
      'es': '£',
      'gl': '£',
    },
    'v3dededz': {
      'en': 'Burger Mee',
      'es': 'Hamburguesa',
      'gl': 'Burger Mee',
    },
    '9hbvykxt': {
      'en': 'Burgers',
      'es': 'hamburguesas',
      'gl': 'Hamburguesas',
    },
    't0k291u3': {
      'en': 'American',
      'es': 'Americano',
      'gl': 'americano',
    },
    '25sicanu': {
      'en': '£',
      'es': '£',
      'gl': '£',
    },
    '9vi1urau': {
      'en': 'Burger Mee',
      'es': 'Hamburguesa',
      'gl': 'Burger Mee',
    },
    '8nxjtj4t': {
      'en': 'Burgers',
      'es': 'hamburguesas',
      'gl': 'Hamburguesas',
    },
    'b4t67aju': {
      'en': 'American',
      'es': 'Americano',
      'gl': 'americano',
    },
    '0i97xckw': {
      'en': '£',
      'es': '£',
      'gl': '£',
    },
    'iojexame': {
      'en': 'Burger Mee',
      'es': 'Hamburguesa',
      'gl': 'Burger Mee',
    },
    'z96u0pzs': {
      'en': 'Burgers',
      'es': 'hamburguesas',
      'gl': 'Hamburguesas',
    },
    'oonwxn7f': {
      'en': 'American',
      'es': 'Americano',
      'gl': 'americano',
    },
    '0zh85iz8': {
      'en': '£',
      'es': '£',
      'gl': '£',
    },
    'jl6onvva': {
      'en': 'Burger Mee',
      'es': 'Hamburguesa',
      'gl': 'Burger Mee',
    },
    's4yx7peu': {
      'en': 'Burgers',
      'es': 'hamburguesas',
      'gl': 'Hamburguesas',
    },
    'gvwveeca': {
      'en': 'American',
      'es': 'Americano',
      'gl': 'americano',
    },
    'iz24wmoo': {
      'en': '£',
      'es': '£',
      'gl': '£',
    },
    'h5r8n38v': {
      'en': 'Burger Mee',
      'es': 'Hamburguesa',
      'gl': 'Burger Mee',
    },
    '6e4w6059': {
      'en': 'Burgers',
      'es': 'hamburguesas',
      'gl': 'Hamburguesas',
    },
    'x7qkmdqy': {
      'en': 'American',
      'es': 'Americano',
      'gl': 'americano',
    },
    'hbx0sr4a': {
      'en': '£',
      'es': '£',
      'gl': '£',
    },
    'bztpnchb': {
      'en': 'Birds Eye Chicken Burgers',
      'es': 'Hamburguesas De Pollo Ojo De Pájaro',
      'gl': 'Hamburguesas de polo Birds Eye',
    },
    'nzmg931w': {
      'en': 'Rustlers Cheese Burger',
      'es': 'Hamburguesa con queso los ladrones',
      'gl': 'Rustlers Cheese Burger',
    },
    'mez7b52k': {
      'en': 'Burger',
      'es': 'Hamburguesa',
      'gl': 'Hamburguesa',
    },
    'k1mmjbqk': {
      'en': 'Search for ‘Burg’',
      'es': 'Busque \"Burgo\"',
      'gl': 'Busca \"Burg\"',
    },
    'uuf4ks4n': {
      'en': '80 results for “Burger”',
      'es': '80 resultados para “Hamburguesa”',
      'gl': '80 resultados para “Hamburguesa”',
    },
    '3qx41dwh': {
      'en': 'Joyson News',
      'es': 'Noticias Joyson',
      'gl': 'Joyson News',
    },
    'yo5xdf79': {
      'en': '£5.49 Delivery Fee',
      'es': '£ 5,49 Tarifa de envío',
      'gl': 'Gastos de envío 5,49 €',
    },
    'mfbi5vfg': {
      'en': '15-35 min',
      'es': '15-35 minutos',
      'gl': '15-35 min',
    },
    '3i7t5u2m': {
      'en': '4.9',
      'es': '4.9',
      'gl': '4.9',
    },
    '967ltabn': {
      'en': 'Joyson News',
      'es': 'Noticias Joyson',
      'gl': 'Joyson News',
    },
    'xiv15sd1': {
      'en': '£5.49 Delivery Fee',
      'es': '£ 5,49 Tarifa de envío',
      'gl': 'Gastos de envío 5,49 €',
    },
    't2r3u6xh': {
      'en': '15-35 min',
      'es': '15-35 minutos',
      'gl': '15-35 min',
    },
    '0iilpp13': {
      'en': '4.9',
      'es': '4.9',
      'gl': '4.9',
    },
    'kgzfim5j': {
      'en': 'Joyson News',
      'es': 'Noticias Joyson',
      'gl': 'Joyson News',
    },
    'zlgd1wye': {
      'en': '£5.49 Delivery Fee',
      'es': '£ 5,49 Tarifa de envío',
      'gl': 'Gastos de envío 5,49 €',
    },
    'l13w2rsi': {
      'en': '15-35 min',
      'es': '15-35 minutos',
      'gl': '15-35 min',
    },
    'k65op99i': {
      'en': '4.9',
      'es': '4.9',
      'gl': '4.9',
    },
    'iw1lp9c4': {
      'en': 'Joyson News',
      'es': 'Noticias Joyson',
      'gl': 'Joyson News',
    },
    '4utr1nwd': {
      'en': '£5.49 Delivery Fee',
      'es': '£ 5,49 Tarifa de envío',
      'gl': 'Gastos de envío 5,49 €',
    },
    '4u6ob2q1': {
      'en': '15-35 min',
      'es': '15-35 minutos',
      'gl': '15-35 min',
    },
    '368wgph4': {
      'en': '4.9',
      'es': '4.9',
      'gl': '4.9',
    },
    'p0mmmyc5': {
      'en': 'Joyson News',
      'es': 'Noticias Joyson',
      'gl': 'Joyson News',
    },
    'uvnleqse': {
      'en': '£5.49 Delivery Fee',
      'es': '£ 5,49 Tarifa de envío',
      'gl': 'Gastos de envío 5,49 €',
    },
    'arp17lrz': {
      'en': '15-35 min',
      'es': '15-35 minutos',
      'gl': '15-35 min',
    },
    'c16eshuz': {
      'en': '4.9',
      'es': '4.9',
      'gl': '4.9',
    },
    'byk1vywz': {
      'en': 'Birds Eye Chicken Burgers',
      'es': 'Hamburguesas De Pollo Ojo De Pájaro',
      'gl': 'Hamburguesas de polo Birds Eye',
    },
    'dw62jqjy': {
      'en': 'Rustlers Cheese Burger',
      'es': 'Hamburguesa con queso los ladrones',
      'gl': 'Rustlers Cheese Burger',
    },
    'xqqdr5g8': {
      'en': 'Burger',
      'es': 'Hamburguesa',
      'gl': 'Hamburguesa',
    },
    'o3rfv32x': {
      'en': 'Search for ‘Burg’',
      'es': 'Busque \"Burgo\"',
      'gl': 'Busca \"Burg\"',
    },
    '7njpdatk': {
      'en': 'Home',
      'es': 'Hogar',
      'gl': 'Casa',
    },
  },
  // Grocery
  {
    '1v6gu0oo': {
      'en': 'Grocery',
      'es': 'Tienda de comestibles',
      'gl': 'Supermercado',
    },
    '3w02yey5': {
      'en': 'Search grocery',
      'es': 'buscar comestibles',
      'gl': 'Busca supermercado',
    },
    'w0qp4dnk': {
      'en': 'Stores',
      'es': 'Historias',
      'gl': 'Tendas',
    },
    '0i67ibtp': {
      'en': 'Prepared\nFoods',
      'es': 'Preparado\nAlimentos',
      'gl': 'Preparado\nAlimentos',
    },
    'ulu7uk6m': {
      'en': 'Beverages',
      'es': 'Bebidas',
      'gl': 'Bebidas',
    },
    '52apzkip': {
      'en': 'Snacks &\nSweets',
      'es': 'Aperitivos &\ndulces',
      'gl': 'Snacks e\nDoces',
    },
    '2c82c5t2': {
      'en': 'Meast &\nSea',
      'es': 'Masa y\nMar',
      'gl': 'Carne e\nMar',
    },
    'gt7207ap': {
      'en': 'Stores',
      'es': 'Historias',
      'gl': 'Tendas',
    },
    'r99cm1xi': {
      'en': 'Stores',
      'es': 'Historias',
      'gl': 'Tendas',
    },
    'pz3z3ygt': {
      'en': 'Featured stores',
      'es': 'Tiendas destacadas',
      'gl': 'Tendas destacadas',
    },
    'fc9k8xd0': {
      'en': 'CO-OP',
      'es': 'COOPERATIVA',
      'gl': 'COOP',
    },
    'zifewceu': {
      'en': 'No couriers nearby',
      'es': 'No hay mensajeros cerca',
      'gl': 'Non hai mensaxeiros preto',
    },
    'yo29cv15': {
      'en': 'Iceland',
      'es': 'Islandia',
      'gl': 'Islandia',
    },
    'wg1hhwbt': {
      'en': 'No couriers nearby',
      'es': 'No hay mensajeros cerca',
      'gl': 'Non hai mensaxeiros preto',
    },
    'ec8i620q': {
      'en': 'CO-OP',
      'es': 'COOPERATIVA',
      'gl': 'COOP',
    },
    'yyazjf8k': {
      'en': 'No couriers nearby',
      'es': 'No hay mensajeros cerca',
      'gl': 'Non hai mensaxeiros preto',
    },
    'lk61t3y7': {
      'en': '80 results for “Burger”',
      'es': '80 resultados para “Hamburguesa”',
      'gl': '80 resultados para “Hamburguesa”',
    },
    '69125vw1': {
      'en': 'Joyson News',
      'es': 'Noticias Joyson',
      'gl': 'Joyson News',
    },
    '02goaqzh': {
      'en': '15-35 min',
      'es': '15-35 minutos',
      'gl': '15-35 min',
    },
    '0omu18d2': {
      'en': 'Southlands Post Office & Store',
      'es': 'Oficina de correos y tienda de Southlands',
      'gl': 'Oficina de correos e tenda de Southlands',
    },
    '47oafrnp': {
      'en': '15-35 min',
      'es': '15-35 minutos',
      'gl': '15-35 min',
    },
    'w96frhf6': {
      'en': 'Joyson News',
      'es': 'Noticias Joyson',
      'gl': 'Joyson News',
    },
    'rqxsbp6n': {
      'en': '15-35 min',
      'es': '15-35 minutos',
      'gl': '15-35 min',
    },
    'wwx2km2q': {
      'en': 'Joyson News',
      'es': 'Noticias Joyson',
      'gl': 'Joyson News',
    },
    'cn8qerzn': {
      'en': '15-35 min',
      'es': '15-35 minutos',
      'gl': '15-35 min',
    },
    'i6afiiym': {
      'en': 'Joyson News',
      'es': 'Noticias Joyson',
      'gl': 'Joyson News',
    },
    '3f4r950d': {
      'en': '£5.49 Delivery Fee',
      'es': '£ 5,49 Tarifa de envío',
      'gl': 'Gastos de envío 5,49 €',
    },
    'i166lz5v': {
      'en': '4.9',
      'es': '4.9',
      'gl': '4.9',
    },
    'es651gzx': {
      'en': 'Joyson News',
      'es': 'Noticias Joyson',
      'gl': 'Joyson News',
    },
    'z9fbrucm': {
      'en': '£5.49 Delivery Fee',
      'es': '£ 5,49 Tarifa de envío',
      'gl': 'Gastos de envío 5,49 €',
    },
    'bk3izxz3': {
      'en': '4.9',
      'es': '4.9',
      'gl': '4.9',
    },
    '7rscwiho': {
      'en': 'Joyson News',
      'es': 'Noticias Joyson',
      'gl': 'Joyson News',
    },
    '444dlz04': {
      'en': '£5.49 Delivery Fee',
      'es': '£ 5,49 Tarifa de envío',
      'gl': 'Gastos de envío 5,49 €',
    },
    'iy5pezem': {
      'en': '15-35 min',
      'es': '15-35 minutos',
      'gl': '15-35 min',
    },
    'xm2ll7u6': {
      'en': '4.9',
      'es': '4.9',
      'gl': '4.9',
    },
    'afddsxkd': {
      'en': 'Joyson News',
      'es': 'Noticias Joyson',
      'gl': 'Joyson News',
    },
    '7ajwimns': {
      'en': '£5.49 Delivery Fee',
      'es': '£ 5,49 Tarifa de envío',
      'gl': 'Gastos de envío 5,49 €',
    },
    'vlyo2va0': {
      'en': '15-35 min',
      'es': '15-35 minutos',
      'gl': '15-35 min',
    },
    '48lgjn7a': {
      'en': '4.9',
      'es': '4.9',
      'gl': '4.9',
    },
    '506zhj5z': {
      'en': 'Joyson News',
      'es': 'Noticias Joyson',
      'gl': 'Joyson News',
    },
    'jmc9tskr': {
      'en': '£5.49 Delivery Fee',
      'es': '£ 5,49 Tarifa de envío',
      'gl': 'Gastos de envío 5,49 €',
    },
    'bks7v2zn': {
      'en': '15-35 min',
      'es': '15-35 minutos',
      'gl': '15-35 min',
    },
    'tpp05trl': {
      'en': '4.9',
      'es': '4.9',
      'gl': '4.9',
    },
    'ratwv4ml': {
      'en': 'Home',
      'es': 'Hogar',
      'gl': 'Casa',
    },
  },
  // Restaurants
  {
    'vgyw2ish': {
      'en': 'Restaurants',
      'es': 'Restaurantes',
      'gl': 'Restaurantes',
    },
    'd6phx8jy': {
      'en': 'Fast Food',
      'es': 'Comida rápida',
      'gl': 'Comida rápida',
    },
    't8k3xxk3': {
      'en': 'Burgers',
      'es': 'hamburguesas',
      'gl': 'Hamburguesas',
    },
    'kveh7opi': {
      'en': 'Pizza',
      'es': 'Pizza',
      'gl': 'Pizza',
    },
    'nr9dbd4c': {
      'en': 'Deals',
      'es': 'Ofertas',
      'gl': 'Ofertas',
    },
    '6ha2n3b9': {
      'en': 'Meast &\nSea',
      'es': 'Masa y\nMar',
      'gl': 'Carne e\nMar',
    },
    'k756bozo': {
      'en': 'Stores',
      'es': 'Historias',
      'gl': 'Tendas',
    },
    't8l568oh': {
      'en': 'Stores',
      'es': 'Historias',
      'gl': 'Tendas',
    },
    '7bxgeyrc': {
      'en': 'Popular near you',
      'es': 'Popular cerca de ti',
      'gl': 'Popular preto de ti',
    },
    '4z2t0d9l': {
      'en': 'See all',
      'es': 'Ver todo',
      'gl': 'Ver todo',
    },
    'ztrrut97': {
      'en': 'Peri Peri Near Me, Brixton',
      'es': 'Peri Peri cerca de mí, Brixton',
      'gl': 'Peri Peri Near Me, Brixton',
    },
    'jk9tr7tf': {
      'en': '£2.49 Delivery Fee',
      'es': '£ 2,49 Tarifa de envío',
      'gl': 'Gastos de envío 2,49 €',
    },
    'nd3k7qhy': {
      'en': '25-45 min',
      'es': '25-45 minutos',
      'gl': '25-45 min',
    },
    '69no6oc0': {
      'en': '4.3',
      'es': '4.3',
      'gl': '4.3',
    },
    'iwm0nmcd': {
      'en': 'Peri Peri Near Me, Brixton',
      'es': 'Peri Peri cerca de mí, Brixton',
      'gl': 'Peri Peri Near Me, Brixton',
    },
    '6ofhlol8': {
      'en': '£2.49 Delivery Fee',
      'es': '£ 2,49 Tarifa de envío',
      'gl': 'Gastos de envío 2,49 €',
    },
    '2160n5hc': {
      'en': '25-45 min',
      'es': '25-45 minutos',
      'gl': '25-45 min',
    },
    'jzba8a21': {
      'en': '4.3',
      'es': '4.3',
      'gl': '4.3',
    },
    'kq5ei4xv': {
      'en': 'Peri Peri Near Me, Brixton',
      'es': 'Peri Peri cerca de mí, Brixton',
      'gl': 'Peri Peri Near Me, Brixton',
    },
    'pmhxi0kf': {
      'en': '£2.49 Delivery Fee',
      'es': '£ 2,49 Tarifa de envío',
      'gl': 'Gastos de envío 2,49 €',
    },
    '6wuoto89': {
      'en': '25-45 min',
      'es': '25-45 minutos',
      'gl': '25-45 min',
    },
    '9zkyqr89': {
      'en': '4.3',
      'es': '4.3',
      'gl': '4.3',
    },
    'wwdwqk1s': {
      'en': 'Home',
      'es': 'Hogar',
      'gl': 'Casa',
    },
  },
  // SpecialityFoods
  {
    '74sgu313': {
      'en': 'Speciality foods',
      'es': 'Alimentos especiales',
      'gl': 'Alimentos especiais',
    },
    'rafhj551': {
      'en': ' ',
      'es': '',
      'gl': '',
    },
    'hfsndjzr': {
      'en': 'Pick-up',
      'es': 'Levantar',
      'gl': 'Recoller',
    },
    'vqacsauk': {
      'en': 'Dine-in',
      'es': 'Cenar en',
      'gl': 'Cear dentro',
    },
    '04cr1po1': {
      'en': 'Sort',
      'es': 'Clasificar',
      'gl': 'Ordenar',
    },
    'ab5fier4': {
      'en': ' ',
      'es': '',
      'gl': '',
    },
    'wiiev7ci': {
      'en': '29 Results',
      'es': '29 resultados',
      'gl': '29 Resultados',
    },
    'j8b6d58t': {
      'en': 'Linden Tree Flowers',
      'es': 'Flores de tilo',
      'gl': 'Flores de tilo',
    },
    'vqcoas0g': {
      'en': '7.6 mi',
      'es': '7,6 millas',
      'gl': '7,6 mi',
    },
    'extjbomd': {
      'en': 'Spend £20, save £5',
      'es': 'Gasta £20 y ahorra £5',
      'gl': 'Gasta 20 €, aforra 5 €',
    },
    'hjvsxwtm': {
      'en': '4.9',
      'es': '4.9',
      'gl': '4.9',
    },
    'ikihfaxc': {
      'en': 'Linden Tree Flowers',
      'es': 'Flores de tilo',
      'gl': 'Flores de tilo',
    },
    'l4m1a0wd': {
      'en': '7.6 mi',
      'es': '7,6 millas',
      'gl': '7,6 mi',
    },
    'ifau0ipy': {
      'en': 'Spend £20, save £5',
      'es': 'Gasta £20 y ahorra £5',
      'gl': 'Gasta 20 €, aforra 5 €',
    },
    'utegiz7n': {
      'en': '4.9',
      'es': '4.9',
      'gl': '4.9',
    },
    '433i42mn': {
      'en': 'Linden Tree Flowers',
      'es': 'Flores de tilo',
      'gl': 'Flores de tilo',
    },
    'uqwrzhkq': {
      'en': '7.6 mi',
      'es': '7,6 millas',
      'gl': '7,6 mi',
    },
    'gij25h6h': {
      'en': 'Spend £20, save £5',
      'es': 'Gasta £20 y ahorra £5',
      'gl': 'Gasta 20 €, aforra 5 €',
    },
    'nzgv2h88': {
      'en': '4.9',
      'es': '4.9',
      'gl': '4.9',
    },
    '2i8x5lag': {
      'en': 'Linden Tree Flowers',
      'es': 'Flores de tilo',
      'gl': 'Flores de tilo',
    },
    'ez1me216': {
      'en': '7.6 mi',
      'es': '7,6 millas',
      'gl': '7,6 mi',
    },
    'rqkvv3tw': {
      'en': 'Spend £20, save £5',
      'es': 'Gasta £20 y ahorra £5',
      'gl': 'Gasta 20 €, aforra 5 €',
    },
    'm6qfvje6': {
      'en': '4.9',
      'es': '4.9',
      'gl': '4.9',
    },
    'n4zp6x98': {
      'en': 'Linden Tree Flowers',
      'es': 'Flores de tilo',
      'gl': 'Flores de tilo',
    },
    'goq5bqr5': {
      'en': '7.6 mi',
      'es': '7,6 millas',
      'gl': '7,6 mi',
    },
    'pvzfou99': {
      'en': 'Spend £20, save £5',
      'es': 'Gasta £20 y ahorra £5',
      'gl': 'Gasta 20 €, aforra 5 €',
    },
    'xihok319': {
      'en': '4.9',
      'es': '4.9',
      'gl': '4.9',
    },
    '8j8zvhxv': {
      'en': 'Linden Tree Flowers',
      'es': 'Flores de tilo',
      'gl': 'Flores de tilo',
    },
    'xs2chpu2': {
      'en': '7.6 mi',
      'es': '7,6 millas',
      'gl': '7,6 mi',
    },
    'yhoz9eif': {
      'en': 'Spend £20, save £5',
      'es': 'Gasta £20 y ahorra £5',
      'gl': 'Gasta 20 €, aforra 5 €',
    },
    'n3ugkzrn': {
      'en': '4.9',
      'es': '4.9',
      'gl': '4.9',
    },
    '9fmfyrx2': {
      'en': 'Linden Tree Flowers',
      'es': 'Flores de tilo',
      'gl': 'Flores de tilo',
    },
    'excaq4o0': {
      'en': '7.6 mi',
      'es': '7,6 millas',
      'gl': '7,6 mi',
    },
    '0ufhaepa': {
      'en': 'Spend £20, save £5',
      'es': 'Gasta £20 y ahorra £5',
      'gl': 'Gasta 20 €, aforra 5 €',
    },
    'zcu0pok1': {
      'en': '4.9',
      'es': '4.9',
      'gl': '4.9',
    },
    'n3h1v6bj': {
      'en': 'Home',
      'es': 'Hogar',
      'gl': 'Casa',
    },
  },
  // StoreInfo
  {
    'd8fmcxyc': {
      'en': 'Peri Peri Near Me, Brixton',
      'es': 'Peri Peri cerca de mí, Brixton',
      'gl': 'Peri Peri Near Me, Brixton',
    },
    'tgqxqnkq': {
      'en': 'Burgers',
      'es': 'hamburguesas',
      'gl': 'Hamburguesas',
    },
    'nc5z29ec': {
      'en': '£',
      'es': '£',
      'gl': '£',
    },
    '1yk1c4fs': {
      'en': 'Open until 11:00 PM',
      'es': 'Abierto hasta las 23:00',
      'gl': 'Aberto ata as 23:00 h',
    },
    'ih6nrgwy': {
      'en': 'Tap for hours, info and more',
      'es': 'Toca para ver horas, información y más',
      'gl': 'Toca para ver horas, información e moito máis',
    },
    '4i0pn080': {
      'en': 'Group order',
      'es': 'Orden de grupo',
      'gl': 'Orde de grupo',
    },
    '1uo9bb45': {
      'en': 'Delivery for you',
      'es': 'Entrega para ti',
      'gl': 'Entrega para ti',
    },
    'gi0uognq': {
      'en': 'Chicken Fillet Burger Meal',
      'es': 'Harina De Hamburguesa De Filete De Pollo',
      'gl': 'Comida de hamburguesa de filete de polo',
    },
    '0uvitupx': {
      'en': '£6.99',
      'es': '6,99€',
      'gl': '£ 6,99',
    },
    'btbat5kw': {
      'en': 'Served with chips and drink.',
      'es': 'Servido con patatas fritas y bebida.',
      'gl': 'Servido con patacas fritas e bebida.',
    },
    'qprnffvg': {
      'en': 'Half Pounder Cheese Burger Meal',
      'es': 'Hamburguesa De Media Libra Con Queso',
      'gl': 'Comida de hamburguesa de queixo de media libra',
    },
    'gdl1w9j9': {
      'en': '£6.99',
      'es': '6,99€',
      'gl': '£ 6,99',
    },
    '5ry42dkl': {
      'en': 'Served with chips and drink.',
      'es': 'Servido con patatas fritas y bebida.',
      'gl': 'Servido con patacas fritas e bebida.',
    },
    'ciokijze': {
      'en': 'Peri Peri Chicken Breast Wrap Meal',
      'es': 'Envoltura de pechuga de pollo Peri Peri',
      'gl': 'Comida de envoltura de pechuga de polo Peri Peri',
    },
    '8iqsnfew': {
      'en': '£6.99',
      'es': '6,99€',
      'gl': '£ 6,99',
    },
    'xjgr1bhw': {
      'en': 'Served with chips and drink.',
      'es': 'Servido con patatas fritas y bebida.',
      'gl': 'Servido con patacas fritas e bebida.',
    },
    '3rqkv6lk': {
      'en': 'Chicken Fillet Burger Meal',
      'es': 'Harina De Hamburguesa De Filete De Pollo',
      'gl': 'Comida de hamburguesa de filete de polo',
    },
    'g9au1ygz': {
      'en': '£6.99',
      'es': '6,99€',
      'gl': '£ 6,99',
    },
    'w66lzk7o': {
      'en': 'Served with chips and drink.',
      'es': 'Servido con patatas fritas y bebida.',
      'gl': 'Servido con patacas fritas e bebida.',
    },
    '9l11dq8i': {
      'en': 'Group order',
      'es': 'Orden de grupo',
      'gl': 'Orde de grupo',
    },
    'iw3lfe6w': {
      'en': 'Picked for you',
      'es': 'elegido para ti',
      'gl': 'Escollido para ti',
    },
    'spew1xk3': {
      'en': 'Chicken Fillet Burger Meal',
      'es': 'Harina De Hamburguesa De Filete De Pollo',
      'gl': 'Comida de hamburguesa de filete de polo',
    },
    'attckwoz': {
      'en': '£6.99',
      'es': '6,99€',
      'gl': '£ 6,99',
    },
    'u9ntrblv': {
      'en': 'Served with chips and drink.',
      'es': 'Servido con patatas fritas y bebida.',
      'gl': 'Servido con patacas fritas e bebida.',
    },
    'nl0sb8ll': {
      'en': 'Chicken Fillet Burger Meal',
      'es': 'Harina De Hamburguesa De Filete De Pollo',
      'gl': 'Comida de hamburguesa de filete de polo',
    },
    'mmi2w7ko': {
      'en': '£6.99',
      'es': '6,99€',
      'gl': '£ 6,99',
    },
    'cbqwpnpf': {
      'en': 'Served with chips and drink.',
      'es': 'Servido con patatas fritas y bebida.',
      'gl': 'Servido con patacas fritas e bebida.',
    },
    '7n6il4hs': {
      'en': 'Chicken Fillet Burger Meal',
      'es': 'Harina De Hamburguesa De Filete De Pollo',
      'gl': 'Comida de hamburguesa de filete de polo',
    },
    'cuqudkcq': {
      'en': '£6.99',
      'es': '6,99€',
      'gl': '£ 6,99',
    },
    '88511a56': {
      'en': 'Served with chips and drink.',
      'es': 'Servido con patatas fritas y bebida.',
      'gl': 'Servido con patacas fritas e bebida.',
    },
    've84zd51': {
      'en': 'Chicken Fillet Burger Meal',
      'es': 'Harina De Hamburguesa De Filete De Pollo',
      'gl': 'Comida de hamburguesa de filete de polo',
    },
    '3eyjv4tk': {
      'en': '£6.99',
      'es': '6,99€',
      'gl': '£ 6,99',
    },
    'u4ogd681': {
      'en': 'Served with chips and drink.',
      'es': 'Servido con patatas fritas y bebida.',
      'gl': 'Servido con patacas fritas e bebida.',
    },
    'y1342k1f': {
      'en': 'Home',
      'es': 'Hogar',
      'gl': 'Casa',
    },
  },
  // Store
  {
    'xwdmk7dt': {
      'en': 'Peri Peri Near Me, Brixton',
      'es': 'Peri Peri cerca de mí, Brixton',
      'gl': 'Peri Peri Near Me, Brixton',
    },
    'ulgmazow': {
      'en': 'Burgers',
      'es': 'hamburguesas',
      'gl': 'Hamburguesas',
    },
    's03sff7m': {
      'en': 'Chicken',
      'es': 'Pollo',
      'gl': 'Polo',
    },
    '2dbejbe8': {
      'en': 'American',
      'es': 'Americano',
      'gl': 'americano',
    },
    'h6pmvqv7': {
      'en': '107 Broadwater Street East Worthing, EMEA BN14 9AW',
      'es': '107 Broadwater Street East Worthing, EMEA BN14 9AW',
      'gl': '107 Broadwater Street East Worthing, EMEA BN14 9AW',
    },
    'zxwwkf7c': {
      'en': 'Open until 11:00 PM',
      'es': 'Abierto hasta las 23:00',
      'gl': 'Aberto ata as 23:00 h',
    },
    '1f201ktm': {
      'en': 'Limited delivery tracking',
      'es': 'Seguimiento de entrega limitado',
      'gl': 'Seguimento de entrega limitado',
    },
    'y04xf4cp': {
      'en': 'Get a €0 Delivery Fee + 5% off',
      'es': 'Consigue 0€ de gastos de envío + 5% de descuento',
      'gl': 'Obtén 0€ de gastos de envío + 5 % de desconto',
    },
    'r8pjk8g1': {
      'en': 'Try Huber One to save on eligible orders',
      'es': 'Pruebe Huber One para ahorrar en pedidos elegibles',
      'gl': 'Proba Huber One para aforrar nos pedidos aptos',
    },
    'ecnv9oh2': {
      'en': 'Home',
      'es': 'Hogar',
      'gl': 'Casa',
    },
  },
  // GroupOrder
  {
    '33zg5syk': {
      'en': 'Dolly’s group \norder',
      'es': 'El grupo de Dolly. \norden',
      'gl': 'O grupo de Dolly \norde',
    },
    'fqjglxfk': {
      'en': 'From ',
      'es': 'De',
      'gl': 'Desde',
    },
    'v9mp540p': {
      'en': 'Peri Peri Near Me, Brixton',
      'es': 'Peri Peri cerca de mí, Brixton',
      'gl': 'Peri Peri Near Me, Brixton',
    },
    'hedppj58': {
      'en':
          'Invite guests to add items with a shareable\nlink. Pay for everybody or have guests pay for\ntheir share once they’re done',
      'es':
          'Invita a invitados a agregar elementos que se puedan compartir\nenlace. Pague por todos o haga que los invitados paguen por\nsu parte una vez que hayan terminado',
      'gl':
          'Invita convidados a engadir elementos cun elemento compartible\nligazón. Paga por todos ou fai que paguen os convidados\na súa parte unha vez que rematen',
    },
    'yopke2a7': {
      'en': 'Set a deadline so your guests know when to add items',
      'es':
          'Establece una fecha límite para que tus invitados sepan cuándo agregar artículos',
      'gl':
          'Establece unha data límite para que os teus convidados saiban cando engadir elementos',
    },
    'xpri8vbh': {
      'en': 'Try it',
      'es': 'Intentalo',
      'gl': 'Próbao',
    },
    'wd58n8kn': {
      'en': 'Deliver to Chuch Street  ',
      'es': 'Entrega en la calle Chuch',
      'gl': 'Entrega na rúa Chuch',
    },
    'blow5jh8': {
      'en': 'No deadline',
      'es': 'Sin fecha límite',
      'gl': 'Sen prazo',
    },
    'h0nustti': {
      'en': 'Guests can order at any time',
      'es': 'Los huéspedes pueden realizar pedidos en cualquier momento.',
      'gl': 'Os hóspedes poden pedir en calquera momento',
    },
    'b9337ivh': {
      'en': 'Pay for everyone',
      'es': 'Paga por todos',
      'gl': 'Pague por todos',
    },
    '19gaj0cc': {
      'en': 'No spending limit',
      'es': 'Sin límite de gasto',
      'gl': 'Sen límite de gasto',
    },
    'o03vve9s': {
      'en': 'Pay for everyone',
      'es': 'Paga por todos',
      'gl': 'Pague por todos',
    },
    'hn270jyw': {
      'en': 'No spending limit',
      'es': 'Sin límite de gasto',
      'gl': 'Sen límite de gasto',
    },
    'le2hl3zb': {
      'en': 'Pay for everyone',
      'es': 'Paga por todos',
      'gl': 'Pague por todos',
    },
    '0ff8pofj': {
      'en': 'No spending limit',
      'es': 'Sin límite de gasto',
      'gl': 'Sen límite de gasto',
    },
    'mtumppxf': {
      'en': 'Invite guests',
      'es': 'Invitar a los huéspedes',
      'gl': 'Invitar convidados',
    },
    '9bx46mlo': {
      'en': 'Home',
      'es': 'Hogar',
      'gl': 'Casa',
    },
  },
  // OrderName
  {
    'tufwxarg': {
      'en': 'Your order name',
      'es': 'Nombre de tu pedido',
      'gl': 'Nome do teu pedido',
    },
    'y9mtzlq5': {
      'en': 'Your Order Name',
      'es': 'Nombre de tu pedido',
      'gl': 'Nome do teu pedido',
    },
    'iaag637w': {
      'en': 'Save',
      'es': 'Ahorrar',
      'gl': 'Gardar',
    },
    '1fwhbpie': {
      'en': 'Home',
      'es': 'Hogar',
      'gl': 'Casa',
    },
  },
  // OrderNameDetails
  {
    '5r1n2lcz': {
      'en': 'Your order name',
      'es': 'Nombre de tu pedido',
      'gl': 'Nome do teu pedido',
    },
    'r36pjq8n': {
      'en': 'What time should your guests order by?',
      'es': '¿A qué hora deben realizar sus pedidos sus invitados?',
      'gl': 'A que hora deben pedir os teus convidados?',
    },
    'rdrmpase': {
      'en': 'No deadline',
      'es': 'Sin fecha límite',
      'gl': 'Sen prazo',
    },
    'qbu8vetp': {
      'en': 'Save',
      'es': 'Ahorrar',
      'gl': 'Gardar',
    },
    '6r7fjm1d': {
      'en': 'Home',
      'es': 'Hogar',
      'gl': 'Casa',
    },
  },
  // CoverOrder
  {
    '58mcrk64': {
      'en': 'Pick how to pay',
      'es': 'Elige cómo pagar',
      'gl': 'Escolle como pagar',
    },
    'kk0w0y9g': {
      'en':
          'You can cover the order, or let guests pay for the items they pick.',
      'es':
          'Puedes cubrir el pedido o dejar que los invitados paguen por los artículos que elijan.',
      'gl':
          'Podes cubrir o pedido ou deixar que os hóspedes paguen polos artigos que elixen.',
    },
    'nxoebbur': {
      'en': '€',
      'es': '€',
      'gl': '€',
    },
    '88q9r4bs': {
      'en': 'Enter amount',
      'es': 'Ingrese la cantidad',
      'gl': 'Introduza cantidade',
    },
    'cl1glf3o': {
      'en': 'per guest',
      'es': 'por huésped',
      'gl': 'por invitado',
    },
    '031a893o': {
      'en': 'Save',
      'es': 'Ahorrar',
      'gl': 'Gardar',
    },
    'wblv0xef': {
      'en': 'Home',
      'es': 'Hogar',
      'gl': 'Casa',
    },
  },
  // OrderOptions
  {
    'vvuei14s': {
      'en': 'Chicken Fillet Burger Meal',
      'es': 'Harina De Hamburguesa De Filete De Pollo',
      'gl': 'Comida de hamburguesa de filete de polo',
    },
    'svuf1q00': {
      'en': '£6.99',
      'es': '6,99€',
      'gl': '£ 6,99',
    },
    'titp9c2f': {
      'en': 'Served with chips and drink.',
      'es': 'Servido con patatas fritas y bebida.',
      'gl': 'Servido con patacas fritas e bebida.',
    },
    '20scdyvp': {
      'en': 'Choose your drink',
      'es': 'Elige tu bebida',
      'gl': 'Elixe a túa bebida',
    },
    's8yvv2h2': {
      'en': 'Required',
      'es': 'Requerido',
      'gl': 'Obrigatorio',
    },
    'h79xq7b7': {
      'en': 'Diet Coca Cola',
      'es': 'Coca-Cola dietética',
      'gl': 'Diet Coca Cola',
    },
    'pz59274b': {
      'en': 'Coca Cola',
      'es': 'Coca Cola',
      'gl': 'Coca Cola',
    },
    'il8e7rx7': {
      'en': 'Coca Cola',
      'es': 'Coca Cola',
      'gl': 'Coca Cola',
    },
    'vnq6w510': {
      'en': 'Options:',
      'es': 'Opciones:',
      'gl': 'Opcións:',
    },
    'qh23x135': {
      'en': 'Choose up to 6',
      'es': 'Elige hasta 6',
      'gl': 'Escolle ata 6',
    },
    'g5yqznjn': {
      'en': 'Lettuce',
      'es': 'Lechuga',
      'gl': 'Leituga',
    },
    'x39gqk2z': {
      'en': '£0.70',
      'es': '0,70€',
      'gl': '£ 0,70',
    },
    'l3uumdbi': {
      'en': 'Mayonaise',
      'es': 'mayonesa',
      'gl': 'Maionesa',
    },
    'kerzl2fi': {
      'en': 'Ketchup',
      'es': 'Salsa de tomate',
      'gl': 'Ketchup',
    },
    'rp7rop6b': {
      'en': 'Burger Sauce',
      'es': 'Salsa De Hamburguesa',
      'gl': 'Salsa de hamburguesas',
    },
    '8aedweh4': {
      'en': 'Burger Sauce',
      'es': 'Salsa De Hamburguesa',
      'gl': 'Salsa de hamburguesas',
    },
    'a0khxvcq': {
      'en': 'Burger Sauce',
      'es': 'Salsa De Hamburguesa',
      'gl': 'Salsa de hamburguesas',
    },
    'z64q6prq': {
      'en': 'Special instructions',
      'es': 'Instrucciones especiales',
      'gl': 'Instrucións especiais',
    },
    'qkuyj45e': {
      'en': 'Add a note',
      'es': 'Agrega una nota',
      'gl': 'Engade unha nota',
    },
    'oqcuogps': {
      'en': 'You may be charged for extras.',
      'es': 'Es posible que se le cobren extras.',
      'gl': 'É posible que se lle cobren extras.',
    },
    'tupfioft': {
      'en': 'Frequently bought together',
      'es': 'Frecuentemente compramos juntos',
      'gl': 'A miúdo comprados xuntos',
    },
    'jcq8kqlg': {
      'en': 'Mac and Cheese',
      'es': 'Macarrones con queso',
      'gl': 'Mac e queixo',
    },
    'ujj3cc0o': {
      'en': '£4.99',
      'es': '4,99€',
      'gl': '£ 4,99',
    },
    'u18ps2b6': {
      'en': 'Spicy Wings (4 pieces)',
      'es': 'Alitas Picantes (4 piezas)',
      'gl': 'Spicy Wings (4 pezas)',
    },
    'xupc2flv': {
      'en': '£3.99',
      'es': '3,99€',
      'gl': '£ 3,99',
    },
    'w7y9y2s7': {
      'en':
          'Peri Peri Near Me, Worthing has a FHRS rating of 5. This information was updated on 04/11/2022. The current rating is on their page on the ',
      'es':
          'Peri Peri Near Me, Worthing tiene una calificación FHRS de 5. Esta información se actualizó el 11/04/2022. La calificación actual está en su página en el',
      'gl':
          'Peri Peri Near Me, Worthing ten unha clasificación FHRS de 5. Esta información foi actualizada o 04/11/2022. A clasificación actual está na súa páxina do',
    },
    'iplap7rp': {
      'en': 'FSA Website. ',
      'es': 'Sitio web de la FSA.',
      'gl': 'Páxina web da FSA.',
    },
    '0h7am2gf': {
      'en':
          'Allergies, intolerances and dietary requirements: Before ordering, please contact the restaurant directly and ask to speak to a member of staff who can assist if you require information about ingredients and help cater for your needs. Adults need around 2000 kcal a day.',
      'es':
          'Alergias, intolerancias y requisitos dietéticos: antes de realizar el pedido, comuníquese directamente con el restaurante y solicite hablar con un miembro del personal que pueda ayudarlo si necesita información sobre los ingredientes y ayudar a satisfacer sus necesidades. Los adultos necesitan alrededor de 2000 kcal al día.',
      'gl':
          'Alerxias, intolerancias e requisitos dietéticos: antes de realizar o pedido, póñase en contacto directamente co restaurante e solicite falar cun membro do persoal que poida axudar se precisa información sobre os ingredientes e axude a satisfacer as súas necesidades. Os adultos necesitan unhas 2000 kcal ao día.',
    },
    'kt5ll0d2': {
      'en': 'Add 1 to basket  .  £6.99',
      'es': 'Añade 1 a la cesta.  6,99€',
      'gl': 'Engade 1 á cesta.  £ 6,99',
    },
    'ebljzy75': {
      'en': 'Home',
      'es': 'Hogar',
      'gl': 'Casa',
    },
  },
  // OrderOptionDetails
  {
    'b5c4lth8': {
      'en': 'Picked for you',
      'es': 'elegido para ti',
      'gl': 'Escollido para ti',
    },
    'cl2pcym3': {
      'en': 'Half Pounder Cheese Burger Meal',
      'es': 'Hamburguesa De Media Libra Con Queso',
      'gl': 'Comida de hamburguesa de queixo de media libra',
    },
    's700yc9v': {
      'en': '£6.99',
      'es': '6,99€',
      'gl': '£ 6,99',
    },
    'wir9ejx1': {
      'en': 'Served with chips and drink.',
      'es': 'Servido con patatas fritas y bebida.',
      'gl': 'Servido con patacas fritas e bebida.',
    },
    'xhr2jfs2': {
      'en': 'Fried Chicken Combo',
      'es': 'Combinación de pollo frito',
      'gl': 'Combo de polo frito',
    },
    'lsefc6nw': {
      'en': 'Mega Combo',
      'es': 'Megacombo',
      'gl': 'Mega Combo',
    },
    'cbd0tziu': {
      'en': '£15.99',
      'es': '15,99€',
      'gl': '£ 15,99',
    },
    '6kjnn3v7': {
      'en':
          '5 pieces of chicken, 6 spicy wings, 4 strips, 2 fries or wedges and 1.5ltr drink or water.',
      'es':
          '5 piezas de pollo, 6 alitas picantes, 4 tiras, 2 patatas fritas o gajos y 1,5ltr de bebida o agua.',
      'gl':
          '5 pezas de polo, 6 ás picantes, 4 tiras, 2 patacas fritas ou anacos e 1,5 litros de bebida ou auga.',
    },
    'k0bnmvi7': {
      'en': 'Popular',
      'es': 'Popular',
      'gl': 'Popular',
    },
    '5c7j53wv': {
      'en': 'Mixed Combo',
      'es': 'Combinación Mixta',
      'gl': 'Combo Mixto',
    },
    '8spc2d3n': {
      'en': '£15.99',
      'es': '15,99€',
      'gl': '£ 15,99',
    },
    'bydh9m3g': {
      'en':
          '2 pieces of chicken, 3 spicy wings, 2 strips, 2 fries or wedges and 2 cans of drink.',
      'es':
          '2 piezas de pollo, 3 alitas picantes, 2 tiras, 2 papas fritas o gajos y 2 latas de bebida.',
      'gl':
          '2 anacos de polo, 3 ás picantes, 2 tiras, 2 patacas fritas ou cuñas e 2 latas de bebida.',
    },
    'dk7eqkve': {
      'en': 'Spicy',
      'es': 'Picante',
      'gl': 'Picante',
    },
    '04wrkdb0': {
      'en': 'Family Combo',
      'es': 'Combinación familiar',
      'gl': 'Combo familiar',
    },
    'b51s4xkm': {
      'en': '£15.99',
      'es': '15,99€',
      'gl': '£ 15,99',
    },
    'j6dculvx': {
      'en':
          '10 pieces of chicken, 10 spicy wings, 6 strips, 2 fries or wedges and 1.5ltr drink or water.',
      'es':
          '10 piezas de pollo, 10 alitas picantes, 6 tiras, 2 patatas fritas o gajos y 1,5ltr de bebida o agua.',
      'gl':
          '10 pezas de polo, 10 ás picantes, 6 tiras, 2 patacas fritas ou anacos e 1,5 litros de bebida ou auga.',
    },
    'c2ee86oi': {
      'en': 'Spicy',
      'es': 'Picante',
      'gl': 'Picante',
    },
    'symy1j0h': {
      'en': 'Options:',
      'es': 'Opciones:',
      'gl': 'Opcións:',
    },
    'bcruftyj': {
      'en': 'Required',
      'es': 'Requerido',
      'gl': 'Obrigatorio',
    },
    'qmmmomxk': {
      'en': 'Choose up to 6',
      'es': 'Elige hasta 6',
      'gl': 'Escolle ata 6',
    },
    'kzlwsga1': {
      'en': 'Lettuce',
      'es': 'Lechuga',
      'gl': 'Leituga',
    },
    'ft7iivdn': {
      'en': '£0.70',
      'es': '0,70€',
      'gl': '£ 0,70',
    },
    'wyivoe17': {
      'en': 'Mayonaise',
      'es': 'mayonesa',
      'gl': 'Maionesa',
    },
    'c05ts4nq': {
      'en': 'Ketchup',
      'es': 'Salsa de tomate',
      'gl': 'Ketchup',
    },
    '73ud3k9p': {
      'en': 'Burger Sauce',
      'es': 'Salsa De Hamburguesa',
      'gl': 'Salsa de hamburguesas',
    },
    'fowf0usp': {
      'en': 'Burger Sauce',
      'es': 'Salsa De Hamburguesa',
      'gl': 'Salsa de hamburguesas',
    },
    'dww7f6m3': {
      'en': 'Burger Sauce',
      'es': 'Salsa De Hamburguesa',
      'gl': 'Salsa de hamburguesas',
    },
    '29og0uyv': {
      'en': 'Special instructions',
      'es': 'Instrucciones especiales',
      'gl': 'Instrucións especiais',
    },
    'vvs3pneg': {
      'en': 'Add a note',
      'es': 'Agrega una nota',
      'gl': 'Engade unha nota',
    },
    'blcjj8qd': {
      'en': 'You may be charged for extras.',
      'es': 'Es posible que se le cobren extras.',
      'gl': 'É posible que se lle cobren extras.',
    },
    'zvnodhs5': {
      'en': 'Frequently bought together',
      'es': 'Frecuentemente compramos juntos',
      'gl': 'A miúdo comprados xuntos',
    },
    'r6r3xx8e': {
      'en': 'Mac and Cheese',
      'es': 'Macarrones con queso',
      'gl': 'Mac e queixo',
    },
    'fhssl8z3': {
      'en': '£4.99',
      'es': '4,99€',
      'gl': '£ 4,99',
    },
    'dqgb7ke6': {
      'en': 'Spicy Wings (4 pieces)',
      'es': 'Alitas Picantes (4 piezas)',
      'gl': 'Spicy Wings (4 pezas)',
    },
    'kxfkm1g6': {
      'en': '£3.99',
      'es': '3,99€',
      'gl': '£ 3,99',
    },
    'mg7vlx1d': {
      'en':
          'Peri Peri Near Me, Worthing has a FHRS rating of 5. This information was updated on 04/11/2022. The current rating is on their page on the ',
      'es':
          'Peri Peri Near Me, Worthing tiene una calificación FHRS de 5. Esta información se actualizó el 11/04/2022. La calificación actual está en su página en el',
      'gl':
          'Peri Peri Near Me, Worthing ten unha clasificación FHRS de 5. Esta información foi actualizada o 04/11/2022. A clasificación actual está na súa páxina do',
    },
    '52ar7t0c': {
      'en': 'FSA Website. ',
      'es': 'Sitio web de la FSA.',
      'gl': 'Páxina web da FSA.',
    },
    'zzeobn08': {
      'en':
          'Allergies, intolerances and dietary requirements: Before ordering, please contact the restaurant directly and ask to speak to a member of staff who can assist if you require information about ingredients and help cater for your needs. Adults need around 2000 kcal a day.',
      'es':
          'Alergias, intolerancias y requisitos dietéticos: antes de realizar el pedido, comuníquese directamente con el restaurante y solicite hablar con un miembro del personal que pueda ayudarlo si necesita información sobre los ingredientes y ayudar a satisfacer sus necesidades. Los adultos necesitan alrededor de 2000 kcal al día.',
      'gl':
          'Alerxias, intolerancias e requisitos dietéticos: antes de realizar o pedido, póñase en contacto directamente co restaurante e solicite falar cun membro do persoal que poida axudar se precisa información sobre os ingredientes e axude a satisfacer as súas necesidades. Os adultos necesitan unhas 2000 kcal ao día.',
    },
    '0i58k5tl': {
      'en': 'Label',
      'es': 'Etiqueta',
      'gl': 'Etiqueta',
    },
    'lcpsyv6g': {
      'en': 'Chicken Fillet Burger Meal',
      'es': 'Harina De Hamburguesa De Filete De Pollo',
      'gl': 'Comida de hamburguesa de filete de polo',
    },
    'po5udzy1': {
      'en': '£6.99',
      'es': '6,99€',
      'gl': '£ 6,99',
    },
    'dw8gcq04': {
      'en': 'Served with chips and drink.',
      'es': 'Servido con patatas fritas y bebida.',
      'gl': 'Servido con patacas fritas e bebida.',
    },
    'jnytvf2n': {
      'en': 'Choose your drink',
      'es': 'Elige tu bebida',
      'gl': 'Elixe a túa bebida',
    },
    'tyhwt4xq': {
      'en': 'Required',
      'es': 'Requerido',
      'gl': 'Obrigatorio',
    },
    '5jyikvw1': {
      'en': 'Diet Coca Cola',
      'es': 'Coca-Cola dietética',
      'gl': 'Diet Coca Cola',
    },
    'rzoc14c8': {
      'en': 'Coca Cola',
      'es': 'Coca Cola',
      'gl': 'Coca Cola',
    },
    '1bmytw5g': {
      'en': 'Coca Cola',
      'es': 'Coca Cola',
      'gl': 'Coca Cola',
    },
    'gv494b43': {
      'en': 'Options:',
      'es': 'Opciones:',
      'gl': 'Opcións:',
    },
    '1w21ienb': {
      'en': 'Choose up to 6',
      'es': 'Elige hasta 6',
      'gl': 'Escolle ata 6',
    },
    '4xmy0mb2': {
      'en': 'Lettuce',
      'es': 'Lechuga',
      'gl': 'Leituga',
    },
    'wp798bfz': {
      'en': '£0.70',
      'es': '0,70€',
      'gl': '£ 0,70',
    },
    'rb6e0lcc': {
      'en': 'Mayonaise',
      'es': 'mayonesa',
      'gl': 'Maionesa',
    },
    '80xxivpq': {
      'en': 'Ketchup',
      'es': 'Salsa de tomate',
      'gl': 'Ketchup',
    },
    'xnsg6pts': {
      'en': 'Burger Sauce',
      'es': 'Salsa De Hamburguesa',
      'gl': 'Salsa de hamburguesas',
    },
    '4gkhwg4l': {
      'en': 'Burger Sauce',
      'es': 'Salsa De Hamburguesa',
      'gl': 'Salsa de hamburguesas',
    },
    'qvd0wequ': {
      'en': 'Burger Sauce',
      'es': 'Salsa De Hamburguesa',
      'gl': 'Salsa de hamburguesas',
    },
    'qmu7lr34': {
      'en': 'Special instructions',
      'es': 'Instrucciones especiales',
      'gl': 'Instrucións especiais',
    },
    'fhk61dsa': {
      'en': 'Add a note',
      'es': 'Agrega una nota',
      'gl': 'Engade unha nota',
    },
    '6zunbtav': {
      'en': 'You may be charged for extras.',
      'es': 'Es posible que se le cobren extras.',
      'gl': 'É posible que se lle cobren extras.',
    },
    'lhmgr7vm': {
      'en': 'Frequently bought together',
      'es': 'Frecuentemente compramos juntos',
      'gl': 'A miúdo comprados xuntos',
    },
    'dw42m8xx': {
      'en': 'Mac and Cheese',
      'es': 'Macarrones con queso',
      'gl': 'Mac e queixo',
    },
    'edijohbh': {
      'en': '£4.99',
      'es': '4,99€',
      'gl': '£ 4,99',
    },
    'sdbv656p': {
      'en': 'Spicy Wings (4 pieces)',
      'es': 'Alitas Picantes (4 piezas)',
      'gl': 'Spicy Wings (4 pezas)',
    },
    'k5ai7bvj': {
      'en': '£3.99',
      'es': '3,99€',
      'gl': '£ 3,99',
    },
    'r2sheujs': {
      'en':
          'Peri Peri Near Me, Worthing has a FHRS rating of 5. This information was updated on 04/11/2022. The current rating is on their page on the ',
      'es':
          'Peri Peri Near Me, Worthing tiene una calificación FHRS de 5. Esta información se actualizó el 11/04/2022. La calificación actual está en su página en el',
      'gl':
          'Peri Peri Near Me, Worthing ten unha clasificación FHRS de 5. Esta información foi actualizada o 04/11/2022. A clasificación actual está na súa páxina do',
    },
    '7rndsdxe': {
      'en': 'FSA Website. ',
      'es': 'Sitio web de la FSA.',
      'gl': 'Páxina web da FSA.',
    },
    '6avpv96u': {
      'en':
          'Allergies, intolerances and dietary requirements: Before ordering, please contact the restaurant directly and ask to speak to a member of staff who can assist if you require information about ingredients and help cater for your needs. Adults need around 2000 kcal a day.',
      'es':
          'Alergias, intolerancias y requisitos dietéticos: antes de realizar el pedido, comuníquese directamente con el restaurante y solicite hablar con un miembro del personal que pueda ayudarlo si necesita información sobre los ingredientes y ayudar a satisfacer sus necesidades. Los adultos necesitan alrededor de 2000 kcal al día.',
      'gl':
          'Alerxias, intolerancias e requisitos dietéticos: antes de realizar o pedido, póñase en contacto directamente co restaurante e solicite falar cun membro do persoal que poida axudar se precisa información sobre os ingredientes e axude a satisfacer as súas necesidades. Os adultos necesitan unhas 2000 kcal ao día.',
    },
    '6iqgr9p9': {
      'en': 'Label',
      'es': 'Etiqueta',
      'gl': 'Etiqueta',
    },
    '945e7lwk': {
      'en': 'Options:',
      'es': 'Opciones:',
      'gl': 'Opcións:',
    },
    '8prmws4e': {
      'en': 'Choose up to 6',
      'es': 'Elige hasta 6',
      'gl': 'Escolle ata 6',
    },
    '42qvbnpm': {
      'en': 'Lettuce',
      'es': 'Lechuga',
      'gl': 'Leituga',
    },
    'lk5grwsj': {
      'en': '£0.70',
      'es': '0,70€',
      'gl': '£ 0,70',
    },
    'mkz56r8e': {
      'en': 'Mayonaise',
      'es': 'mayonesa',
      'gl': 'Maionesa',
    },
    '6tj05y3p': {
      'en': 'Ketchup',
      'es': 'Salsa de tomate',
      'gl': 'Ketchup',
    },
    'dw7f2xrf': {
      'en': 'Burger Sauce',
      'es': 'Salsa De Hamburguesa',
      'gl': 'Salsa de hamburguesas',
    },
    'qkbieynj': {
      'en': 'Burger Sauce',
      'es': 'Salsa De Hamburguesa',
      'gl': 'Salsa de hamburguesas',
    },
    'awlslijr': {
      'en': 'Burger Sauce',
      'es': 'Salsa De Hamburguesa',
      'gl': 'Salsa de hamburguesas',
    },
    'bqiei1x2': {
      'en': 'Special instructions',
      'es': 'Instrucciones especiales',
      'gl': 'Instrucións especiais',
    },
    'i8bt0dkm': {
      'en': 'Add a note',
      'es': 'Agrega una nota',
      'gl': 'Engade unha nota',
    },
    'hhp640ll': {
      'en': 'You may be charged for extras.',
      'es': 'Es posible que se le cobren extras.',
      'gl': 'É posible que se lle cobren extras.',
    },
    'x82jahy3': {
      'en': 'Frequently bought together',
      'es': 'Frecuentemente compramos juntos',
      'gl': 'A miúdo comprados xuntos',
    },
    'xok2990g': {
      'en': 'Mac and Cheese',
      'es': 'Macarrones con queso',
      'gl': 'Mac e queixo',
    },
    'xubcm9bs': {
      'en': '£4.99',
      'es': '4,99€',
      'gl': '£ 4,99',
    },
    'i5gnsfhp': {
      'en': 'Spicy Wings (4 pieces)',
      'es': 'Alitas Picantes (4 piezas)',
      'gl': 'Spicy Wings (4 pezas)',
    },
    'ruaqpt8m': {
      'en': '£3.99',
      'es': '3,99€',
      'gl': '£ 3,99',
    },
    'ua5b9zbm': {
      'en':
          'Peri Peri Near Me, Worthing has a FHRS rating of 5. This information was updated on 04/11/2022. The current rating is on their page on the ',
      'es':
          'Peri Peri Near Me, Worthing tiene una calificación FHRS de 5. Esta información se actualizó el 11/04/2022. La calificación actual está en su página en el',
      'gl':
          'Peri Peri Near Me, Worthing ten unha clasificación FHRS de 5. Esta información foi actualizada o 04/11/2022. A clasificación actual está na súa páxina do',
    },
    'm2k89xrv': {
      'en': 'FSA Website. ',
      'es': 'Sitio web de la FSA.',
      'gl': 'Páxina web da FSA.',
    },
    'f03jyzjn': {
      'en':
          'Allergies, intolerances and dietary requirements: Before ordering, please contact the restaurant directly and ask to speak to a member of staff who can assist if you require information about ingredients and help cater for your needs. Adults need around 2000 kcal a day.',
      'es':
          'Alergias, intolerancias y requisitos dietéticos: antes de realizar el pedido, comuníquese directamente con el restaurante y solicite hablar con un miembro del personal que pueda ayudarlo si necesita información sobre los ingredientes y ayudar a satisfacer sus necesidades. Los adultos necesitan alrededor de 2000 kcal al día.',
      'gl':
          'Alerxias, intolerancias e requisitos dietéticos: antes de realizar o pedido, póñase en contacto directamente co restaurante e solicite falar cun membro do persoal que poida axudar se precisa información sobre os ingredientes e axude a satisfacer as súas necesidades. Os adultos necesitan unhas 2000 kcal ao día.',
    },
    'dagkjv2e': {
      'en': 'Home',
      'es': 'Hogar',
      'gl': 'Casa',
    },
  },
  // Draft
  {
    '25o4943w': {
      'en': 'Peri Peri Near Me, Brixton',
      'es': 'Peri Peri cerca de mí, Brixton',
      'gl': 'Peri Peri Near Me, Brixton',
    },
    'zgx2h0go': {
      'en': 'Sponsored',
      'es': 'Patrocinado',
      'gl': 'Patrocinado',
    },
    'in5swaxl': {
      'en': '£2.49 Delivery Fee',
      'es': '£ 2,49 Tarifa de envío',
      'gl': 'Gastos de envío 2,49 €',
    },
    '5eojhtra': {
      'en': '25-45 min',
      'es': '25-45 minutos',
      'gl': '25-45 min',
    },
    '8akem8jq': {
      'en': '4.3',
      'es': '4.3',
      'gl': '4.3',
    },
    '32nhypby': {
      'en': '1',
      'es': '1',
      'gl': '1',
    },
    'qaai39e3': {
      'en': 'Latte',
      'es': 'Latté',
      'gl': 'Latte',
    },
    'c3dma984': {
      'en': 'Choice of Size',
      'es': 'Elección de tamaño',
      'gl': 'Elección do tamaño',
    },
    'i0s458mu': {
      'en': 'Large (£0.30)',
      'es': 'Grande (0,30 £)',
      'gl': 'Grande (0,30 €)',
    },
    'u31lp9at': {
      'en': 'Choice of Milk',
      'es': 'Elección de leche',
      'gl': 'Selección de leite',
    },
    'h0ordgf6': {
      'en': 'Whole',
      'es': 'Entero',
      'gl': 'Enteiro',
    },
    'fmgpuw1a': {
      'en': 'Decaf/Caffeinated/Character Roast',
      'es': 'Descafeinado/con cafeína/tostado con carácter',
      'gl': 'Descafeinado/cafeinado/asado de carácter',
    },
    'stvvpa1e': {
      'en': 'Caffeinated',
      'es': 'con cafeína',
      'gl': 'Con cafeína',
    },
    'r6pywdzq': {
      'en': 'Sugar',
      'es': 'Azúcar',
      'gl': 'Azucre',
    },
    'r0gggt5f': {
      'en': '2 White Sugar',
      'es': '2 azúcar blanca',
      'gl': '2 Azucre branco',
    },
    '5emuwoa3': {
      'en': 'Home',
      'es': 'Hogar',
      'gl': 'Casa',
    },
  },
  // PopularRestaurants
  {
    'l3qfkx1c': {
      'en': 'Popular near you',
      'es': 'Popular cerca de ti',
      'gl': 'Popular preto de ti',
    },
    'wzo8azim': {
      'en': 'Popular near you',
      'es': 'Popular cerca de ti',
      'gl': 'Popular preto de ti',
    },
    '6v1x2pta': {
      'en': 'See all',
      'es': 'Ver todo',
      'gl': 'Ver todo',
    },
    'b0bychvc': {
      'en': 'Peri Peri Near Me, Brixton',
      'es': 'Peri Peri cerca de mí, Brixton',
      'gl': 'Peri Peri Near Me, Brixton',
    },
    '9talcnl2': {
      'en': '£2.49 Delivery Fee',
      'es': '£ 2,49 Tarifa de envío',
      'gl': 'Gastos de envío 2,49 €',
    },
    'sntz87i7': {
      'en': '25-45 min',
      'es': '25-45 minutos',
      'gl': '25-45 min',
    },
    '90ademn1': {
      'en': '4.3',
      'es': '4.3',
      'gl': '4.3',
    },
    'dlod4o3r': {
      'en': 'Peri Peri Near Me, Brixton',
      'es': 'Peri Peri cerca de mí, Brixton',
      'gl': 'Peri Peri Near Me, Brixton',
    },
    'yr93rcr5': {
      'en': '£2.49 Delivery Fee',
      'es': '£ 2,49 Tarifa de envío',
      'gl': 'Gastos de envío 2,49 €',
    },
    'w1fjf1dm': {
      'en': '25-45 min',
      'es': '25-45 minutos',
      'gl': '25-45 min',
    },
    '9lqnquqr': {
      'en': '4.3',
      'es': '4.3',
      'gl': '4.3',
    },
    'y20lg96l': {
      'en': 'Peri Peri Near Me, Brixton',
      'es': 'Peri Peri cerca de mí, Brixton',
      'gl': 'Peri Peri Near Me, Brixton',
    },
    'p3arfisa': {
      'en': '£2.49 Delivery Fee',
      'es': '£ 2,49 Tarifa de envío',
      'gl': 'Gastos de envío 2,49 €',
    },
    'rmnc8osq': {
      'en': '25-45 min',
      'es': '25-45 minutos',
      'gl': '25-45 min',
    },
    '2mdudfor': {
      'en': '4.3',
      'es': '4.3',
      'gl': '4.3',
    },
    'q5voeakk': {
      'en': 'Home',
      'es': 'Hogar',
      'gl': 'Casa',
    },
  },
  // Browse
  {
    '9rla4nzc': {
      'en': 'Food, groceries, drinks, etc.',
      'es': 'Alimentos, abarrotes, bebidas, etc.',
      'gl': 'Comida, comestibles, bebidas, etc.',
    },
    'reyrwdui': {
      'en': 'Top Categories',
      'es': 'Categorías principales',
      'gl': 'Categorías principais',
    },
    'h1xwzfju': {
      'en': 'Fast food',
      'es': 'Comida rápida',
      'gl': 'Comida rápida',
    },
    'mg5sw6n9': {
      'en': 'Pizza',
      'es': 'Pizza',
      'gl': 'Pizza',
    },
    'mnkljkm1': {
      'en': 'Fast food',
      'es': 'Comida rápida',
      'gl': 'Comida rápida',
    },
    '1w3668nj': {
      'en': 'Fast food',
      'es': 'Comida rápida',
      'gl': 'Comida rápida',
    },
    '7u5iyv1w': {
      'en': 'Fast food',
      'es': 'Comida rápida',
      'gl': 'Comida rápida',
    },
    'x35vk0q3': {
      'en': 'Fast food',
      'es': 'Comida rápida',
      'gl': 'Comida rápida',
    },
    '3vhdkyui': {
      'en': 'Fast food',
      'es': 'Comida rápida',
      'gl': 'Comida rápida',
    },
    'i3dp3giu': {
      'en': 'Fast food',
      'es': 'Comida rápida',
      'gl': 'Comida rápida',
    },
    'jqfrufxz': {
      'en': 'Home',
      'es': 'Hogar',
      'gl': 'Casa',
    },
  },
  // Baskets
  {
    'vcqodxe3': {
      'en': 'Orders',
      'es': 'Pedidos',
      'gl': 'Ordes',
    },
    'emz8mvl7': {
      'en': 'Baskets',
      'es': 'Cestas',
      'gl': 'Cestas',
    },
    't31cvykp': {
      'en': 'Home',
      'es': 'Hogar',
      'gl': 'Casa',
    },
  },
  // BasketYourOrders
  {
    'bt62ikb1': {
      'en': 'Home',
      'es': 'Hogar',
      'gl': 'Casa',
    },
  },
  // Account
  {
    '638umune': {
      'en': 'Builder King',
      'es': 'Rey constructor',
      'gl': 'Rei constructor',
    },
    '6r5mfurw': {
      'en': 'support@builderking.io',
      'es': 'soporte@builderking.io',
      'gl': 'support@builderking.io',
    },
    'ecavlcda': {
      'en': 'Favourites',
      'es': 'Favoritos',
      'gl': 'Favoritos',
    },
    '45ab5e12': {
      'en': 'Wallet',
      'es': 'Billetera',
      'gl': 'Carteira',
    },
    'd1jllii8': {
      'en': 'Orders',
      'es': 'Pedidos',
      'gl': 'Ordes',
    },
    'gmpx25qy': {
      'en': 'GalGo One',
      'es': 'Huber uno',
      'gl': 'Huber Un',
    },
    'ouzdafxe': {
      'en': 'Try free for 1 month',
      'es': 'Pruébalo gratis durante 1 mes',
      'gl': 'Proba gratis durante 1 mes',
    },
    '19pzho3z': {
      'en': 'Promotions',
      'es': 'Promociones',
      'gl': 'Promocións',
    },
    'isuqnu1f': {
      'en': 'Help',
      'es': 'Ayuda',
      'gl': 'Axuda',
    },
    '48fldx1x': {
      'en': 'Restaurant Rewards',
      'es': 'Recompensas de restaurante',
      'gl': 'Recompensas de restaurante',
    },
    'u97j1m4u': {
      'en': 'Business Preferences',
      'es': 'Preferencias comerciales',
      'gl': 'Preferencias comerciais',
    },
    '1i5encl5': {
      'en': 'Make work meals quicker and easier',
      'es': 'Haga que las comidas de trabajo sean más rápidas y fáciles',
      'gl': 'Fai as comidas de traballo máis rápidas e sinxelas',
    },
    'rg5i0ye0': {
      'en': 'Invite friends',
      'es': 'Invitar a amigos',
      'gl': 'Invitar amigos',
    },
    '2wa59mq4': {
      'en': 'Get £3 off your order',
      'es': 'Consigue 3€ de descuento en tu pedido',
      'gl': 'Obtén 3 £ de desconto no teu pedido',
    },
    '684pd1h5': {
      'en': 'Privacy',
      'es': 'Privacidad',
      'gl': 'Privacidade',
    },
    'z2h8ewfq': {
      'en': 'COVID-19 Safety Centre',
      'es': 'Centro de seguridad COVID-19',
      'gl': 'Centro de Seguridade COVID-19',
    },
    'dbpimgc3': {
      'en': 'Earn by driving or delivering',
      'es': 'Gana conduciendo o entregando',
      'gl': 'Gaña conducindo ou entregando',
    },
    '47f7bmjp': {
      'en': 'About',
      'es': 'Acerca de',
      'gl': 'Sobre',
    },
    '9ltxe9yd': {
      'en': 'v6.136.10000',
      'es': 'v6.136.10000',
      'gl': 'versión 6.136.10000',
    },
    '6vpifhnl': {
      'en': 'Home',
      'es': 'Hogar',
      'gl': 'Casa',
    },
  },
  // AccountDetails
  {
    'qb4t2ua5': {
      'en': 'Dolly Sheep',
      'es': 'ovejas',
      'gl': 'Ovella Dolly',
    },
    '18zlgwbw': {
      'en': 'Edit account',
      'es': 'Editar cuenta',
      'gl': 'Editar conta',
    },
    '98ik0ifk': {
      'en': 'SAVED PLACES',
      'es': 'LUGARES GUARDADOS',
      'gl': 'LUGARES GARDADOS',
    },
    'nkdnql5y': {
      'en': 'Home',
      'es': 'Hogar',
      'gl': 'Casa',
    },
    'um9q4o4k': {
      'en': '123 Church Street, Brixton, London',
      'es': '123 Church Street, Brixton, Londres',
      'gl': '123 Church Street, Brixton, Londres',
    },
    'r4qfyxz4': {
      'en': 'Work',
      'es': 'Trabajar',
      'gl': 'Traballo',
    },
    'izrb6aap': {
      'en': 'Add work',
      'es': 'Agregar trabajo',
      'gl': 'Engadir traballo',
    },
    'beashx5r': {
      'en': 'Sign out',
      'es': 'desconectar',
      'gl': 'Pechar sesión',
    },
    'qvlwnath': {
      'en': 'Home',
      'es': 'Hogar',
      'gl': 'Casa',
    },
  },
  // AccountEdit
  {
    'kkeq1m22': {
      'en': 'First name',
      'es': 'Nombre de pila',
      'gl': 'Nome',
    },
    'k7p3tu5a': {
      'en': 'Dolly',
      'es': 'Muñequita',
      'gl': 'Dolly',
    },
    '0njmccl0': {
      'en': 'First name',
      'es': 'Nombre de pila',
      'gl': 'Nome',
    },
    'h1om3bl1': {
      'en': 'Sheep',
      'es': 'Oveja',
      'gl': 'Ovellas',
    },
    'js7e27p7': {
      'en': 'Phone number',
      'es': 'Número de teléfono',
      'gl': 'Número de teléfono',
    },
    'h4nww2it': {
      'en': '+34 01234 56789',
      'es': '+34 01234 56789',
      'gl': '+34 01234 56789',
    },
    'xt8wvrfu': {
      'en': 'Verified',
      'es': 'Verificado',
      'gl': 'Verificado',
    },
    '962kl47r': {
      'en': 'Email address',
      'es': 'Dirección de correo electrónico',
      'gl': 'Enderezo electrónico',
    },
    '963g3vpg': {
      'en': 'dolly@uiclones.com',
      'es': 'muñeca@uiclones.com',
      'gl': 'dolly@uiclones.com',
    },
    'ef7b794f': {
      'en': 'Unverified',
      'es': 'Inconfirmado',
      'gl': 'Sen verificar',
    },
    'k4hzup2c': {
      'en': 'Password',
      'es': 'Contraseña',
      'gl': 'Contrasinal',
    },
    '0mw8tvib': {
      'en': '*********',
      'es': '*********',
      'gl': '*********',
    },
    'fdr3iymu': {
      'en': 'Home',
      'es': 'Hogar',
      'gl': 'Casa',
    },
  },
  // UpdateFirstName
  {
    '57u630yb': {
      'en': 'First name',
      'es': 'Nombre de pila',
      'gl': 'Nome',
    },
    'vco8xeeo': {
      'en': 'First Name',
      'es': 'Nombre de pila',
      'gl': 'Nome',
    },
    'xp5uocsh': {
      'en': 'Update first name',
      'es': 'Actualizar nombre',
      'gl': 'Actualizar o nome',
    },
    '7byi8k74': {
      'en': 'Home',
      'es': 'Hogar',
      'gl': 'Casa',
    },
  },
  // UpdatePhoneNumber
  {
    '7c0fc4so': {
      'en': 'Phone number',
      'es': 'Número de teléfono',
      'gl': 'Número de teléfono',
    },
    'eaiq9lsj': {
      'en': '123456789',
      'es': '123456789',
      'gl': '123456789',
    },
    'v3uv4ajs': {
      'en': 'A verification code will be sent to this number.',
      'es': 'Se enviará un código de verificación a este número.',
      'gl': 'Enviarase un código de verificación a este número.',
    },
    'nnwvvlge': {
      'en': 'Update phone number',
      'es': 'Actualizar número de teléfono',
      'gl': 'Actualizar o número de teléfono',
    },
    'jhcdsso2': {
      'en': 'Home',
      'es': 'Hogar',
      'gl': 'Casa',
    },
  },
  // UpdateEmail
  {
    'tw9hpplq': {
      'en': 'Email address',
      'es': 'Dirección de correo electrónico',
      'gl': 'Enderezo electrónico',
    },
    'k6e3x4b4': {
      'en': 'Email address',
      'es': 'Dirección de correo electrónico',
      'gl': 'Enderezo electrónico',
    },
    'xje11a6o': {
      'en': 'Verify email',
      'es': 'Verificar correo electrónico',
      'gl': 'Verifica o correo electrónico',
    },
    '7hp8n69t': {
      'en': 'Home',
      'es': 'Hogar',
      'gl': 'Casa',
    },
  },
  // VerifyPassword
  {
    'oaj0dp2u': {
      'en': 'Verify password',
      'es': 'Verificar contraseña',
      'gl': 'Verificar Contraseña',
    },
    'kzbpz4qo': {
      'en': '',
      'es': '',
      'gl': '',
    },
    'zd6d0aoz': {
      'en': 'For your security, please enter your current password.',
      'es': 'Por su seguridad, ingrese su contraseña actual.',
      'gl': 'Para a súa seguridade, introduza o seu contrasinal actual.',
    },
    'ccite8kw': {
      'en': 'Verify',
      'es': 'Verificar',
      'gl': 'Verificar',
    },
    'vdcgao00': {
      'en': 'Home',
      'es': 'Hogar',
      'gl': 'Casa',
    },
  },
  // Wallet
  {
    'cv4odwsa': {
      'en': 'Uber Cash',
      'es': 'Uber Efectivo',
      'gl': 'Uber Cash',
    },
    'bjc5xmv9': {
      'en': '€0 . 00',
      'es': '0€. 00',
      'gl': '0 €. 00',
    },
    'x2qpae7f': {
      'en': 'Gift card',
      'es': 'Tarjeta de regalo',
      'gl': 'Tarxeta REGALO',
    },
    'rwaxi8o8': {
      'en': '**** 2125',
      'es': '**** 2125',
      'gl': '**** 2125',
    },
    'pn9ay71g': {
      'en': 'Add payment method',
      'es': 'Añadir método de pago',
      'gl': 'Engadir método de pago',
    },
    'w03rhfdu': {
      'en': 'Vouchers',
      'es': 'Vales',
      'gl': 'Vales',
    },
    'g0scr5ou': {
      'en': 'Vouchers',
      'es': 'Vales',
      'gl': 'Vales',
    },
    'aahjw1sm': {
      'en': '0',
      'es': '0',
      'gl': '0',
    },
    'js70upwl': {
      'en': 'Add voucher code',
      'es': 'Agregar código de cupón',
      'gl': 'Engadir código de vale',
    },
    'b0oynjtu': {
      'en': 'Home',
      'es': 'Hogar',
      'gl': 'Casa',
    },
  },
  // Vouchers
  {
    'zyicgl5b': {
      'en': 'You currently have no vouchers',
      'es': 'Actualmente no tienes vales',
      'gl': 'Actualmente non tes vales',
    },
    '7jtam43l': {
      'en': 'Organisations can send you vouchers to pay for trips or meals.',
      'es':
          'Las organizaciones pueden enviarte vales para pagar viajes o comidas.',
      'gl':
          'As organizacións poden enviarche vales para pagar viaxes ou comidas.',
    },
    '6vy69u0u': {
      'en': 'Learn more about vouchers',
      'es': 'Más información sobre los vales',
      'gl': 'Máis información sobre os vales',
    },
    '9ng4f3kg': {
      'en': 'Home',
      'es': 'Hogar',
      'gl': 'Casa',
    },
  },
  // AddCode
  {
    'tz1rcr3c': {
      'en': 'Enter your voucher code',
      'es': 'Ingrese su código de cupón',
      'gl': 'Introduce o teu código de vale',
    },
    '1mjwstyj': {
      'en': 'Enter the code in order to claim and use voucher',
      'es': 'Ingrese el código para reclamar y usar el bono',
      'gl': 'Introduce o código para reclamar e usar o bono',
    },
    '877mtmv8': {
      'en': 'Verify',
      'es': 'Verificar',
      'gl': 'Verificar',
    },
    'ofxp1f02': {
      'en': 'Home',
      'es': 'Hogar',
      'gl': 'Casa',
    },
  },
  // AccountPromotions
  {
    'ek2gjb7i': {
      'en': 'Enter promo code',
      'es': 'Introduce el código de promoción',
      'gl': 'Introduce o código promocional',
    },
    '4bqyuifr': {
      'en': 'You currently dont have any promotions',
      'es': 'Actualmente no tienes ninguna promoción.',
      'gl': 'Actualmente non tes ningunha promoción',
    },
    'n9u2xam1': {
      'en':
          'Invite friends to Huber Eats. You get £3 off when each friend makes their first order.',
      'es':
          'Invita a tus amigos a Huber Eats. Obtendrás £3 de descuento cuando cada amigo haga su primer pedido.',
      'gl':
          'Invita amigos a Huber Eats. Obtén 3 £ de desconto cando cada amigo fai o seu primeiro pedido.',
    },
    'qgw2htcv': {
      'en': 'Start inviting',
      'es': 'Empezar a invitar',
      'gl': 'Comeza a invitar',
    },
    'n2ryxk42': {
      'en':
          'Invite friends to Huber Eats. You get £3 off when each friend makes their first order.',
      'es':
          'Invita a tus amigos a Huber Eats. Obtendrás £3 de descuento cuando cada amigo haga su primer pedido.',
      'gl':
          'Invita amigos a Huber Eats. Obtén 3 £ de desconto cando cada amigo fai o seu primeiro pedido.',
    },
    'o4eda6fd': {
      'en': 'Start inviting',
      'es': 'Empezar a invitar',
      'gl': 'Comeza a invitar',
    },
    'by2hsdtb': {
      'en': 'Home',
      'es': 'Hogar',
      'gl': 'Casa',
    },
  },
  // AboutApp
  {
    'nsucspvb': {
      'en': 'About',
      'es': 'Acerca de',
      'gl': 'Sobre',
    },
    'f0ob399h': {
      'en': '6.136.10000',
      'es': '6.136.10000',
      'gl': '6.136.10000',
    },
    'uqv12osg': {
      'en': 'Like us on Facebook',
      'es': 'Danos like en facebook',
      'gl': 'Gústanos en Facebook',
    },
    'o09mm3mv': {
      'en': 'Legal',
      'es': 'Legal',
      'gl': 'Legal',
    },
    'z4hfdabx': {
      'en': 'Gal-Go.com',
      'es': 'Gal-Go.com',
      'gl': 'Gal-Go.com',
    },
    'hqdubxhu': {
      'en': 'Home',
      'es': 'Hogar',
      'gl': 'Casa',
    },
  },
  // RestaurantAwards
  {
    '8qbc2nli': {
      'en': 'Offers',
      'es': 'Ofertas',
      'gl': 'Ofertas',
    },
    'zplq53uh': {
      'en': 'Offers ',
      'es': 'Ofertas',
      'gl': 'Ofertas',
    },
    'k1zvbt0l': {
      'en':
          'Huber is paid by merchants for marketing and promotion, which influences the personalised recommendations you see. ',
      'es':
          'Los comerciantes pagan a Huber por marketing y promoción, lo que influye en las recomendaciones personalizadas que ve.',
      'gl':
          'Os comerciantes pagan a Huber por marketing e promoción, o que inflúe nas recomendacións personalizadas que ves.',
    },
    'khga90se': {
      'en': 'Learn more or change settings',
      'es': 'Más información o cambiar la configuración',
      'gl': 'Obtén máis información ou cambia a configuración',
    },
    '6i7ktij3': {
      'en': 'Rewards',
      'es': 'Recompensas',
      'gl': 'Recompensas',
    },
    'emzz0fs2': {
      'en': 'Earn Restaurant Rewards',
      'es': 'Gana recompensas de restaurante',
      'gl': 'Gaña recompensas de restaurantes',
    },
    'cgrj1wob': {
      'en':
          'FlutterFlowHuber is paid by merchants for marketing and promotion, which influences the personalised recommendations you see. ',
      'es':
          'Los comerciantes pagan a FlutterFlowHuber por marketing y promoción, lo que influye en las recomendaciones personalizadas que ve.',
      'gl':
          'Os comerciantes pagan a FlutterFlowHuber por marketing e promoción, o que inflúe nas recomendacións personalizadas que ves.',
    },
    'c8w3tayy': {
      'en': 'Learn more or change settings',
      'es': 'Más información o cambiar la configuración',
      'gl': 'Obtén máis información ou cambia a configuración',
    },
    'nm52ux02': {
      'en': 'Home',
      'es': 'Hogar',
      'gl': 'Casa',
    },
  },
  // OrderPickedItem
  {
    'xvbblpzb': {
      'en': 'Latte',
      'es': 'Latté',
      'gl': 'Latte',
    },
    '1w4ejk42': {
      'en': '£3.85',
      'es': '3,85€',
      'gl': '£ 3,85',
    },
    'vwigznzl': {
      'en':
          'Our signature blend espresso with steamed milk for a smooth and creamy coffee',
      'es':
          'Nuestra exclusiva mezcla de espresso con leche al vapor para un café suave y cremoso.',
      'gl':
          'A nosa sinatura mestura espresso con leite ao vapor para un café suave e cremoso',
    },
    '4rilmfpb': {
      'en': 'Choice of Size',
      'es': 'Elección de tamaño',
      'gl': 'Elección do tamaño',
    },
    'r33lbghz': {
      'en': 'Required',
      'es': 'Requerido',
      'gl': 'Obrigatorio',
    },
    '1owuobvr': {
      'en': 'Medium',
      'es': 'Medio',
      'gl': 'Medio',
    },
    '066hu4tv': {
      'en': '£0.30',
      'es': '0,30€',
      'gl': '0,30 £',
    },
    'ivvzaxa9': {
      'en': 'Large',
      'es': 'Grande',
      'gl': 'Grande',
    },
    '10bfzmrj': {
      'en': '£0.30',
      'es': '0,30€',
      'gl': '0,30 £',
    },
    '49h4kzpn': {
      'en': 'Edit selections',
      'es': 'Editar selecciones',
      'gl': 'Editar seleccións',
    },
    '1u8l2oqq': {
      'en': 'Choice of Milk',
      'es': 'Elección de leche',
      'gl': 'Selección de leite',
    },
    'apm0sc4s': {
      'en': 'Oat',
      'es': 'Avena',
      'gl': 'Avea',
    },
    'b09tfbh7': {
      'en': '£0.30',
      'es': '0,30€',
      'gl': '0,30 £',
    },
    'fyp91b7k': {
      'en': 'Decaf/Caffeinated/Character Roast',
      'es': 'Descafeinado/con cafeína/tostado con carácter',
      'gl': 'Descafeinado/cafeinado/asado de carácter',
    },
    'tkw0rzyh': {
      'en': 'Required',
      'es': 'Requerido',
      'gl': 'Obrigatorio',
    },
    'usihe5it': {
      'en': 'Caffeinated',
      'es': 'con cafeína',
      'gl': 'Con cafeína',
    },
    'ume9gfls': {
      'en': 'Decaf',
      'es': 'Descafeinado',
      'gl': 'Descafeinado',
    },
    '7arkws6l': {
      'en': '£0.30',
      'es': '0,30€',
      'gl': '0,30 £',
    },
    'yzkmr9jo': {
      'en': 'Winter Blend',
      'es': 'Mezcla de invierno',
      'gl': 'Mestura de inverno',
    },
    'ma6x62p4': {
      'en': '£0.30',
      'es': '0,30€',
      'gl': '0,30 £',
    },
    'td4pw2fy': {
      'en': 'Choice of Syrups',
      'es': 'Elección de jarabes',
      'gl': 'Selección de xaropes',
    },
    '4uds3qzp': {
      'en': 'Choose up to 1',
      'es': 'Elige hasta 1',
      'gl': 'Escolle ata 1',
    },
    'owqvachf': {
      'en': 'Caramel',
      'es': 'Caramelo',
      'gl': 'Caramelo',
    },
    'mspph2gw': {
      'en': '£0.30',
      'es': '0,30€',
      'gl': '0,30 £',
    },
    'm9iv86jr': {
      'en': 'Vanilla',
      'es': 'Vainilla',
      'gl': 'Vainilla',
    },
    'ez162h7x': {
      'en': '£0.30',
      'es': '0,30€',
      'gl': '0,30 £',
    },
    'vunfgd1a': {
      'en': 'Hazelnut',
      'es': 'Avellana',
      'gl': 'Abeleira',
    },
    'gxybtgxy': {
      'en': '£0.30',
      'es': '0,30€',
      'gl': '0,30 £',
    },
    'zmdn8yrg': {
      'en': 'Sugar Free Caramel',
      'es': 'Caramelo Sin Azúcar',
      'gl': 'Caramelo sen azucre',
    },
    '8321w3yq': {
      'en': '£0.30',
      'es': '0,30€',
      'gl': '0,30 £',
    },
    'qkcx9y81': {
      'en': 'Extra Shot of Coffee',
      'es': 'Chupito extra de café',
      'gl': 'Toma extra de café',
    },
    '5a56l8pf': {
      'en': 'Choose up to 3',
      'es': 'Elige hasta 3',
      'gl': 'Escolle ata 3',
    },
    'uca2pshj': {
      'en': 'Extra Shot of Coffee',
      'es': 'Chupito extra de café',
      'gl': 'Toma extra de café',
    },
    'yfcghd8o': {
      'en': '£0.30',
      'es': '0,30€',
      'gl': '0,30 £',
    },
    'cse8w0h9': {
      'en': 'Sugar',
      'es': 'Azúcar',
      'gl': 'Azucre',
    },
    'rh190ro1': {
      'en': 'Choose up to 3',
      'es': 'Elige hasta 3',
      'gl': 'Escolle ata 3',
    },
    'fonny2kt': {
      'en': 'Brown Sugar',
      'es': 'Azúcar morena',
      'gl': 'Azucre moreno',
    },
    '8mv1efzn': {
      'en': 'White Sugar',
      'es': 'Azucar blanca',
      'gl': 'Azucre Branco',
    },
    'q08tcs1u': {
      'en': 'White Sugar',
      'es': 'Azucar blanca',
      'gl': 'Azucre Branco',
    },
    'tz31l5hz': {
      'en':
          'Costa Coffee (Smallwater Brixton).has a FHRS rating of 5. This information was updated on 04/11/2022. The current rating is on their page on the ',
      'es':
          'Costa Coffee (Smallwater Brixton) tiene una calificación FHRS de 5. Esta información se actualizó el 11/04/2022. La calificación actual está en su página en el',
      'gl':
          'Costa Coffee (Smallwater Brixton).ten unha clasificación FHRS de 5. Esta información foi actualizada o 04/11/2022. A clasificación actual está na súa páxina do',
    },
    'aszuaiue': {
      'en': 'https://builderking.io/ ',
      'es': 'https://builderking.io/',
      'gl': 'https://builderking.io/',
    },
    '4mc0nj0s': {
      'en':
          'Allergies, intolerances and dietary requirements: Before ordering, please contact the restaurant directly and ask to speak to a member of staff who can assist if you require information about ingredients and help cater for your needs. Adults need around 2000 kcal a day.',
      'es':
          'Alergias, intolerancias y requisitos dietéticos: antes de realizar el pedido, comuníquese directamente con el restaurante y solicite hablar con un miembro del personal que pueda ayudarlo si necesita información sobre los ingredientes y ayudar a satisfacer sus necesidades. Los adultos necesitan alrededor de 2000 kcal al día.',
      'gl':
          'Alerxias, intolerancias e requisitos dietéticos: antes de realizar o pedido, póñase en contacto directamente co restaurante e solicite falar cun membro do persoal que poida axudar se precisa información sobre os ingredientes e axude a satisfacer as súas necesidades. Os adultos necesitan unhas 2000 kcal ao día.',
    },
    '1ojxks5e': {
      'en': 'Add 1 to basket £3.85',
      'es': 'Añadir 1 a la cesta £3.85',
      'gl': 'Engadir 1 á cesta £3.85',
    },
    'i795sy3a': {
      'en': 'Home',
      'es': 'Hogar',
      'gl': 'Casa',
    },
  },
  // OrderPickedDetails
  {
    '98xsux7y': {
      'en': 'Large',
      'es': 'Grande',
      'gl': 'Grande',
    },
    'zwmuvdw2': {
      'en': 'Choice of Milk',
      'es': 'Elección de leche',
      'gl': 'Selección de leite',
    },
    'akgtd1ce': {
      'en': 'Required',
      'es': 'Requerido',
      'gl': 'Obrigatorio',
    },
    '33ma4nfo': {
      'en': 'Almond',
      'es': 'Almendra',
      'gl': 'Améndoa',
    },
    'v1vh3nep': {
      'en': '163 kcal',
      'es': '163 kilocalorías',
      'gl': '163 kcal',
    },
    'xzrz9kog': {
      'en': '£0.30',
      'es': '0,30€',
      'gl': '0,30 £',
    },
    'etipz0gx': {
      'en': 'Coconut',
      'es': 'Coco',
      'gl': 'Coco',
    },
    'uri4949a': {
      'en': '201 kcal',
      'es': '201 kilocalorías',
      'gl': '201 kcal',
    },
    '45tau44i': {
      'en': '£0.45',
      'es': '0,45€',
      'gl': '£ 0,45',
    },
    '2pbo5m78': {
      'en': 'Coconut',
      'es': 'Coco',
      'gl': 'Coco',
    },
    'd6g3otsq': {
      'en': '201 kcal',
      'es': '201 kilocalorías',
      'gl': '201 kcal',
    },
    'wmq11zf2': {
      'en': '£0.45',
      'es': '0,45€',
      'gl': '£ 0,45',
    },
    '69lnvx19': {
      'en': 'Coconut',
      'es': 'Coco',
      'gl': 'Coco',
    },
    'osfip088': {
      'en': '201 kcal',
      'es': '201 kilocalorías',
      'gl': '201 kcal',
    },
    'kr4d9anp': {
      'en': '£0.45',
      'es': '0,45€',
      'gl': '£ 0,45',
    },
    'v23rzccz': {
      'en': 'Coconut',
      'es': 'Coco',
      'gl': 'Coco',
    },
    'lqjlovvv': {
      'en': '201 kcal',
      'es': '201 kilocalorías',
      'gl': '201 kcal',
    },
    '5bs9k8ah': {
      'en': '£0.45',
      'es': '0,45€',
      'gl': '£ 0,45',
    },
    'iu27ydpe': {
      'en': 'Coconut',
      'es': 'Coco',
      'gl': 'Coco',
    },
    'qvoauzxv': {
      'en': '201 kcal',
      'es': '201 kilocalorías',
      'gl': '201 kcal',
    },
    'ra6ufxzz': {
      'en': '£0.45',
      'es': '0,45€',
      'gl': '£ 0,45',
    },
    'tf5rdiam': {
      'en': 'Coconut',
      'es': 'Coco',
      'gl': 'Coco',
    },
    'j8xpm7ia': {
      'en': '201 kcal',
      'es': '201 kilocalorías',
      'gl': '201 kcal',
    },
    'tqu7sals': {
      'en': '£0.45',
      'es': '0,45€',
      'gl': '£ 0,45',
    },
    'o8za6dx2': {
      'en': 'Coconut',
      'es': 'Coco',
      'gl': 'Coco',
    },
    '39u4hdb8': {
      'en': '201 kcal',
      'es': '201 kilocalorías',
      'gl': '201 kcal',
    },
    'q9s60tgj': {
      'en': '£0.45',
      'es': '0,45€',
      'gl': '£ 0,45',
    },
    '464mponj': {
      'en': 'Coconut',
      'es': 'Coco',
      'gl': 'Coco',
    },
    'n482qfun': {
      'en': '201 kcal',
      'es': '201 kilocalorías',
      'gl': '201 kcal',
    },
    'bzygz32v': {
      'en': '£0.45',
      'es': '0,45€',
      'gl': '£ 0,45',
    },
    'zrran6ru': {
      'en': 'Coconut',
      'es': 'Coco',
      'gl': 'Coco',
    },
    'hfbd9ahh': {
      'en': '201 kcal',
      'es': '201 kilocalorías',
      'gl': '201 kcal',
    },
    'hx7w25sb': {
      'en': '£0.45',
      'es': '0,45€',
      'gl': '£ 0,45',
    },
    'en4kl8xb': {
      'en': 'Coconut',
      'es': 'Coco',
      'gl': 'Coco',
    },
    'qcrby6lm': {
      'en': '201 kcal',
      'es': '201 kilocalorías',
      'gl': '201 kcal',
    },
    'cf02b4vl': {
      'en': '£0.45',
      'es': '0,45€',
      'gl': '£ 0,45',
    },
    '3ydcrv3i': {
      'en': 'Done £4.15',
      'es': 'Hecho £ 4,15',
      'gl': 'Feito 4,15 £',
    },
    'rpabn0t5': {
      'en': 'Home',
      'es': 'Hogar',
      'gl': 'Casa',
    },
  },
  // UpdateTerms
  {
    'r1ao8tie': {
      'en': 'We updated our terms',
      'es': 'Actualizamos nuestros términos',
      'gl': 'Actualizamos as nosas condicións',
    },
    'fctgvt5a': {
      'en': 'We encourage you to read our updated terms in full',
      'es':
          'Le recomendamos que lea nuestros términos actualizados en su totalidad.',
      'gl':
          'Animámosche a ler as nosas condicións actualizadas na súa totalidade',
    },
    'd52h647y': {
      'en': 'Terms of Use',
      'es': 'Condiciones de uso',
      'gl': 'Condicións de uso',
    },
    '49kep7u2': {
      'en': 'Privacy Notice',
      'es': 'Aviso de Privacidad',
      'gl': 'Aviso de privacidade',
    },
    'vzud5wi6': {
      'en':
          'By ticking the box, I confirm that i have reviewed and agree to the Terms of Use and acknowledge the Privacy Notice.',
      'es':
          'Al marcar la casilla, confirmo que he revisado y acepto los Términos de uso y reconozco el Aviso de privacidad.',
      'gl':
          'Ao marcar a caixa, confirmo que revisei e acepto as Condicións de uso e que recoñezo o Aviso de privacidade.',
    },
    'kgvqtptk': {
      'en': 'I am at least 18 years of age.',
      'es': 'Tengo al menos 18 años.',
      'gl': 'Teño polo menos 18 anos.',
    },
    'u92of74y': {
      'en': 'Confirm',
      'es': 'Confirmar',
      'gl': 'Confirmar',
    },
    '5dy79qbq': {
      'en': 'Home',
      'es': 'Hogar',
      'gl': 'Casa',
    },
  },
  // CourierProfile
  {
    'b9hwowg2': {
      'en': 'Suso',
      'es': 'suso',
      'gl': 'Suso',
    },
    'a5zqrdqd': {
      'en': 'Delivering since March 2022',
      'es': 'Entregando desde marzo de 2022',
      'gl': 'Entregando desde marzo de 2022',
    },
    'hzwwaiyk': {
      'en': '1,356',
      'es': '1.356',
      'gl': '1.356',
    },
    'y6wuyvcn': {
      'en': 'Deliveries',
      'es': 'Entregas',
      'gl': 'Entregas',
    },
    'hhcdbk9t': {
      'en': '99%',
      'es': '99%',
      'gl': '99 %',
    },
    '9zugpq6a': {
      'en': 'Satisfaction rate',
      'es': 'Tasa de satisfacción',
      'gl': 'Taxa de satisfacción',
    },
    'ax2maxpl': {
      'en': 'Customer compliments',
      'es': 'Felicitaciones al cliente',
      'gl': 'Felicitacións dos clientes',
    },
    'wyqlaz9l': {
      'en': '29',
      'es': '29',
      'gl': '29',
    },
    'gvsgjy0p': {
      'en': 'Friendly service',
      'es': 'Servicio amigable',
      'gl': 'Servizo amable',
    },
    'jdwa0ld6': {
      'en': '29',
      'es': '29',
      'gl': '29',
    },
    '6me85sol': {
      'en': 'Quick and\nefficient',
      'es': 'Rápido y\neficiente',
      'gl': 'Rápido e\neficiente',
    },
    '8zniuosu': {
      'en': '29',
      'es': '29',
      'gl': '29',
    },
    'jz12p3n0': {
      'en': 'Perfect\nhand-off',
      'es': 'Perfecto\nmanos libres',
      'gl': 'Perfecto\nentrega',
    },
    'np9brt1n': {
      'en': '29',
      'es': '29',
      'gl': '29',
    },
    'jwruz8y0': {
      'en': 'Delivered with',
      'es': 'Entregado con',
      'gl': 'Entregado con',
    },
    'mr2ttc5h': {
      'en': 'Update your tip',
      'es': 'Actualiza tu consejo',
      'gl': 'Actualiza o teu consello',
    },
    '7wjepuli': {
      'en': 'Home',
      'es': 'Hogar',
      'gl': 'Casa',
    },
  },
  // RateCourier
  {
    'gvvtwz8v': {
      'en': 'How was Jubayer A’s Service?',
      'es': '¿Cómo estuvo el servicio de Jubayer A?',
      'gl': 'Como foi o servizo de Jubayer A?',
    },
    'xovzrii8': {
      'en': 'Give a thumbs up for good delivery.',
      'es': 'Dale el visto bueno a una buena entrega.',
      'gl': 'Dá un polgar cara arriba para unha boa entrega.',
    },
    'o2e5o8d6': {
      'en': 'Get help',
      'es': 'Consigue ayuda',
      'gl': 'Obtén axuda',
    },
    'dvrn38yv': {
      'en': 'Thanks for tipping',
      'es': 'Gracias por dar propina',
      'gl': 'Grazas pola propina',
    },
    'n7hfj2fw': {
      'en': 'Your order was £15.81.',
      'es': 'Su pedido fue de £15,81.',
      'gl': 'O teu pedido foi de 15,81 £.',
    },
    'hd1xnyby': {
      'en': '10%',
      'es': '10%',
      'gl': '10 %',
    },
    '6laxjxzp': {
      'en': 'Edit',
      'es': 'Editar',
      'gl': 'Editar',
    },
    'k10si6jw': {
      'en': 'You tipped £1.37.',
      'es': 'Le diste una propina de £1,37.',
      'gl': 'Deixaches 1,37 £ de propina.',
    },
    'qtrjstjq': {
      'en': 'Submit',
      'es': 'Entregar',
      'gl': 'Enviar',
    },
    'fyb9dpwg': {
      'en': 'Home',
      'es': 'Hogar',
      'gl': 'Casa',
    },
  },
  // ThanksForRate
  {
    'z8oh0asd': {
      'en': 'Thanks for tipping',
      'es': 'Gracias por dar propina',
      'gl': 'Grazas pola propina',
    },
    'ekiu6pcf': {
      'en': 'Back',
      'es': 'Atrás',
      'gl': 'De volta',
    },
    '8mwdam3r': {
      'en': 'Home',
      'es': 'Hogar',
      'gl': 'Casa',
    },
  },
  // Message
  {
    'yorkvs04': {
      'en': 'Jubayer A',
      'es': 'Jubayer A',
      'gl': 'Jubayer A',
    },
    'cdawhwva': {
      'en': 'Are you here?',
      'es': '¿Estás aquí?',
      'gl': 'Estás aquí?',
    },
    's22jw5gj': {
      'en': 'I\'m waiting outside',
      'es': 'estoy esperando afuera',
      'gl': 'Estou esperando fóra',
    },
    'fkb6kkz4': {
      'en': 'Can you message when you’re \nhere please?',
      'es': '¿Puedes enviar un mensaje cuando estés? \n¿aquí por favor?',
      'gl': 'Podes enviar unha mensaxe cando esteas \naquí por favor?',
    },
    '4blbidhm': {
      'en': 'Option 1',
      'es': 'Opción 1',
      'gl': 'Opción 1',
    },
    'syriea8m': {
      'en': 'Home',
      'es': 'Hogar',
      'gl': 'Casa',
    },
  },
  // OrderDetailItems
  {
    'gau6ra8f': {
      'en': 'Past orders',
      'es': 'Pedidos anteriores',
      'gl': 'Pedidos anteriores',
    },
    'iryupuqv': {
      'en': 'Costa Coffe\n(Smallwater - B...',
      'es': 'Café Costa\n(Agua pequeña - B...',
      'gl': 'Costa Café\n(Smallwater - B...',
    },
    'ry6bdaae': {
      'en': '3 items',
      'es': '3 artículos',
      'gl': '3 elementos',
    },
    'xlof49et': {
      'en': '£17.18',
      'es': '17,18€',
      'gl': '£ 17,18',
    },
    'kjo282mi': {
      'en': '01 Nov',
      'es': '01 nov',
      'gl': '01 de novembro',
    },
    'ig988saz': {
      'en': 'Completed',
      'es': 'Terminado',
      'gl': 'Completado',
    },
    'rln94nm4': {
      'en': 'View shop',
      'es': 'Ver tienda',
      'gl': 'Ver tenda',
    },
    'qrblcy7d': {
      'en': 'Costa Coffe\n(Smallwater - B...',
      'es': 'Café Costa\n(Agua pequeña - B...',
      'gl': 'Costa Café\n(Smallwater - B...',
    },
    'jt827x99': {
      'en': '3 items',
      'es': '3 artículos',
      'gl': '3 elementos',
    },
    'kbe5thqe': {
      'en': '£17.18',
      'es': '17,18€',
      'gl': '£ 17,18',
    },
    'e7a8rbzk': {
      'en': '01 Nov',
      'es': '01 nov',
      'gl': '01 de novembro',
    },
    '661osjiw': {
      'en': 'Completed',
      'es': 'Terminado',
      'gl': 'Completado',
    },
    '1mfo1cwb': {
      'en': 'View shop',
      'es': 'Ver tienda',
      'gl': 'Ver tenda',
    },
    '4f8ujjml': {
      'en': 'Costa Coffe\n(Smallwater - B...',
      'es': 'Café Costa\n(Agua pequeña - B...',
      'gl': 'Costa Café\n(Smallwater - B...',
    },
    '3qm87j8b': {
      'en': '3 items',
      'es': '3 artículos',
      'gl': '3 elementos',
    },
    '1oe34ik0': {
      'en': '£17.18',
      'es': '17,18€',
      'gl': '£ 17,18',
    },
    'ytik0uvq': {
      'en': '01 Nov',
      'es': '01 nov',
      'gl': '01 de novembro',
    },
    'frouabgg': {
      'en': 'Completed',
      'es': 'Terminado',
      'gl': 'Completado',
    },
    'nrv3qq5j': {
      'en': 'View shop',
      'es': 'Ver tienda',
      'gl': 'Ver tenda',
    },
    '8qlcwzy5': {
      'en': 'Costa Coffe\n(Smallwater - B...',
      'es': 'Café Costa\n(Agua pequeña - B...',
      'gl': 'Costa Café\n(Smallwater - B...',
    },
    'o0vzmxc1': {
      'en': '3 items',
      'es': '3 artículos',
      'gl': '3 elementos',
    },
    'lgi5i6ze': {
      'en': '£17.18',
      'es': '17,18€',
      'gl': '£ 17,18',
    },
    'kr1p5doz': {
      'en': '01 Nov',
      'es': '01 nov',
      'gl': '01 de novembro',
    },
    'lpt309hg': {
      'en': 'Completed',
      'es': 'Terminado',
      'gl': 'Completado',
    },
    'gr7mnvvp': {
      'en': 'View shop',
      'es': 'Ver tienda',
      'gl': 'Ver tenda',
    },
    '9oxs8rvv': {
      'en': 'Costa Coffe\n(Smallwater - B...',
      'es': 'Café Costa\n(Agua pequeña - B...',
      'gl': 'Costa Café\n(Smallwater - B...',
    },
    'd98qthz2': {
      'en': '3 items',
      'es': '3 artículos',
      'gl': '3 elementos',
    },
    'za7973ul': {
      'en': '£17.18',
      'es': '17,18€',
      'gl': '£ 17,18',
    },
    '81ljpt8h': {
      'en': '01 Nov',
      'es': '01 nov',
      'gl': '01 de novembro',
    },
    'ei7lshzo': {
      'en': 'Completed',
      'es': 'Terminado',
      'gl': 'Completado',
    },
    'e6duyw8w': {
      'en': 'View shop',
      'es': 'Ver tienda',
      'gl': 'Ver tenda',
    },
    'o7xha5u6': {
      'en': 'Costa Coffe\n(Smallwater - B...',
      'es': 'Café Costa\n(Agua pequeña - B...',
      'gl': 'Costa Café\n(Smallwater - B...',
    },
    'oejhh46u': {
      'en': '3 items',
      'es': '3 artículos',
      'gl': '3 elementos',
    },
    'usya4j0b': {
      'en': '£17.18',
      'es': '17,18€',
      'gl': '£ 17,18',
    },
    'vppv0wdv': {
      'en': '01 Nov',
      'es': '01 nov',
      'gl': '01 de novembro',
    },
    'o5uny21q': {
      'en': 'Completed',
      'es': 'Terminado',
      'gl': 'Completado',
    },
    '54ukrt1b': {
      'en': 'View shop',
      'es': 'Ver tienda',
      'gl': 'Ver tenda',
    },
    'oya41yne': {
      'en': 'Costa Coffe\n(Smallwater - B...',
      'es': 'Café Costa\n(Agua pequeña - B...',
      'gl': 'Costa Café\n(Smallwater - B...',
    },
    'k9evesiv': {
      'en': '3 items',
      'es': '3 artículos',
      'gl': '3 elementos',
    },
    'b57sdg1p': {
      'en': '£17.18',
      'es': '17,18€',
      'gl': '£ 17,18',
    },
    '4ll4vhg8': {
      'en': '01 Nov',
      'es': '01 nov',
      'gl': '01 de novembro',
    },
    'exa2p9ll': {
      'en': 'Completed',
      'es': 'Terminado',
      'gl': 'Completado',
    },
    'b6ctfxvi': {
      'en': 'View shop',
      'es': 'Ver tienda',
      'gl': 'Ver tenda',
    },
    '4tbrnoyk': {
      'en': 'Home',
      'es': 'Hogar',
      'gl': 'Casa',
    },
  },
  // OrderDetails
  {
    'bnqsmjdp': {
      'en': 'Costa Coffe\n(Smallwater - B...',
      'es': 'Café Costa\n(Agua pequeña - B...',
      'gl': 'Costa Café\n(Smallwater - B...',
    },
    'bgjbnwy3': {
      'en': '3 items',
      'es': '3 artículos',
      'gl': '3 elementos',
    },
    'w6lacz0y': {
      'en': '£17.18',
      'es': '17,18€',
      'gl': '£ 17,18',
    },
    '7lk9p2t8': {
      'en': '01 Nov',
      'es': '01 nov',
      'gl': '01 de novembro',
    },
    'k79bsam9': {
      'en': 'Completed',
      'es': 'Terminado',
      'gl': 'Completado',
    },
    '889x8y00': {
      'en': 'View shop',
      'es': 'Ver tienda',
      'gl': 'Ver tenda',
    },
    'jortmaup': {
      'en': 'View shop',
      'es': 'Ver tienda',
      'gl': 'Ver tenda',
    },
    'w7zzrof8': {
      'en': 'Costa Coffe (Smallwater - Brixton)',
      'es': 'Costa Café (Smallwater - Brixton)',
      'gl': 'Costa Café (Smallwater - Brixton)',
    },
    'glsdf5jg': {
      'en': 'Order Completed',
      'es': 'Pedido completado',
      'gl': 'Orde completada',
    },
    '5p86e7nk': {
      'en': 'Today at 15:06',
      'es': 'Hoy a las 15:06',
      'gl': 'Hoxe ás 15:06',
    },
    '6llie97h': {
      'en': 'Your order',
      'es': 'Su pedido',
      'gl': 'O seu pedido',
    },
    'ob5duaq8': {
      'en': 'Rate delivery',
      'es': 'Tarifa de entrega',
      'gl': 'Taxa de entrega',
    },
    'z0kls9nz': {
      'en': 'Tip:',
      'es': 'Consejo:',
      'gl': 'Consello:',
    },
    '6w8e801x': {
      'en': '£1.37',
      'es': '1,37€',
      'gl': '£ 1,37',
    },
    'ptjwn4w5': {
      'en': 'Edit',
      'es': 'Editar',
      'gl': 'Editar',
    },
    'dfuawmpj': {
      'en': 'Your delivery by ',
      'es': 'Su entrega por',
      'gl': 'A súa entrega por',
    },
    'deec71np': {
      'en': 'Jubayer A',
      'es': 'Jubayer A',
      'gl': 'Jubayer A',
    },
    'sixjayyv': {
      'en': 'View receipt',
      'es': 'Ver recibo',
      'gl': 'Ver o recibo',
    },
    'rmp6tyir': {
      'en': 'Get help',
      'es': 'Consigue ayuda',
      'gl': 'Obtén axuda',
    },
    'p0zmtwnp': {
      'en': 'Home',
      'es': 'Hogar',
      'gl': 'Casa',
    },
  },
  // Favorite
  {
    'va2mo3on': {
      'en': 'McDonalds - 8/12\nLiverpool Road',
      'es': 'McDonald\'s - 8/12\nCarretera de Liverpool',
      'gl': 'McDonalds - 8/12\nEstrada de Liverpool',
    },
    '3dkbnzkz': {
      'en': '3.5 (100+ ratings)',
      'es': '3.5 (más de 100 calificaciones)',
      'gl': '3.5 (máis de 100 valoracións)',
    },
    '6fer09lg': {
      'en': 'Burgers',
      'es': 'hamburguesas',
      'gl': 'Hamburguesas',
    },
    'pvdxp3oc': {
      'en': '£',
      'es': '£',
      'gl': '£',
    },
    'asxu7h8x': {
      'en': '20-30 min',
      'es': '20-30 minutos',
      'gl': '20-30 min',
    },
    '3s36l9vp': {
      'en': 'Tap for hours, info and more',
      'es': 'Toca para ver horas, información y más',
      'gl': 'Toca para ver horas, información e moito máis',
    },
    'r1yqbtby': {
      'en': 'Group order',
      'es': 'Orden de grupo',
      'gl': 'Orde de grupo',
    },
    'hf9pmdot': {
      'en': 'Featured',
      'es': 'Presentado',
      'gl': 'Destacado',
    },
    'x0i771iw': {
      'en': 'McCrispy®',
      'es': 'McCrispy®',
      'gl': 'McCrispy®',
    },
    '023rxhvg': {
      'en': '£3.85',
      'es': '3,85€',
      'gl': '£ 3,85',
    },
    'vph067hm': {
      'en': '484 kcal',
      'es': '484 kilocalorías',
      'gl': '484 kcal',
    },
    'n76zf1sy': {
      'en':
          '100% chicken breast fillet in a crispy, crunchy coating. Served with iceberg lettuce, pepper mayo and a sourdough-style se...',
      'es':
          'Filete de pechuga de pollo 100% en una capa crujiente y crocante. Servido con lechuga iceberg, mayonesa de pimientos y un sésamo estilo masa madre...',
      'gl':
          'Filete de peituga de polo 100 % nun revestimento crocante e crocante. Acompañado de leituga iceberg, maionesa de pementa e unha salsa de masa fermentada...',
    },
    'hh28ykkm': {
      'en': 'McCrispy®',
      'es': 'McCrispy®',
      'gl': 'McCrispy®',
    },
    '4zvuoqs7': {
      'en': '£3.85',
      'es': '3,85€',
      'gl': '£ 3,85',
    },
    'sj6gmo9l': {
      'en': '484 kcal',
      'es': '484 kilocalorías',
      'gl': '484 kcal',
    },
    'pnze3ghh': {
      'en':
          '100% chicken breast fillet in a crispy, crunchy coating. Served with iceberg lettuce, pepper mayo and a sourdough-style se...',
      'es':
          'Filete de pechuga de pollo 100% en una capa crujiente y crocante. Servido con lechuga iceberg, mayonesa de pimientos y un sésamo estilo masa madre...',
      'gl':
          'Filete de peituga de polo 100 % nun revestimento crocante e crocante. Acompañado de leituga iceberg, maionesa de pementa e unha salsa de masa fermentada...',
    },
    'p5xu77l6': {
      'en': 'Chicken Fillet Burger Meal',
      'es': 'Harina De Hamburguesa De Filete De Pollo',
      'gl': 'Comida de hamburguesa de filete de polo',
    },
    '2gikg2as': {
      'en': '£6.99',
      'es': '6,99€',
      'gl': '£ 6,99',
    },
    'd0ry9hca': {
      'en': 'Served with chips and drink.',
      'es': 'Servido con patatas fritas y bebida.',
      'gl': 'Servido con patacas fritas e bebida.',
    },
    '50nd8662': {
      'en': 'Half Pounder Cheese Burger Meal',
      'es': 'Hamburguesa De Media Libra Con Queso',
      'gl': 'Comida de hamburguesa de queixo de media libra',
    },
    'iqws2dco': {
      'en': '£6.99',
      'es': '6,99€',
      'gl': '£ 6,99',
    },
    'nb05dwns': {
      'en': 'Served with chips and drink.',
      'es': 'Servido con patatas fritas y bebida.',
      'gl': 'Servido con patacas fritas e bebida.',
    },
    'j21ptxsp': {
      'en': 'Peri Peri Chicken Breast Wrap Meal',
      'es': 'Envoltura de pechuga de pollo Peri Peri',
      'gl': 'Comida de envoltura de pechuga de polo Peri Peri',
    },
    '3czlkyto': {
      'en': '£6.99',
      'es': '6,99€',
      'gl': '£ 6,99',
    },
    'iap3m0j7': {
      'en': 'Served with chips and drink.',
      'es': 'Servido con patatas fritas y bebida.',
      'gl': 'Servido con patacas fritas e bebida.',
    },
    'azftfw2n': {
      'en': 'Chicken Fillet Burger Meal',
      'es': 'Harina De Hamburguesa De Filete De Pollo',
      'gl': 'Comida de hamburguesa de filete de polo',
    },
    'vzm3ah06': {
      'en': '£6.99',
      'es': '6,99€',
      'gl': '£ 6,99',
    },
    'tkb2r68a': {
      'en': 'Served with chips and drink.',
      'es': 'Servido con patatas fritas y bebida.',
      'gl': 'Servido con patacas fritas e bebida.',
    },
    '6n70tyxe': {
      'en': 'Breakfast',
      'es': 'Desayuno',
      'gl': 'Almorzo',
    },
    't28imsrv': {
      'en': 'McCrispy®',
      'es': 'McCrispy®',
      'gl': 'McCrispy®',
    },
    'ie0wv5xs': {
      'en': '£3.85',
      'es': '3,85€',
      'gl': '£ 3,85',
    },
    's9hudp0s': {
      'en': '484 kcal',
      'es': '484 kilocalorías',
      'gl': '484 kcal',
    },
    '1ebno20z': {
      'en':
          '100% chicken breast fillet in a crispy, crunchy coating. Served with iceberg lettuce, pepper mayo and a sourdough-style se...',
      'es':
          'Filete de pechuga de pollo 100% en una capa crujiente y crocante. Servido con lechuga iceberg, mayonesa de pimientos y un sésamo estilo masa madre...',
      'gl':
          'Filete de peituga de polo 100 % nun revestimento crocante e crocante. Acompañado de leituga iceberg, maionesa de pementa e unha salsa de masa fermentada...',
    },
    'c95xqtmt': {
      'en': 'McCrispy®',
      'es': 'McCrispy®',
      'gl': 'McCrispy®',
    },
    '2fetmmzf': {
      'en': '£3.85',
      'es': '3,85€',
      'gl': '£ 3,85',
    },
    '60u0xgb3': {
      'en': '484 kcal',
      'es': '484 kilocalorías',
      'gl': '484 kcal',
    },
    '55vxo5ap': {
      'en':
          '100% chicken breast fillet in a crispy, crunchy coating. Served with iceberg lettuce, pepper mayo and a sourdough-style se...',
      'es':
          'Filete de pechuga de pollo 100% en una capa crujiente y crocante. Servido con lechuga iceberg, mayonesa de pimientos y un sésamo estilo masa madre...',
      'gl':
          'Filete de peituga de polo 100 % nun revestimento crocante e crocante. Acompañado de leituga iceberg, maionesa de pementa e unha salsa de masa fermentada...',
    },
    '7nvh2b12': {
      'en': 'Chicken Fillet Burger Meal',
      'es': 'Harina De Hamburguesa De Filete De Pollo',
      'gl': 'Comida de hamburguesa de filete de polo',
    },
    'zm8su4kp': {
      'en': '£6.99',
      'es': '6,99€',
      'gl': '£ 6,99',
    },
    'led7t0xw': {
      'en': 'Served with chips and drink.',
      'es': 'Servido con patatas fritas y bebida.',
      'gl': 'Servido con patacas fritas e bebida.',
    },
    'co4q2k2t': {
      'en': 'Chicken Fillet Burger Meal',
      'es': 'Harina De Hamburguesa De Filete De Pollo',
      'gl': 'Comida de hamburguesa de filete de polo',
    },
    'p8803pjd': {
      'en': '£6.99',
      'es': '6,99€',
      'gl': '£ 6,99',
    },
    'fs4iwid9': {
      'en': 'Served with chips and drink.',
      'es': 'Servido con patatas fritas y bebida.',
      'gl': 'Servido con patacas fritas e bebida.',
    },
    '1wyhrypl': {
      'en': 'Chicken Fillet Burger Meal',
      'es': 'Harina De Hamburguesa De Filete De Pollo',
      'gl': 'Comida de hamburguesa de filete de polo',
    },
    'k56eqpgp': {
      'en': '£6.99',
      'es': '6,99€',
      'gl': '£ 6,99',
    },
    'sqkyzvdc': {
      'en': 'Served with chips and drink.',
      'es': 'Servido con patatas fritas y bebida.',
      'gl': 'Servido con patacas fritas e bebida.',
    },
    'ix33prnm': {
      'en': 'Chicken Fillet Burger Meal',
      'es': 'Harina De Hamburguesa De Filete De Pollo',
      'gl': 'Comida de hamburguesa de filete de polo',
    },
    'ek9n99sr': {
      'en': '£6.99',
      'es': '6,99€',
      'gl': '£ 6,99',
    },
    '4qlyeuy4': {
      'en': 'Served with chips and drink.',
      'es': 'Servido con patatas fritas y bebida.',
      'gl': 'Servido con patacas fritas e bebida.',
    },
    '0773uhfl': {
      'en': 'Home',
      'es': 'Hogar',
      'gl': 'Casa',
    },
  },
  // CourierDetails1
  {
    '4gsqrwql': {
      'en': 'Help',
      'es': 'Ayuda',
      'gl': 'Axuda',
    },
    '9ld9qf9x': {
      'en': 'Picking up your order...',
      'es': 'Recogiendo tu pedido...',
      'gl': 'Recollendo o teu pedido...',
    },
    'dwmp4sbb': {
      'en': 'Arriving at ',
      'es': 'Llegando a',
      'gl': 'Chegando a',
    },
    '4dpk2kfd': {
      'en': '10:15',
      'es': '10:15',
      'gl': '10:15',
    },
    'zxsuk8xi': {
      'en': 'Latest arrival by 10:35',
      'es': 'Última llegada a las 10:35',
      'gl': 'Última chegada ás 10:35',
    },
    'vp8d42ow': {
      'en': 'Home',
      'es': 'Hogar',
      'gl': 'Casa',
    },
  },
  // CourierDetails
  {
    'w5ba6if3': {
      'en': 'Help',
      'es': 'Ayuda',
      'gl': 'Axuda',
    },
    'efg6yga6': {
      'en': 'Picking up your order... ',
      'es': 'Recogiendo tu pedido...',
      'gl': 'Recollendo o teu pedido...',
    },
    'bk4b278x': {
      'en': 'Arriving at ',
      'es': 'Llegando a',
      'gl': 'Chegando a',
    },
    'pcd8dc5a': {
      'en': '10:15',
      'es': '10:15',
      'gl': '10:15',
    },
    'x6p56zzo': {
      'en': 'Latest arrival by 10:35',
      'es': 'Última llegada a las 10:35',
      'gl': 'Última chegada ás 10:35',
    },
    'd8ftl6nx': {
      'en': 'Courier',
      'es': 'mensajero',
      'gl': 'Correo',
    },
    '5ggjpo6t': {
      'en': 'Home',
      'es': 'Hogar',
      'gl': 'Casa',
    },
  },
  // Divider
  {
    'jv47eino': {
      'en': 'or',
      'es': 'o',
      'gl': 'ou',
    },
  },
  // SelectChoice
  {
    'tydd1si1': {
      'en': '25-45 min',
      'es': '25-45 minutos',
      'gl': '25-45 min',
    },
    'hl9x5may': {
      'en': '£2.49',
      'es': '2,49€',
      'gl': '£ 2,49',
    },
  },
  // StoreInfo4Modal
  {
    '3rjwki2s': {
      'en': 'Search this store',
      'es': 'Buscar en esta tienda',
      'gl': 'Busca nesta tenda',
    },
    'ny7vunjv': {
      'en': 'Add to favourites',
      'es': 'Agregar a favoritos',
      'gl': 'Engadir a favoritos',
    },
    'klag9lpm': {
      'en': 'Group order',
      'es': 'Orden de grupo',
      'gl': 'Orde de grupo',
    },
    'rajncje4': {
      'en': 'Share',
      'es': 'Compartir',
      'gl': 'Compartir',
    },
    'rb5oi76y': {
      'en': 'Store info',
      'es': 'Información de la tienda',
      'gl': 'Información da tenda',
    },
    'tjoe9a90': {
      'en': 'Address, ratings and more',
      'es': 'Dirección, calificaciones y más',
      'gl': 'Enderezo, valoracións e moito máis',
    },
  },
  // RestaurantCard
  {
    'io8l6ig1': {
      'en': 'Peri Peri Near Me, Brixton',
      'es': 'Peri Peri cerca de mí, Brixton',
      'gl': 'Peri Peri Near Me, Brixton',
    },
    'vbsalus5': {
      'en': 'Sponsored',
      'es': 'Patrocinado',
      'gl': 'Patrocinado',
    },
    '8d2mok43': {
      'en': '£2.49 Delivery Fee',
      'es': '£ 2,49 Tarifa de envío',
      'gl': 'Gastos de envío 2,49 €',
    },
    'jip4u13g': {
      'en': '25-45 min',
      'es': '25-45 minutos',
      'gl': '25-45 min',
    },
  },
  // PickedItedm
  {
    'jrskuwnn': {
      'en': 'Latte',
      'es': 'Latté',
      'gl': 'Latte',
    },
    'dai7f0vb': {
      'en': '£3.85',
      'es': '3,85€',
      'gl': '£ 3,85',
    },
    '92q90wlh': {
      'en':
          'Our signature blend espresso with steamed milk for a smooth and creamy coffee',
      'es':
          'Nuestra exclusiva mezcla de espresso con leche al vapor para un café suave y cremoso.',
      'gl':
          'A nosa sinatura mestura espresso con leite ao vapor para un café suave e cremoso',
    },
  },
  // UpdateTermsModal
  {
    's7qww0f7': {
      'en': 'We updated our terms',
      'es': 'Actualizamos nuestros términos',
      'gl': 'Actualizamos as nosas condicións',
    },
    'cmjwl9wi': {
      'en': 'We encourage you to read our updated terms in full',
      'es':
          'Le recomendamos que lea nuestros términos actualizados en su totalidad.',
      'gl':
          'Animámosche a ler as nosas condicións actualizadas na súa totalidade',
    },
    'inepvd6k': {
      'en': 'Terms of Use',
      'es': 'Condiciones de uso',
      'gl': 'Condicións de uso',
    },
    'vrynbwvg': {
      'en': 'Privacy Notice',
      'es': 'Aviso de Privacidad',
      'gl': 'Aviso de privacidade',
    },
    'yljbxpap': {
      'en':
          'By ticking the box, I confirm that i have reviewed and agree to the Terms of Use and acknowledge the Privacy Notice.',
      'es':
          'Al marcar la casilla, confirmo que he revisado y acepto los Términos de uso y reconozco el Aviso de privacidad.',
      'gl':
          'Ao marcar a caixa, confirmo que revisei e acepto as Condicións de uso e que recoñezo o Aviso de privacidade.',
    },
    'wtfcp7cq': {
      'en': 'I am at least 18 years of age.',
      'es': 'Tengo al menos 18 años.',
      'gl': 'Teño polo menos 18 anos.',
    },
    'ei9pjx4x': {
      'en': 'Confirm',
      'es': 'Confirmar',
      'gl': 'Confirmar',
    },
  },
  // OrderItems
  {
    'us4t2kvz': {
      'en': '1',
      'es': '1',
      'gl': '1',
    },
    'pqcmumjd': {
      'en': 'Choice of Size',
      'es': 'Elección de tamaño',
      'gl': 'Elección do tamaño',
    },
    'a3lro6ap': {
      'en': 'Large (£0.30)',
      'es': 'Grande (0,30 £)',
      'gl': 'Grande (0,30 €)',
    },
    'kr8xeyal': {
      'en': 'Choice of Milk',
      'es': 'Elección de leche',
      'gl': 'Selección de leite',
    },
    'n1pylgj2': {
      'en': 'Whole',
      'es': 'Entero',
      'gl': 'Enteiro',
    },
    'wr23m9qq': {
      'en': 'Decaf/Caffeinated/Character Roast',
      'es': 'Descafeinado/con cafeína/tostado con carácter',
      'gl': 'Descafeinado/cafeinado/asado de carácter',
    },
    'ufg2rn9j': {
      'en': 'Caffeinated',
      'es': 'con cafeína',
      'gl': 'Con cafeína',
    },
    '6qzla0sf': {
      'en': 'Sugar',
      'es': 'Azúcar',
      'gl': 'Azucre',
    },
    'na0yc5bq': {
      'en': '2 White Sugar',
      'es': '2 azúcar blanca',
      'gl': '2 Azucre branco',
    },
  },
  // OrderDetailsItems
  {
    '2w6q7bkp': {
      'en': 'Edit',
      'es': 'Editar',
      'gl': 'Editar',
    },
  },
  // SelectChoiceIndicator
  {
    'h1mrklnj': {
      'en': '-',
      'es': '-',
      'gl': '-',
    },
  },
  // CourierModal
  {
    '992emzl6': {
      'en': '99%',
      'es': '99%',
      'gl': '99 %',
    },
    'u6t5a5gt': {
      'en': 'Jubayer A is taking care of your order today',
      'es': 'Jubayer A se encarga de tu pedido hoy',
      'gl': 'Jubayer A coida o teu pedido hoxe',
    },
    '14sb2dqp': {
      'en': 'View profile',
      'es': 'Ver perfil',
      'gl': 'Ver perfil',
    },
    'r6kjogvo': {
      'en': 'Send a message',
      'es': 'Enviar un mensaje',
      'gl': 'Envía unha mensaxe',
    },
    '5gcqwq7i': {
      'en': 'Tip',
      'es': 'Consejo',
      'gl': 'Consello',
    },
    'usqr91mp': {
      'en': 'More Info',
      'es': 'Más información',
      'gl': 'Máis información',
    },
    'oqj9iqrd': {
      'en': 'Confirm delivery with your PIN',
      'es': 'Confirma la entrega con tu PIN',
      'gl': 'Confirma a entrega co teu PIN',
    },
    '5r4be6s5': {
      'en': 'After you get your order, tell the delivery person your PIN',
      'es': 'Después de recibir su pedido, dígale al repartidor su PIN',
      'gl': 'Despois de recibir o seu pedido, indíquelle o PIN ao repartidor',
    },
    '1pkaoceu': {
      'en': 'Delivery details',
      'es': 'Detalles de la entrega',
      'gl': 'Detalles de entrega',
    },
    'meu5s0zv': {
      'en': 'Address',
      'es': 'DIRECCIÓN',
      'gl': 'Enderezo',
    },
    'tlzfe8ab': {
      'en':
          'Smallfield Avenue & Dolcombe Avenue, Brixton,\nLondon, England, SW9\nFlat / Suite / Floor: 174',
      'es':
          'Avenida Smallfield y Avenida Dolcombe, Brixton,\nLondres, Inglaterra, SW9\nPiso / Suite / Planta: 174',
      'gl':
          'Smallfield Avenue e Dolcombe Avenue, Brixton,\nLondres, Inglaterra, SW9\nPiso/Suite/Planta: 174',
    },
    'ry15zjki': {
      'en': 'Type',
      'es': 'Tipo',
      'gl': 'Tipo',
    },
    'acjbywy1': {
      'en': 'Meet at door',
      'es': 'Reunirse en la puerta',
      'gl': 'Reunímonos na porta',
    },
    '0hdqmjc3': {
      'en': 'Service',
      'es': 'Servicio',
      'gl': 'Servizo',
    },
    'g97xb6se': {
      'en': 'Standard',
      'es': 'Estándar',
      'gl': 'Estándar',
    },
    'ob3buee4': {
      'en': 'Add delivery note',
      'es': 'Añadir albarán de entrega',
      'gl': 'Engadir nota de entrega',
    },
  },
  // AddTipModal
  {
    'u15bptei': {
      'en': 'Add a tip',
      'es': 'Añadir una propina',
      'gl': 'Engade un consello',
    },
    'zfgre1cj': {
      'en':
          '100% of your tip goes to your courier. Tips are based on your order total of £15.81 before any discounts or promotions.',
      'es':
          'El 100% de tu propina va a tu mensajero. Las propinas se basan en el total de su pedido de £ 15,81 antes de cualquier descuento o promoción.',
      'gl':
          'O 100% da túa propina vai ao teu correo. As suxestións baséanse no total do pedido de 15,81 £ antes de calquera desconto ou promoción.',
    },
    'qfoxfnyo': {
      'en': 'Save',
      'es': 'Ahorrar',
      'gl': 'Gardar',
    },
    '8vhvuks9': {
      'en': 'Cancel',
      'es': 'Cancelar',
      'gl': 'Cancelar',
    },
  },
  // OrderItem
  {
    '9uwgt2tp': {
      'en': 'Peri Peri Near Me, Brixton',
      'es': 'Peri Peri cerca de mí, Brixton',
      'gl': 'Peri Peri Near Me, Brixton',
    },
    'ywb1toz7': {
      'en': 'Sponsored',
      'es': 'Patrocinado',
      'gl': 'Patrocinado',
    },
    'pi33mutg': {
      'en': '£2.49 Delivery Fee',
      'es': '£ 2,49 Tarifa de envío',
      'gl': 'Gastos de envío 2,49 €',
    },
    'gmj80lfs': {
      'en': '25-45 min',
      'es': '25-45 minutos',
      'gl': '25-45 min',
    },
  },
  // Navigator
  {
    '743uv1cu': {
      'en': 'Pages',
      'es': 'paginas',
      'gl': 'Páxinas',
    },
    '5kfllkuy': {
      'en': 'About App',
      'es': 'Acerca de la aplicación',
      'gl': 'Sobre a aplicación',
    },
    'z5j3am9b': {
      'en': 'Accept Terms',
      'es': 'Aceptar los terminos',
      'gl': 'Aceptar os termos',
    },
    'q1tcby4b': {
      'en': 'Account',
      'es': 'Cuenta',
      'gl': 'Conta',
    },
    '5vm7iz1f': {
      'en': 'Account Details',
      'es': 'detalles de la cuenta',
      'gl': 'Detalles da conta',
    },
    'xn9d2hxd': {
      'en': 'Account Edit',
      'es': 'Editar cuenta',
      'gl': 'Editar conta',
    },
    't55iiqy2': {
      'en': 'Account - Email Address',
      'es': 'Cuenta de correo electronico',
      'gl': 'Conta - Enderezo de correo electrónico',
    },
    '62kjvs2t': {
      'en': 'Account - Name & Last Name',
      'es': 'Cuenta - Nombre y apellido',
      'gl': 'Conta - Nome e Apelidos',
    },
    'ywasj22a': {
      'en': 'Account - Password',
      'es': 'Cuenta - Contraseña',
      'gl': 'Conta - Contrasinal',
    },
    'jj8j0asb': {
      'en': 'Account - Promotions',
      'es': 'Cuenta - Promociones',
      'gl': 'Conta - Promocións',
    },
    'rr4b8hit': {
      'en': 'Add Address',
      'es': 'Añadir dirección',
      'gl': 'Engadir enderezo',
    },
    'ertushdk': {
      'en': 'Add Code',
      'es': 'Agregar código',
      'gl': 'Engadir código',
    },
    '1gflfl1g': {
      'en': 'Add Credit Card',
      'es': 'Agregar tarjeta de crédito',
      'gl': 'Engadir tarxeta de crédito',
    },
    'xejrwowp': {
      'en': 'Baskets',
      'es': 'Cestas',
      'gl': 'Cestas',
    },
    'frp566o6': {
      'en': 'Basket Your Orders',
      'es': 'Cesta tus pedidos',
      'gl': 'Cesta os teus pedidos',
    },
    'o8g5uw5o': {
      'en': 'Browse',
      'es': 'Navegar',
      'gl': 'Explorar',
    },
    'sq1281ci': {
      'en': 'Courier Details',
      'es': 'Detalles del mensajero',
      'gl': 'Detalles do Courier',
    },
    '1bptjozc': {
      'en': 'Courier Profile',
      'es': 'Perfil de mensajería',
      'gl': 'Perfil do Courier',
    },
    'ygkgah90': {
      'en': 'Cover Order',
      'es': 'Orden de portada',
      'gl': 'Orde de portada',
    },
    '7738edvj': {
      'en': 'Delivery',
      'es': 'Entrega',
      'gl': 'Entrega',
    },
    'os2a0b9i': {
      'en': 'Favorite',
      'es': 'Favorito',
      'gl': 'Favorito',
    },
    'n4ezcvb0': {
      'en': 'Filter',
      'es': 'Filtrar',
      'gl': 'Filtro',
    },
    'j44lq2dm': {
      'en': 'Find Near Food',
      'es': 'Encontrar comida cercana',
      'gl': 'Atopar preto de comida',
    },
    'ewr2yfos': {
      'en': 'Grocery',
      'es': 'Tienda de comestibles',
      'gl': 'Supermercado',
    },
    'hs49cojq': {
      'en': 'Group Order',
      'es': 'Orden de grupo',
      'gl': 'Orde de grupo',
    },
    'ulqolykw': {
      'en': 'Home',
      'es': 'Hogar',
      'gl': 'Casa',
    },
    '7blvq5d7': {
      'en': 'Membership',
      'es': 'Afiliación',
      'gl': 'Membresía',
    },
    '0qas1g54': {
      'en': 'Message',
      'es': 'Mensaje',
      'gl': 'Mensaxe',
    },
    'nzrog9xj': {
      'en': 'Order Details',
      'es': 'Detalles del pedido',
      'gl': 'Detalles do pedido',
    },
    '4j6x9uhf': {
      'en': 'Order Detail Items',
      'es': 'Artículos de detalle del pedido',
      'gl': 'Detalles de pedido de artigos',
    },
    'q7n95rje': {
      'en': 'Order Name',
      'es': 'Nombre del pedido',
      'gl': 'Nome da orde',
    },
    'b577oxri': {
      'en': 'Order Name Details',
      'es': 'Detalles del nombre del pedido',
      'gl': 'Detalles do nome da orde',
    },
    '6cmdyxsc': {
      'en': 'Order Option details',
      'es': 'Detalles de la opción de pedido',
      'gl': 'Detalles da opción de pedido',
    },
    '5j1tdgrx': {
      'en': 'Order Options',
      'es': 'Opciones de pedido',
      'gl': 'Opcións de pedido',
    },
    'phciid7m': {
      'en': 'Order Picked Details',
      'es': 'Detalles del pedido seleccionado',
      'gl': 'Detalles da orde seleccionada',
    },
    'lgt07ekw': {
      'en': 'Order Picked Items',
      'es': 'Ordenar artículos seleccionados',
      'gl': 'Orde de artigos escollidos',
    },
    'sz28g410': {
      'en': 'Payment Method',
      'es': 'Método de pago',
      'gl': 'Método de pago',
    },
    '9osm4o4w': {
      'en': 'Permission Access',
      'es': 'Acceso de permiso',
      'gl': 'Permiso de acceso',
    },
    'hz6qvyfo': {
      'en': 'Pin Code',
      'es': 'Código PIN',
      'gl': 'Código PIN',
    },
    'q6idsks3': {
      'en': 'Popular Restaurants',
      'es': 'Restaurantes populares',
      'gl': 'Restaurantes populares',
    },
    '3a0kz7pq': {
      'en': 'Rate Courier',
      'es': 'Tarifa de mensajería',
      'gl': 'Tarifa Courier',
    },
    'zw0nq40g': {
      'en': 'Restaurant Awards',
      'es': 'Premios de restaurantes',
      'gl': 'Premios Restaurante',
    },
    'awrk44u9': {
      'en': 'Restaurants',
      'es': 'Restaurantes',
      'gl': 'Restaurantes',
    },
    'n7yqp7l8': {
      'en': 'Search',
      'es': 'Buscar',
      'gl': 'Busca',
    },
    '7onyaskz': {
      'en': 'SignUp',
      'es': 'Inscribirse',
      'gl': 'Incribirse',
    },
    't8r3d9yr': {
      'en': 'Speciality Food',
      'es': 'Comida Especial',
      'gl': 'Comida de especialidade',
    },
    's3hxdl01': {
      'en': 'Start',
      'es': 'Comenzar',
      'gl': 'Comeza',
    },
    'g3rwcmyg': {
      'en': 'Store',
      'es': 'Almacenar',
      'gl': 'Tenda',
    },
    'kpo0sqo3': {
      'en': 'Store Info',
      'es': 'Información de la tienda',
      'gl': 'Información da tenda',
    },
    'grmhc3aj': {
      'en': 'Thanks For Rate',
      'es': 'Gracias por calificar',
      'gl': 'Grazas pola taxa',
    },
    'z7ub2gqv': {
      'en': 'Updates',
      'es': 'Actualizaciones',
      'gl': 'Actualizacións',
    },
    'a7lwocym': {
      'en': 'Update Terms',
      'es': 'Actualizar términos',
      'gl': 'Actualizar os termos',
    },
    'kznw086j': {
      'en': 'Verify Password',
      'es': 'Verificar contraseña',
      'gl': 'Verificar Contraseña',
    },
    'grunw1c1': {
      'en': 'Vouchers',
      'es': 'Vales',
      'gl': 'Vales',
    },
    'eblcvjs3': {
      'en': 'Wallet',
      'es': 'Billetera',
      'gl': 'Carteira',
    },
    'd8tr11yd': {
      'en': 'Modals',
      'es': 'modales',
      'gl': 'Modais',
    },
    'jt1zbor7': {
      'en': 'Add Tip Modal',
      'es': 'Agregar modal de propinas',
      'gl': 'Engadir Tip Modal',
    },
    '1jhxkt1t': {
      'en': 'Courier Modal',
      'es': 'Mensajero modal',
      'gl': 'Courier Modal',
    },
    'adc1gu75': {
      'en': 'Update Terms Modal',
      'es': 'Actualizar términos modal',
      'gl': 'Actualizar Condicións Modal',
    },
    'n7b0dp1n': {
      'en': 'Builderking',
      'es': 'constructor',
      'gl': 'Construción',
    },
  },
  // Miscellaneous
  {
    'd9r30xrn': {
      'en': 'Continue',
      'es': 'Continuar',
      'gl': 'Continuar',
    },
    'w9pbl3ww': {
      'en': 'Skip',
      'es': 'Saltar',
      'gl': 'Saltar',
    },
    'k88lkiej': {
      'en': 'Please enter your password',
      'es': 'Por favor, introduzca su contraseña',
      'gl': 'Introduza o seu contrasinal',
    },
    'pmwjmomg': {
      'en': 'name@example.com',
      'es': 'nombre@ejemplo.com',
      'gl': 'nome@exemplo.com',
    },
    'lwibxnc8': {
      'en': 'Business or building name',
      'es': 'Nombre del negocio o edificio',
      'gl': 'Nome da empresa ou edificio',
    },
    '3cio4aei': {
      'en': 'Try for free',
      'es': 'Prueba gratis',
      'gl': 'Proba gratis',
    },
    'f68n2ao6': {
      'en': 'Enter a new address',
      'es': 'Introduzca una nueva dirección',
      'gl': 'Introduce un novo enderezo',
    },
    '64df1dlp': {
      'en': '',
      'es': '',
      'gl': '',
    },
    'g4ax3ycj': {
      'en': '',
      'es': '',
      'gl': '',
    },
    '0brw2pru': {
      'en': '',
      'es': '',
      'gl': '',
    },
    'l44od72g': {
      'en': '',
      'es': '',
      'gl': '',
    },
    't07vp1zo': {
      'en': '',
      'es': '',
      'gl': '',
    },
    'y83vtqsx': {
      'en': '',
      'es': '',
      'gl': '',
    },
    '8dg0rqtk': {
      'en': '',
      'es': '',
      'gl': '',
    },
    '8wvgz5fs': {
      'en': '',
      'es': '',
      'gl': '',
    },
    'p08or3w0': {
      'en': '',
      'es': '',
      'gl': '',
    },
    'o1fiec7u': {
      'en': '',
      'es': '',
      'gl': '',
    },
    'vmw7rpoe': {
      'en': '',
      'es': '',
      'gl': '',
    },
    'kmnpsvdg': {
      'en': '',
      'es': '',
      'gl': '',
    },
    'j6f4yf3h': {
      'en': '',
      'es': '',
      'gl': '',
    },
    '19hqdpmu': {
      'en': '',
      'es': '',
      'gl': '',
    },
    'z0j4lavl': {
      'en': '',
      'es': '',
      'gl': '',
    },
    'c2m7th2t': {
      'en': '',
      'es': '',
      'gl': '',
    },
    'cjpxtgfl': {
      'en': '',
      'es': '',
      'gl': '',
    },
    'i1rmmx0p': {
      'en': '',
      'es': '',
      'gl': '',
    },
    'vvnbvfpk': {
      'en': '',
      'es': '',
      'gl': '',
    },
    'byhsrd6x': {
      'en': '',
      'es': '',
      'gl': '',
    },
    '1t9zc06y': {
      'en': '',
      'es': '',
      'gl': '',
    },
    '8x8lh2lo': {
      'en': '',
      'es': '',
      'gl': '',
    },
    '0w9hfw8m': {
      'en': '',
      'es': '',
      'gl': '',
    },
    '3x278rno': {
      'en': '',
      'es': '',
      'gl': '',
    },
    'uw7v9l9r': {
      'en': '',
      'es': '',
      'gl': '',
    },
    'jl8lrhtn': {
      'en': '',
      'es': '',
      'gl': '',
    },
    '9sknewcb': {
      'en': '',
      'es': '',
      'gl': '',
    },
  },
].reduce((a, b) => a..addAll(b));
