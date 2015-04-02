import "dart:io";
import "package:path/path.dart";
import "package:ebisu/ebisu.dart";
import "package:ebisu/ebisu_dart_meta.dart";
import "package:logging/logging.dart";

String _topDir = dirname(dirname(Platform.script.path));

void main() {

  Logger.root.onRecord.listen((LogRecord r) =>
      print("${r.loggerName} [${r.level}]:\t${r.message}"));
  useDartFormatter = true;
  System ebisu = system('ebisu_cs')
    ..includesHop = true
    ..license = 'boost'
    ..pubSpec.homepage = 'https://github.com/patefacio/ebisu_cs'
    ..pubSpec.version = '0.0.1'
    ..pubSpec.doc = 'A library that supports code generation of cpp and others'
    ..rootPath = _topDir
    ..doc = 'A library that supports code generation of c sharp'
    ..libraries = [
      library('ebisu_cs')
      ..includesLogger = true
      ..imports = [
        'package:id/id.dart',
        'package:ebisu/ebisu.dart',
        'package:quiver/iterables.dart',
        "'package:path/path.dart' as path",
        'dart:io',
        'dart:collection',
      ]
      ..enums = [
        enum_('access')
        ..hasLibraryScopedValues = true
        ..values = [
          enumValue(id('ia'))
          ..doc = '**Inaccessible**. Designates a member that is *private* by default and no accessors',
          enumValue(id('ro'))
          ..doc = '**Read-Only**. Designates a member tht is *private* by default and a read accessor',
          enumValue(id('rw'))
          ..doc = '**Read-Write**. Designates a member tht is *private* by default and both read and write accessors',
          enumValue(id('wo'))
          ..doc = '''
**Write-Only**. Designates a member tht is *private* by default and
write accessor only.  Useful if you want the standard write accessor
but a custom reader.''',
        ],
        enum_('cs_access')
        ..hasLibraryScopedValues = true
        ..values = [
          enumValue(id('public'))
          ..doc = 'C# public designation',
          enumValue(id('protected'))
          ..doc = 'C# protected designation',
          enumValue(id('private'))
          ..doc = 'C# private designation',
          enumValue(id('internal'))
          ..doc = 'C# internal designation',
          enumValue(id('protected_internal'))
          ..doc = 'C# *protected internal* designation',
        ],
      ]
      ..classes = [
        class_('entity')
        ..isAbstract = true
        ..members = [
        ]
      ]
    ];

  ebisu.generate();
}