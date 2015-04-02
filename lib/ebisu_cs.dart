library ebisu_cs.ebisu_cs;

import 'dart:collection';
import 'dart:io';
import 'package:ebisu/ebisu.dart';
import 'package:id/id.dart';
import 'package:logging/logging.dart';
import 'package:path/path.dart' as path;
import 'package:quiver/iterables.dart';
// custom <additional imports>
// end <additional imports>

final _logger = new Logger('ebisu_cs');

enum Access {
  /// **Inaccessible**. Designates a member that is *private* by default and no accessors
  ia,
  /// **Read-Only**. Designates a member tht is *private* by default and a read accessor
  ro,
  /// **Read-Write**. Designates a member tht is *private* by default and both read and write accessors
  rw,
  /// **Write-Only**. Designates a member tht is *private* by default and
  /// write accessor only.  Useful if you want the standard write accessor
  /// but a custom reader.
  wo
}
/// Convenient access to Access.ia with *ia* see [Access].
///
/// **Inaccessible**. Designates a member that is *private* by default and no accessors
///
const Access ia = Access.ia;

/// Convenient access to Access.ro with *ro* see [Access].
///
/// **Read-Only**. Designates a member tht is *private* by default and a read accessor
///
const Access ro = Access.ro;

/// Convenient access to Access.rw with *rw* see [Access].
///
/// **Read-Write**. Designates a member tht is *private* by default and both read and write accessors
///
const Access rw = Access.rw;

/// Convenient access to Access.wo with *wo* see [Access].
///
/// **Write-Only**. Designates a member tht is *private* by default and
/// write accessor only.  Useful if you want the standard write accessor
/// but a custom reader.
///
const Access wo = Access.wo;

enum CsAccess {
  /// C# public designation
  public,
  /// C# protected designation
  protected,
  /// C# private designation
  private,
  /// C# internal designation
  internal,
  /// C# *protected internal* designation
  protectedInternal
}
/// Convenient access to CsAccess.public with *public* see [CsAccess].
///
/// C# public designation
///
const CsAccess public = CsAccess.public;

/// Convenient access to CsAccess.protected with *protected* see [CsAccess].
///
/// C# protected designation
///
const CsAccess protected = CsAccess.protected;

/// Convenient access to CsAccess.private with *private* see [CsAccess].
///
/// C# private designation
///
const CsAccess private = CsAccess.private;

/// Convenient access to CsAccess.internal with *internal* see [CsAccess].
///
/// C# internal designation
///
const CsAccess internal = CsAccess.internal;

/// Convenient access to CsAccess.protectedInternal with *protectedInternal* see [CsAccess].
///
/// C# *protected internal* designation
///
const CsAccess protectedInternal = CsAccess.protectedInternal;

abstract class Entity {
  // custom <class Entity>
  // end <class Entity>
}

// custom <library ebisu_cs>
// end <library ebisu_cs>
