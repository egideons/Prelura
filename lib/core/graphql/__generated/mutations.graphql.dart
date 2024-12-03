import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'schema.graphql.dart';

class Variables$Mutation$Login {
  factory Variables$Mutation$Login({
    required String password,
    String? username,
  }) =>
      Variables$Mutation$Login._({
        r'password': password,
        if (username != null) r'username': username,
      });

  Variables$Mutation$Login._(this._$data);

  factory Variables$Mutation$Login.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    if (data.containsKey('username')) {
      final l$username = data['username'];
      result$data['username'] = (l$username as String?);
    }
    return Variables$Mutation$Login._(result$data);
  }

  Map<String, dynamic> _$data;

  String get password => (_$data['password'] as String);

  String? get username => (_$data['username'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$password = password;
    result$data['password'] = l$password;
    if (_$data.containsKey('username')) {
      final l$username = username;
      result$data['username'] = l$username;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$Login<Variables$Mutation$Login> get copyWith =>
      CopyWith$Variables$Mutation$Login(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$Login ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (_$data.containsKey('username') !=
        other._$data.containsKey('username')) {
      return false;
    }
    if (l$username != lOther$username) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$password = password;
    final l$username = username;
    return Object.hashAll([
      l$password,
      _$data.containsKey('username') ? l$username : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$Login<TRes> {
  factory CopyWith$Variables$Mutation$Login(
    Variables$Mutation$Login instance,
    TRes Function(Variables$Mutation$Login) then,
  ) = _CopyWithImpl$Variables$Mutation$Login;

  factory CopyWith$Variables$Mutation$Login.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$Login;

  TRes call({
    String? password,
    String? username,
  });
}

class _CopyWithImpl$Variables$Mutation$Login<TRes>
    implements CopyWith$Variables$Mutation$Login<TRes> {
  _CopyWithImpl$Variables$Mutation$Login(
    this._instance,
    this._then,
  );

  final Variables$Mutation$Login _instance;

  final TRes Function(Variables$Mutation$Login) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? password = _undefined,
    Object? username = _undefined,
  }) =>
      _then(Variables$Mutation$Login._({
        ..._instance._$data,
        if (password != _undefined && password != null)
          'password': (password as String),
        if (username != _undefined) 'username': (username as String?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$Login<TRes>
    implements CopyWith$Variables$Mutation$Login<TRes> {
  _CopyWithStubImpl$Variables$Mutation$Login(this._res);

  TRes _res;

  call({
    String? password,
    String? username,
  }) =>
      _res;
}

class Mutation$Login {
  Mutation$Login({
    this.login,
    this.$__typename = 'Mutation',
  });

  factory Mutation$Login.fromJson(Map<String, dynamic> json) {
    final l$login = json['login'];
    final l$$__typename = json['__typename'];
    return Mutation$Login(
      login: l$login == null
          ? null
          : Mutation$Login$login.fromJson((l$login as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$Login$login? login;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$login = login;
    _resultData['login'] = l$login?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$login = login;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$login,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$Login || runtimeType != other.runtimeType) {
      return false;
    }
    final l$login = login;
    final lOther$login = other.login;
    if (l$login != lOther$login) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$Login on Mutation$Login {
  CopyWith$Mutation$Login<Mutation$Login> get copyWith =>
      CopyWith$Mutation$Login(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$Login<TRes> {
  factory CopyWith$Mutation$Login(
    Mutation$Login instance,
    TRes Function(Mutation$Login) then,
  ) = _CopyWithImpl$Mutation$Login;

  factory CopyWith$Mutation$Login.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Login;

  TRes call({
    Mutation$Login$login? login,
    String? $__typename,
  });
  CopyWith$Mutation$Login$login<TRes> get login;
}

class _CopyWithImpl$Mutation$Login<TRes>
    implements CopyWith$Mutation$Login<TRes> {
  _CopyWithImpl$Mutation$Login(
    this._instance,
    this._then,
  );

  final Mutation$Login _instance;

  final TRes Function(Mutation$Login) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? login = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Login(
        login: login == _undefined
            ? _instance.login
            : (login as Mutation$Login$login?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$Login$login<TRes> get login {
    final local$login = _instance.login;
    return local$login == null
        ? CopyWith$Mutation$Login$login.stub(_then(_instance))
        : CopyWith$Mutation$Login$login(local$login, (e) => call(login: e));
  }
}

class _CopyWithStubImpl$Mutation$Login<TRes>
    implements CopyWith$Mutation$Login<TRes> {
  _CopyWithStubImpl$Mutation$Login(this._res);

  TRes _res;

  call({
    Mutation$Login$login? login,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$Login$login<TRes> get login =>
      CopyWith$Mutation$Login$login.stub(_res);
}

const documentNodeMutationLogin = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'Login'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'password')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'username')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'login'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'password'),
            value: VariableNode(name: NameNode(value: 'password')),
          ),
          ArgumentNode(
            name: NameNode(value: 'username'),
            value: VariableNode(name: NameNode(value: 'username')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'restToken'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'token'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$Login _parserFn$Mutation$Login(Map<String, dynamic> data) =>
    Mutation$Login.fromJson(data);
typedef OnMutationCompleted$Mutation$Login = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$Login?,
);

class Options$Mutation$Login extends graphql.MutationOptions<Mutation$Login> {
  Options$Mutation$Login({
    String? operationName,
    required Variables$Mutation$Login variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Login? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$Login? onCompleted,
    graphql.OnMutationUpdate<Mutation$Login>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$Login(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationLogin,
          parserFn: _parserFn$Mutation$Login,
        );

  final OnMutationCompleted$Mutation$Login? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$Login
    extends graphql.WatchQueryOptions<Mutation$Login> {
  WatchOptions$Mutation$Login({
    String? operationName,
    required Variables$Mutation$Login variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Login? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationLogin,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$Login,
        );
}

extension ClientExtension$Mutation$Login on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$Login>> mutate$Login(
          Options$Mutation$Login options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$Login> watchMutation$Login(
          WatchOptions$Mutation$Login options) =>
      this.watchMutation(options);
}

class Mutation$Login$login {
  Mutation$Login$login({
    this.restToken,
    this.token,
    this.$__typename = 'LoginMutation',
  });

  factory Mutation$Login$login.fromJson(Map<String, dynamic> json) {
    final l$restToken = json['restToken'];
    final l$token = json['token'];
    final l$$__typename = json['__typename'];
    return Mutation$Login$login(
      restToken: (l$restToken as String?),
      token: (l$token as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? restToken;

  final String? token;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$restToken = restToken;
    _resultData['restToken'] = l$restToken;
    final l$token = token;
    _resultData['token'] = l$token;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$restToken = restToken;
    final l$token = token;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$restToken,
      l$token,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$Login$login || runtimeType != other.runtimeType) {
      return false;
    }
    final l$restToken = restToken;
    final lOther$restToken = other.restToken;
    if (l$restToken != lOther$restToken) {
      return false;
    }
    final l$token = token;
    final lOther$token = other.token;
    if (l$token != lOther$token) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$Login$login on Mutation$Login$login {
  CopyWith$Mutation$Login$login<Mutation$Login$login> get copyWith =>
      CopyWith$Mutation$Login$login(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$Login$login<TRes> {
  factory CopyWith$Mutation$Login$login(
    Mutation$Login$login instance,
    TRes Function(Mutation$Login$login) then,
  ) = _CopyWithImpl$Mutation$Login$login;

  factory CopyWith$Mutation$Login$login.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Login$login;

  TRes call({
    String? restToken,
    String? token,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$Login$login<TRes>
    implements CopyWith$Mutation$Login$login<TRes> {
  _CopyWithImpl$Mutation$Login$login(
    this._instance,
    this._then,
  );

  final Mutation$Login$login _instance;

  final TRes Function(Mutation$Login$login) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? restToken = _undefined,
    Object? token = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Login$login(
        restToken: restToken == _undefined
            ? _instance.restToken
            : (restToken as String?),
        token: token == _undefined ? _instance.token : (token as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$Login$login<TRes>
    implements CopyWith$Mutation$Login$login<TRes> {
  _CopyWithStubImpl$Mutation$Login$login(this._res);

  TRes _res;

  call({
    String? restToken,
    String? token,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$Register {
  factory Variables$Mutation$Register({
    String? displayName,
    DateTime? dob,
    required String email,
    required String firstName,
    required String lastName,
    required String password1,
    required String password2,
    required String username,
  }) =>
      Variables$Mutation$Register._({
        if (displayName != null) r'displayName': displayName,
        if (dob != null) r'dob': dob,
        r'email': email,
        r'firstName': firstName,
        r'lastName': lastName,
        r'password1': password1,
        r'password2': password2,
        r'username': username,
      });

  Variables$Mutation$Register._(this._$data);

  factory Variables$Mutation$Register.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('displayName')) {
      final l$displayName = data['displayName'];
      result$data['displayName'] = (l$displayName as String?);
    }
    if (data.containsKey('dob')) {
      final l$dob = data['dob'];
      result$data['dob'] =
          l$dob == null ? null : DateTime.parse((l$dob as String));
    }
    final l$email = data['email'];
    result$data['email'] = (l$email as String);
    final l$firstName = data['firstName'];
    result$data['firstName'] = (l$firstName as String);
    final l$lastName = data['lastName'];
    result$data['lastName'] = (l$lastName as String);
    final l$password1 = data['password1'];
    result$data['password1'] = (l$password1 as String);
    final l$password2 = data['password2'];
    result$data['password2'] = (l$password2 as String);
    final l$username = data['username'];
    result$data['username'] = (l$username as String);
    return Variables$Mutation$Register._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get displayName => (_$data['displayName'] as String?);

  DateTime? get dob => (_$data['dob'] as DateTime?);

  String get email => (_$data['email'] as String);

  String get firstName => (_$data['firstName'] as String);

  String get lastName => (_$data['lastName'] as String);

  String get password1 => (_$data['password1'] as String);

  String get password2 => (_$data['password2'] as String);

  String get username => (_$data['username'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('displayName')) {
      final l$displayName = displayName;
      result$data['displayName'] = l$displayName;
    }
    if (_$data.containsKey('dob')) {
      final l$dob = dob;
      result$data['dob'] = l$dob?.toIso8601String();
    }
    final l$email = email;
    result$data['email'] = l$email;
    final l$firstName = firstName;
    result$data['firstName'] = l$firstName;
    final l$lastName = lastName;
    result$data['lastName'] = l$lastName;
    final l$password1 = password1;
    result$data['password1'] = l$password1;
    final l$password2 = password2;
    result$data['password2'] = l$password2;
    final l$username = username;
    result$data['username'] = l$username;
    return result$data;
  }

  CopyWith$Variables$Mutation$Register<Variables$Mutation$Register>
      get copyWith => CopyWith$Variables$Mutation$Register(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$Register ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$displayName = displayName;
    final lOther$displayName = other.displayName;
    if (_$data.containsKey('displayName') !=
        other._$data.containsKey('displayName')) {
      return false;
    }
    if (l$displayName != lOther$displayName) {
      return false;
    }
    final l$dob = dob;
    final lOther$dob = other.dob;
    if (_$data.containsKey('dob') != other._$data.containsKey('dob')) {
      return false;
    }
    if (l$dob != lOther$dob) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$password1 = password1;
    final lOther$password1 = other.password1;
    if (l$password1 != lOther$password1) {
      return false;
    }
    final l$password2 = password2;
    final lOther$password2 = other.password2;
    if (l$password2 != lOther$password2) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$displayName = displayName;
    final l$dob = dob;
    final l$email = email;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$password1 = password1;
    final l$password2 = password2;
    final l$username = username;
    return Object.hashAll([
      _$data.containsKey('displayName') ? l$displayName : const {},
      _$data.containsKey('dob') ? l$dob : const {},
      l$email,
      l$firstName,
      l$lastName,
      l$password1,
      l$password2,
      l$username,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$Register<TRes> {
  factory CopyWith$Variables$Mutation$Register(
    Variables$Mutation$Register instance,
    TRes Function(Variables$Mutation$Register) then,
  ) = _CopyWithImpl$Variables$Mutation$Register;

  factory CopyWith$Variables$Mutation$Register.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$Register;

  TRes call({
    String? displayName,
    DateTime? dob,
    String? email,
    String? firstName,
    String? lastName,
    String? password1,
    String? password2,
    String? username,
  });
}

class _CopyWithImpl$Variables$Mutation$Register<TRes>
    implements CopyWith$Variables$Mutation$Register<TRes> {
  _CopyWithImpl$Variables$Mutation$Register(
    this._instance,
    this._then,
  );

  final Variables$Mutation$Register _instance;

  final TRes Function(Variables$Mutation$Register) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? displayName = _undefined,
    Object? dob = _undefined,
    Object? email = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? password1 = _undefined,
    Object? password2 = _undefined,
    Object? username = _undefined,
  }) =>
      _then(Variables$Mutation$Register._({
        ..._instance._$data,
        if (displayName != _undefined) 'displayName': (displayName as String?),
        if (dob != _undefined) 'dob': (dob as DateTime?),
        if (email != _undefined && email != null) 'email': (email as String),
        if (firstName != _undefined && firstName != null)
          'firstName': (firstName as String),
        if (lastName != _undefined && lastName != null)
          'lastName': (lastName as String),
        if (password1 != _undefined && password1 != null)
          'password1': (password1 as String),
        if (password2 != _undefined && password2 != null)
          'password2': (password2 as String),
        if (username != _undefined && username != null)
          'username': (username as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$Register<TRes>
    implements CopyWith$Variables$Mutation$Register<TRes> {
  _CopyWithStubImpl$Variables$Mutation$Register(this._res);

  TRes _res;

  call({
    String? displayName,
    DateTime? dob,
    String? email,
    String? firstName,
    String? lastName,
    String? password1,
    String? password2,
    String? username,
  }) =>
      _res;
}

class Mutation$Register {
  Mutation$Register({
    this.register,
    this.$__typename = 'Mutation',
  });

  factory Mutation$Register.fromJson(Map<String, dynamic> json) {
    final l$register = json['register'];
    final l$$__typename = json['__typename'];
    return Mutation$Register(
      register: l$register == null
          ? null
          : Mutation$Register$register.fromJson(
              (l$register as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$Register$register? register;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$register = register;
    _resultData['register'] = l$register?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$register = register;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$register,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$Register || runtimeType != other.runtimeType) {
      return false;
    }
    final l$register = register;
    final lOther$register = other.register;
    if (l$register != lOther$register) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$Register on Mutation$Register {
  CopyWith$Mutation$Register<Mutation$Register> get copyWith =>
      CopyWith$Mutation$Register(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$Register<TRes> {
  factory CopyWith$Mutation$Register(
    Mutation$Register instance,
    TRes Function(Mutation$Register) then,
  ) = _CopyWithImpl$Mutation$Register;

  factory CopyWith$Mutation$Register.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Register;

  TRes call({
    Mutation$Register$register? register,
    String? $__typename,
  });
  CopyWith$Mutation$Register$register<TRes> get register;
}

class _CopyWithImpl$Mutation$Register<TRes>
    implements CopyWith$Mutation$Register<TRes> {
  _CopyWithImpl$Mutation$Register(
    this._instance,
    this._then,
  );

  final Mutation$Register _instance;

  final TRes Function(Mutation$Register) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? register = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Register(
        register: register == _undefined
            ? _instance.register
            : (register as Mutation$Register$register?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$Register$register<TRes> get register {
    final local$register = _instance.register;
    return local$register == null
        ? CopyWith$Mutation$Register$register.stub(_then(_instance))
        : CopyWith$Mutation$Register$register(
            local$register, (e) => call(register: e));
  }
}

class _CopyWithStubImpl$Mutation$Register<TRes>
    implements CopyWith$Mutation$Register<TRes> {
  _CopyWithStubImpl$Mutation$Register(this._res);

  TRes _res;

  call({
    Mutation$Register$register? register,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$Register$register<TRes> get register =>
      CopyWith$Mutation$Register$register.stub(_res);
}

const documentNodeMutationRegister = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'Register'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'displayName')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'dob')),
        type: NamedTypeNode(
          name: NameNode(value: 'Date'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'email')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'firstName')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'lastName')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'password1')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'password2')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'username')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'register'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'displayName'),
            value: VariableNode(name: NameNode(value: 'displayName')),
          ),
          ArgumentNode(
            name: NameNode(value: 'dob'),
            value: VariableNode(name: NameNode(value: 'dob')),
          ),
          ArgumentNode(
            name: NameNode(value: 'email'),
            value: VariableNode(name: NameNode(value: 'email')),
          ),
          ArgumentNode(
            name: NameNode(value: 'firstName'),
            value: VariableNode(name: NameNode(value: 'firstName')),
          ),
          ArgumentNode(
            name: NameNode(value: 'lastName'),
            value: VariableNode(name: NameNode(value: 'lastName')),
          ),
          ArgumentNode(
            name: NameNode(value: 'password1'),
            value: VariableNode(name: NameNode(value: 'password1')),
          ),
          ArgumentNode(
            name: NameNode(value: 'password2'),
            value: VariableNode(name: NameNode(value: 'password2')),
          ),
          ArgumentNode(
            name: NameNode(value: 'username'),
            value: VariableNode(name: NameNode(value: 'username')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'success'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'errors'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$Register _parserFn$Mutation$Register(Map<String, dynamic> data) =>
    Mutation$Register.fromJson(data);
typedef OnMutationCompleted$Mutation$Register = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$Register?,
);

class Options$Mutation$Register
    extends graphql.MutationOptions<Mutation$Register> {
  Options$Mutation$Register({
    String? operationName,
    required Variables$Mutation$Register variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Register? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$Register? onCompleted,
    graphql.OnMutationUpdate<Mutation$Register>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$Register(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationRegister,
          parserFn: _parserFn$Mutation$Register,
        );

  final OnMutationCompleted$Mutation$Register? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$Register
    extends graphql.WatchQueryOptions<Mutation$Register> {
  WatchOptions$Mutation$Register({
    String? operationName,
    required Variables$Mutation$Register variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Register? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationRegister,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$Register,
        );
}

extension ClientExtension$Mutation$Register on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$Register>> mutate$Register(
          Options$Mutation$Register options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$Register> watchMutation$Register(
          WatchOptions$Mutation$Register options) =>
      this.watchMutation(options);
}

class Mutation$Register$register {
  Mutation$Register$register({
    this.success,
    this.errors,
    this.$__typename = 'NewRegister',
  });

  factory Mutation$Register$register.fromJson(Map<String, dynamic> json) {
    final l$success = json['success'];
    final l$errors = json['errors'];
    final l$$__typename = json['__typename'];
    return Mutation$Register$register(
      success: (l$success as bool?),
      errors: (l$errors as Map<String, dynamic>?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool? success;

  final Map<String, dynamic>? errors;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$success = success;
    _resultData['success'] = l$success;
    final l$errors = errors;
    _resultData['errors'] = l$errors;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$success = success;
    final l$errors = errors;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$success,
      l$errors,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$Register$register ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$success = success;
    final lOther$success = other.success;
    if (l$success != lOther$success) {
      return false;
    }
    final l$errors = errors;
    final lOther$errors = other.errors;
    if (l$errors != lOther$errors) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$Register$register
    on Mutation$Register$register {
  CopyWith$Mutation$Register$register<Mutation$Register$register>
      get copyWith => CopyWith$Mutation$Register$register(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$Register$register<TRes> {
  factory CopyWith$Mutation$Register$register(
    Mutation$Register$register instance,
    TRes Function(Mutation$Register$register) then,
  ) = _CopyWithImpl$Mutation$Register$register;

  factory CopyWith$Mutation$Register$register.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Register$register;

  TRes call({
    bool? success,
    Map<String, dynamic>? errors,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$Register$register<TRes>
    implements CopyWith$Mutation$Register$register<TRes> {
  _CopyWithImpl$Mutation$Register$register(
    this._instance,
    this._then,
  );

  final Mutation$Register$register _instance;

  final TRes Function(Mutation$Register$register) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? success = _undefined,
    Object? errors = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Register$register(
        success: success == _undefined ? _instance.success : (success as bool?),
        errors: errors == _undefined
            ? _instance.errors
            : (errors as Map<String, dynamic>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$Register$register<TRes>
    implements CopyWith$Mutation$Register$register<TRes> {
  _CopyWithStubImpl$Mutation$Register$register(this._res);

  TRes _res;

  call({
    bool? success,
    Map<String, dynamic>? errors,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$Logout {
  Mutation$Logout({
    this.logout,
    this.$__typename = 'Mutation',
  });

  factory Mutation$Logout.fromJson(Map<String, dynamic> json) {
    final l$logout = json['logout'];
    final l$$__typename = json['__typename'];
    return Mutation$Logout(
      logout: l$logout == null
          ? null
          : Mutation$Logout$logout.fromJson((l$logout as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$Logout$logout? logout;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$logout = logout;
    _resultData['logout'] = l$logout?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$logout = logout;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$logout,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$Logout || runtimeType != other.runtimeType) {
      return false;
    }
    final l$logout = logout;
    final lOther$logout = other.logout;
    if (l$logout != lOther$logout) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$Logout on Mutation$Logout {
  CopyWith$Mutation$Logout<Mutation$Logout> get copyWith =>
      CopyWith$Mutation$Logout(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$Logout<TRes> {
  factory CopyWith$Mutation$Logout(
    Mutation$Logout instance,
    TRes Function(Mutation$Logout) then,
  ) = _CopyWithImpl$Mutation$Logout;

  factory CopyWith$Mutation$Logout.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Logout;

  TRes call({
    Mutation$Logout$logout? logout,
    String? $__typename,
  });
  CopyWith$Mutation$Logout$logout<TRes> get logout;
}

class _CopyWithImpl$Mutation$Logout<TRes>
    implements CopyWith$Mutation$Logout<TRes> {
  _CopyWithImpl$Mutation$Logout(
    this._instance,
    this._then,
  );

  final Mutation$Logout _instance;

  final TRes Function(Mutation$Logout) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? logout = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Logout(
        logout: logout == _undefined
            ? _instance.logout
            : (logout as Mutation$Logout$logout?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$Logout$logout<TRes> get logout {
    final local$logout = _instance.logout;
    return local$logout == null
        ? CopyWith$Mutation$Logout$logout.stub(_then(_instance))
        : CopyWith$Mutation$Logout$logout(local$logout, (e) => call(logout: e));
  }
}

class _CopyWithStubImpl$Mutation$Logout<TRes>
    implements CopyWith$Mutation$Logout<TRes> {
  _CopyWithStubImpl$Mutation$Logout(this._res);

  TRes _res;

  call({
    Mutation$Logout$logout? logout,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$Logout$logout<TRes> get logout =>
      CopyWith$Mutation$Logout$logout.stub(_res);
}

const documentNodeMutationLogout = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'Logout'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'logout'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'message'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$Logout _parserFn$Mutation$Logout(Map<String, dynamic> data) =>
    Mutation$Logout.fromJson(data);
typedef OnMutationCompleted$Mutation$Logout = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$Logout?,
);

class Options$Mutation$Logout extends graphql.MutationOptions<Mutation$Logout> {
  Options$Mutation$Logout({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Logout? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$Logout? onCompleted,
    graphql.OnMutationUpdate<Mutation$Logout>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$Logout(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationLogout,
          parserFn: _parserFn$Mutation$Logout,
        );

  final OnMutationCompleted$Mutation$Logout? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$Logout
    extends graphql.WatchQueryOptions<Mutation$Logout> {
  WatchOptions$Mutation$Logout({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Logout? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationLogout,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$Logout,
        );
}

extension ClientExtension$Mutation$Logout on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$Logout>> mutate$Logout(
          [Options$Mutation$Logout? options]) async =>
      await this.mutate(options ?? Options$Mutation$Logout());
  graphql.ObservableQuery<Mutation$Logout> watchMutation$Logout(
          [WatchOptions$Mutation$Logout? options]) =>
      this.watchMutation(options ?? WatchOptions$Mutation$Logout());
}

class Mutation$Logout$logout {
  Mutation$Logout$logout({
    this.message,
    this.$__typename = 'LogoutMutation',
  });

  factory Mutation$Logout$logout.fromJson(Map<String, dynamic> json) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$Logout$logout(
      message: (l$message as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? message;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$message = message;
    _resultData['message'] = l$message;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$message = message;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$message,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$Logout$logout || runtimeType != other.runtimeType) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$Logout$logout on Mutation$Logout$logout {
  CopyWith$Mutation$Logout$logout<Mutation$Logout$logout> get copyWith =>
      CopyWith$Mutation$Logout$logout(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$Logout$logout<TRes> {
  factory CopyWith$Mutation$Logout$logout(
    Mutation$Logout$logout instance,
    TRes Function(Mutation$Logout$logout) then,
  ) = _CopyWithImpl$Mutation$Logout$logout;

  factory CopyWith$Mutation$Logout$logout.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Logout$logout;

  TRes call({
    String? message,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$Logout$logout<TRes>
    implements CopyWith$Mutation$Logout$logout<TRes> {
  _CopyWithImpl$Mutation$Logout$logout(
    this._instance,
    this._then,
  );

  final Mutation$Logout$logout _instance;

  final TRes Function(Mutation$Logout$logout) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Logout$logout(
        message:
            message == _undefined ? _instance.message : (message as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$Logout$logout<TRes>
    implements CopyWith$Mutation$Logout$logout<TRes> {
  _CopyWithStubImpl$Mutation$Logout$logout(this._res);

  TRes _res;

  call({
    String? message,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$TokenAuth {
  factory Variables$Mutation$TokenAuth({
    String? email,
    required String password,
    required String username,
  }) =>
      Variables$Mutation$TokenAuth._({
        if (email != null) r'email': email,
        r'password': password,
        r'username': username,
      });

  Variables$Mutation$TokenAuth._(this._$data);

  factory Variables$Mutation$TokenAuth.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String?);
    }
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    final l$username = data['username'];
    result$data['username'] = (l$username as String);
    return Variables$Mutation$TokenAuth._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get email => (_$data['email'] as String?);

  String get password => (_$data['password'] as String);

  String get username => (_$data['username'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email;
    }
    final l$password = password;
    result$data['password'] = l$password;
    final l$username = username;
    result$data['username'] = l$username;
    return result$data;
  }

  CopyWith$Variables$Mutation$TokenAuth<Variables$Mutation$TokenAuth>
      get copyWith => CopyWith$Variables$Mutation$TokenAuth(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$TokenAuth ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$email = email;
    final l$password = password;
    final l$username = username;
    return Object.hashAll([
      _$data.containsKey('email') ? l$email : const {},
      l$password,
      l$username,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$TokenAuth<TRes> {
  factory CopyWith$Variables$Mutation$TokenAuth(
    Variables$Mutation$TokenAuth instance,
    TRes Function(Variables$Mutation$TokenAuth) then,
  ) = _CopyWithImpl$Variables$Mutation$TokenAuth;

  factory CopyWith$Variables$Mutation$TokenAuth.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$TokenAuth;

  TRes call({
    String? email,
    String? password,
    String? username,
  });
}

class _CopyWithImpl$Variables$Mutation$TokenAuth<TRes>
    implements CopyWith$Variables$Mutation$TokenAuth<TRes> {
  _CopyWithImpl$Variables$Mutation$TokenAuth(
    this._instance,
    this._then,
  );

  final Variables$Mutation$TokenAuth _instance;

  final TRes Function(Variables$Mutation$TokenAuth) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? email = _undefined,
    Object? password = _undefined,
    Object? username = _undefined,
  }) =>
      _then(Variables$Mutation$TokenAuth._({
        ..._instance._$data,
        if (email != _undefined) 'email': (email as String?),
        if (password != _undefined && password != null)
          'password': (password as String),
        if (username != _undefined && username != null)
          'username': (username as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$TokenAuth<TRes>
    implements CopyWith$Variables$Mutation$TokenAuth<TRes> {
  _CopyWithStubImpl$Variables$Mutation$TokenAuth(this._res);

  TRes _res;

  call({
    String? email,
    String? password,
    String? username,
  }) =>
      _res;
}

class Mutation$TokenAuth {
  Mutation$TokenAuth({
    this.tokenAuth,
    this.$__typename = 'Mutation',
  });

  factory Mutation$TokenAuth.fromJson(Map<String, dynamic> json) {
    final l$tokenAuth = json['tokenAuth'];
    final l$$__typename = json['__typename'];
    return Mutation$TokenAuth(
      tokenAuth: l$tokenAuth == null
          ? null
          : Mutation$TokenAuth$tokenAuth.fromJson(
              (l$tokenAuth as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$TokenAuth$tokenAuth? tokenAuth;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$tokenAuth = tokenAuth;
    _resultData['tokenAuth'] = l$tokenAuth?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$tokenAuth = tokenAuth;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$tokenAuth,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$TokenAuth || runtimeType != other.runtimeType) {
      return false;
    }
    final l$tokenAuth = tokenAuth;
    final lOther$tokenAuth = other.tokenAuth;
    if (l$tokenAuth != lOther$tokenAuth) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$TokenAuth on Mutation$TokenAuth {
  CopyWith$Mutation$TokenAuth<Mutation$TokenAuth> get copyWith =>
      CopyWith$Mutation$TokenAuth(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TokenAuth<TRes> {
  factory CopyWith$Mutation$TokenAuth(
    Mutation$TokenAuth instance,
    TRes Function(Mutation$TokenAuth) then,
  ) = _CopyWithImpl$Mutation$TokenAuth;

  factory CopyWith$Mutation$TokenAuth.stub(TRes res) =
      _CopyWithStubImpl$Mutation$TokenAuth;

  TRes call({
    Mutation$TokenAuth$tokenAuth? tokenAuth,
    String? $__typename,
  });
  CopyWith$Mutation$TokenAuth$tokenAuth<TRes> get tokenAuth;
}

class _CopyWithImpl$Mutation$TokenAuth<TRes>
    implements CopyWith$Mutation$TokenAuth<TRes> {
  _CopyWithImpl$Mutation$TokenAuth(
    this._instance,
    this._then,
  );

  final Mutation$TokenAuth _instance;

  final TRes Function(Mutation$TokenAuth) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? tokenAuth = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$TokenAuth(
        tokenAuth: tokenAuth == _undefined
            ? _instance.tokenAuth
            : (tokenAuth as Mutation$TokenAuth$tokenAuth?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$TokenAuth$tokenAuth<TRes> get tokenAuth {
    final local$tokenAuth = _instance.tokenAuth;
    return local$tokenAuth == null
        ? CopyWith$Mutation$TokenAuth$tokenAuth.stub(_then(_instance))
        : CopyWith$Mutation$TokenAuth$tokenAuth(
            local$tokenAuth, (e) => call(tokenAuth: e));
  }
}

class _CopyWithStubImpl$Mutation$TokenAuth<TRes>
    implements CopyWith$Mutation$TokenAuth<TRes> {
  _CopyWithStubImpl$Mutation$TokenAuth(this._res);

  TRes _res;

  call({
    Mutation$TokenAuth$tokenAuth? tokenAuth,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$TokenAuth$tokenAuth<TRes> get tokenAuth =>
      CopyWith$Mutation$TokenAuth$tokenAuth.stub(_res);
}

const documentNodeMutationTokenAuth = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'TokenAuth'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'email')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'password')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'username')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'tokenAuth'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'email'),
            value: VariableNode(name: NameNode(value: 'email')),
          ),
          ArgumentNode(
            name: NameNode(value: 'password'),
            value: VariableNode(name: NameNode(value: 'password')),
          ),
          ArgumentNode(
            name: NameNode(value: 'username'),
            value: VariableNode(name: NameNode(value: 'username')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'token'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'payload'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'refreshExpiresIn'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$TokenAuth _parserFn$Mutation$TokenAuth(Map<String, dynamic> data) =>
    Mutation$TokenAuth.fromJson(data);
typedef OnMutationCompleted$Mutation$TokenAuth = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$TokenAuth?,
);

class Options$Mutation$TokenAuth
    extends graphql.MutationOptions<Mutation$TokenAuth> {
  Options$Mutation$TokenAuth({
    String? operationName,
    required Variables$Mutation$TokenAuth variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$TokenAuth? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$TokenAuth? onCompleted,
    graphql.OnMutationUpdate<Mutation$TokenAuth>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$TokenAuth(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationTokenAuth,
          parserFn: _parserFn$Mutation$TokenAuth,
        );

  final OnMutationCompleted$Mutation$TokenAuth? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$TokenAuth
    extends graphql.WatchQueryOptions<Mutation$TokenAuth> {
  WatchOptions$Mutation$TokenAuth({
    String? operationName,
    required Variables$Mutation$TokenAuth variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$TokenAuth? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationTokenAuth,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$TokenAuth,
        );
}

extension ClientExtension$Mutation$TokenAuth on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$TokenAuth>> mutate$TokenAuth(
          Options$Mutation$TokenAuth options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$TokenAuth> watchMutation$TokenAuth(
          WatchOptions$Mutation$TokenAuth options) =>
      this.watchMutation(options);
}

class Mutation$TokenAuth$tokenAuth {
  Mutation$TokenAuth$tokenAuth({
    required this.token,
    required this.payload,
    required this.refreshExpiresIn,
    this.$__typename = 'NewObtainJSONWebToken',
  });

  factory Mutation$TokenAuth$tokenAuth.fromJson(Map<String, dynamic> json) {
    final l$token = json['token'];
    final l$payload = json['payload'];
    final l$refreshExpiresIn = json['refreshExpiresIn'];
    final l$$__typename = json['__typename'];
    return Mutation$TokenAuth$tokenAuth(
      token: (l$token as String),
      payload: (l$payload as dynamic),
      refreshExpiresIn: (l$refreshExpiresIn as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String token;

  final dynamic payload;

  final int refreshExpiresIn;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$token = token;
    _resultData['token'] = l$token;
    final l$payload = payload;
    _resultData['payload'] = l$payload;
    final l$refreshExpiresIn = refreshExpiresIn;
    _resultData['refreshExpiresIn'] = l$refreshExpiresIn;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$token = token;
    final l$payload = payload;
    final l$refreshExpiresIn = refreshExpiresIn;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$token,
      l$payload,
      l$refreshExpiresIn,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$TokenAuth$tokenAuth ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$token = token;
    final lOther$token = other.token;
    if (l$token != lOther$token) {
      return false;
    }
    final l$payload = payload;
    final lOther$payload = other.payload;
    if (l$payload != lOther$payload) {
      return false;
    }
    final l$refreshExpiresIn = refreshExpiresIn;
    final lOther$refreshExpiresIn = other.refreshExpiresIn;
    if (l$refreshExpiresIn != lOther$refreshExpiresIn) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$TokenAuth$tokenAuth
    on Mutation$TokenAuth$tokenAuth {
  CopyWith$Mutation$TokenAuth$tokenAuth<Mutation$TokenAuth$tokenAuth>
      get copyWith => CopyWith$Mutation$TokenAuth$tokenAuth(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$TokenAuth$tokenAuth<TRes> {
  factory CopyWith$Mutation$TokenAuth$tokenAuth(
    Mutation$TokenAuth$tokenAuth instance,
    TRes Function(Mutation$TokenAuth$tokenAuth) then,
  ) = _CopyWithImpl$Mutation$TokenAuth$tokenAuth;

  factory CopyWith$Mutation$TokenAuth$tokenAuth.stub(TRes res) =
      _CopyWithStubImpl$Mutation$TokenAuth$tokenAuth;

  TRes call({
    String? token,
    dynamic? payload,
    int? refreshExpiresIn,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$TokenAuth$tokenAuth<TRes>
    implements CopyWith$Mutation$TokenAuth$tokenAuth<TRes> {
  _CopyWithImpl$Mutation$TokenAuth$tokenAuth(
    this._instance,
    this._then,
  );

  final Mutation$TokenAuth$tokenAuth _instance;

  final TRes Function(Mutation$TokenAuth$tokenAuth) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? token = _undefined,
    Object? payload = _undefined,
    Object? refreshExpiresIn = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$TokenAuth$tokenAuth(
        token: token == _undefined || token == null
            ? _instance.token
            : (token as String),
        payload: payload == _undefined || payload == null
            ? _instance.payload
            : (payload as dynamic),
        refreshExpiresIn:
            refreshExpiresIn == _undefined || refreshExpiresIn == null
                ? _instance.refreshExpiresIn
                : (refreshExpiresIn as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$TokenAuth$tokenAuth<TRes>
    implements CopyWith$Mutation$TokenAuth$tokenAuth<TRes> {
  _CopyWithStubImpl$Mutation$TokenAuth$tokenAuth(this._res);

  TRes _res;

  call({
    String? token,
    dynamic? payload,
    int? refreshExpiresIn,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$CreateProduct {
  factory Variables$Mutation$CreateProduct({
    int? category,
    String? condition,
    required String description,
    List<Input$ImagesInputType?>? imageUrl,
    double? postagePrice,
    required double price,
    required List<int?> size,
    int? subCategory,
    required String title,
  }) =>
      Variables$Mutation$CreateProduct._({
        if (category != null) r'category': category,
        if (condition != null) r'condition': condition,
        r'description': description,
        if (imageUrl != null) r'imageUrl': imageUrl,
        if (postagePrice != null) r'postagePrice': postagePrice,
        r'price': price,
        r'size': size,
        if (subCategory != null) r'subCategory': subCategory,
        r'title': title,
      });

  Variables$Mutation$CreateProduct._(this._$data);

  factory Variables$Mutation$CreateProduct.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('category')) {
      final l$category = data['category'];
      result$data['category'] = (l$category as int?);
    }
    if (data.containsKey('condition')) {
      final l$condition = data['condition'];
      result$data['condition'] = (l$condition as String?);
    }
    final l$description = data['description'];
    result$data['description'] = (l$description as String);
    if (data.containsKey('imageUrl')) {
      final l$imageUrl = data['imageUrl'];
      result$data['imageUrl'] = (l$imageUrl as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Input$ImagesInputType.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('postagePrice')) {
      final l$postagePrice = data['postagePrice'];
      result$data['postagePrice'] = (l$postagePrice as num?)?.toDouble();
    }
    final l$price = data['price'];
    result$data['price'] = (l$price as num).toDouble();
    final l$size = data['size'];
    result$data['size'] =
        (l$size as List<dynamic>).map((e) => (e as int?)).toList();
    if (data.containsKey('subCategory')) {
      final l$subCategory = data['subCategory'];
      result$data['subCategory'] = (l$subCategory as int?);
    }
    final l$title = data['title'];
    result$data['title'] = (l$title as String);
    return Variables$Mutation$CreateProduct._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get category => (_$data['category'] as int?);

  String? get condition => (_$data['condition'] as String?);

  String get description => (_$data['description'] as String);

  List<Input$ImagesInputType?>? get imageUrl =>
      (_$data['imageUrl'] as List<Input$ImagesInputType?>?);

  double? get postagePrice => (_$data['postagePrice'] as double?);

  double get price => (_$data['price'] as double);

  List<int?> get size => (_$data['size'] as List<int?>);

  int? get subCategory => (_$data['subCategory'] as int?);

  String get title => (_$data['title'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('category')) {
      final l$category = category;
      result$data['category'] = l$category;
    }
    if (_$data.containsKey('condition')) {
      final l$condition = condition;
      result$data['condition'] = l$condition;
    }
    final l$description = description;
    result$data['description'] = l$description;
    if (_$data.containsKey('imageUrl')) {
      final l$imageUrl = imageUrl;
      result$data['imageUrl'] = l$imageUrl?.map((e) => e?.toJson()).toList();
    }
    if (_$data.containsKey('postagePrice')) {
      final l$postagePrice = postagePrice;
      result$data['postagePrice'] = l$postagePrice;
    }
    final l$price = price;
    result$data['price'] = l$price;
    final l$size = size;
    result$data['size'] = l$size.map((e) => e).toList();
    if (_$data.containsKey('subCategory')) {
      final l$subCategory = subCategory;
      result$data['subCategory'] = l$subCategory;
    }
    final l$title = title;
    result$data['title'] = l$title;
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateProduct<Variables$Mutation$CreateProduct>
      get copyWith => CopyWith$Variables$Mutation$CreateProduct(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CreateProduct ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$category = category;
    final lOther$category = other.category;
    if (_$data.containsKey('category') !=
        other._$data.containsKey('category')) {
      return false;
    }
    if (l$category != lOther$category) {
      return false;
    }
    final l$condition = condition;
    final lOther$condition = other.condition;
    if (_$data.containsKey('condition') !=
        other._$data.containsKey('condition')) {
      return false;
    }
    if (l$condition != lOther$condition) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$imageUrl = imageUrl;
    final lOther$imageUrl = other.imageUrl;
    if (_$data.containsKey('imageUrl') !=
        other._$data.containsKey('imageUrl')) {
      return false;
    }
    if (l$imageUrl != null && lOther$imageUrl != null) {
      if (l$imageUrl.length != lOther$imageUrl.length) {
        return false;
      }
      for (int i = 0; i < l$imageUrl.length; i++) {
        final l$imageUrl$entry = l$imageUrl[i];
        final lOther$imageUrl$entry = lOther$imageUrl[i];
        if (l$imageUrl$entry != lOther$imageUrl$entry) {
          return false;
        }
      }
    } else if (l$imageUrl != lOther$imageUrl) {
      return false;
    }
    final l$postagePrice = postagePrice;
    final lOther$postagePrice = other.postagePrice;
    if (_$data.containsKey('postagePrice') !=
        other._$data.containsKey('postagePrice')) {
      return false;
    }
    if (l$postagePrice != lOther$postagePrice) {
      return false;
    }
    final l$price = price;
    final lOther$price = other.price;
    if (l$price != lOther$price) {
      return false;
    }
    final l$size = size;
    final lOther$size = other.size;
    if (l$size.length != lOther$size.length) {
      return false;
    }
    for (int i = 0; i < l$size.length; i++) {
      final l$size$entry = l$size[i];
      final lOther$size$entry = lOther$size[i];
      if (l$size$entry != lOther$size$entry) {
        return false;
      }
    }
    final l$subCategory = subCategory;
    final lOther$subCategory = other.subCategory;
    if (_$data.containsKey('subCategory') !=
        other._$data.containsKey('subCategory')) {
      return false;
    }
    if (l$subCategory != lOther$subCategory) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$category = category;
    final l$condition = condition;
    final l$description = description;
    final l$imageUrl = imageUrl;
    final l$postagePrice = postagePrice;
    final l$price = price;
    final l$size = size;
    final l$subCategory = subCategory;
    final l$title = title;
    return Object.hashAll([
      _$data.containsKey('category') ? l$category : const {},
      _$data.containsKey('condition') ? l$condition : const {},
      l$description,
      _$data.containsKey('imageUrl')
          ? l$imageUrl == null
              ? null
              : Object.hashAll(l$imageUrl.map((v) => v))
          : const {},
      _$data.containsKey('postagePrice') ? l$postagePrice : const {},
      l$price,
      Object.hashAll(l$size.map((v) => v)),
      _$data.containsKey('subCategory') ? l$subCategory : const {},
      l$title,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$CreateProduct<TRes> {
  factory CopyWith$Variables$Mutation$CreateProduct(
    Variables$Mutation$CreateProduct instance,
    TRes Function(Variables$Mutation$CreateProduct) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateProduct;

  factory CopyWith$Variables$Mutation$CreateProduct.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateProduct;

  TRes call({
    int? category,
    String? condition,
    String? description,
    List<Input$ImagesInputType?>? imageUrl,
    double? postagePrice,
    double? price,
    List<int?>? size,
    int? subCategory,
    String? title,
  });
}

class _CopyWithImpl$Variables$Mutation$CreateProduct<TRes>
    implements CopyWith$Variables$Mutation$CreateProduct<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateProduct(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateProduct _instance;

  final TRes Function(Variables$Mutation$CreateProduct) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? category = _undefined,
    Object? condition = _undefined,
    Object? description = _undefined,
    Object? imageUrl = _undefined,
    Object? postagePrice = _undefined,
    Object? price = _undefined,
    Object? size = _undefined,
    Object? subCategory = _undefined,
    Object? title = _undefined,
  }) =>
      _then(Variables$Mutation$CreateProduct._({
        ..._instance._$data,
        if (category != _undefined) 'category': (category as int?),
        if (condition != _undefined) 'condition': (condition as String?),
        if (description != _undefined && description != null)
          'description': (description as String),
        if (imageUrl != _undefined)
          'imageUrl': (imageUrl as List<Input$ImagesInputType?>?),
        if (postagePrice != _undefined)
          'postagePrice': (postagePrice as double?),
        if (price != _undefined && price != null) 'price': (price as double),
        if (size != _undefined && size != null) 'size': (size as List<int?>),
        if (subCategory != _undefined) 'subCategory': (subCategory as int?),
        if (title != _undefined && title != null) 'title': (title as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateProduct<TRes>
    implements CopyWith$Variables$Mutation$CreateProduct<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateProduct(this._res);

  TRes _res;

  call({
    int? category,
    String? condition,
    String? description,
    List<Input$ImagesInputType?>? imageUrl,
    double? postagePrice,
    double? price,
    List<int?>? size,
    int? subCategory,
    String? title,
  }) =>
      _res;
}

class Mutation$CreateProduct {
  Mutation$CreateProduct({
    this.createProduct,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateProduct.fromJson(Map<String, dynamic> json) {
    final l$createProduct = json['createProduct'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateProduct(
      createProduct: l$createProduct == null
          ? null
          : Mutation$CreateProduct$createProduct.fromJson(
              (l$createProduct as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateProduct$createProduct? createProduct;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createProduct = createProduct;
    _resultData['createProduct'] = l$createProduct?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createProduct = createProduct;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createProduct,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateProduct || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createProduct = createProduct;
    final lOther$createProduct = other.createProduct;
    if (l$createProduct != lOther$createProduct) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CreateProduct on Mutation$CreateProduct {
  CopyWith$Mutation$CreateProduct<Mutation$CreateProduct> get copyWith =>
      CopyWith$Mutation$CreateProduct(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateProduct<TRes> {
  factory CopyWith$Mutation$CreateProduct(
    Mutation$CreateProduct instance,
    TRes Function(Mutation$CreateProduct) then,
  ) = _CopyWithImpl$Mutation$CreateProduct;

  factory CopyWith$Mutation$CreateProduct.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateProduct;

  TRes call({
    Mutation$CreateProduct$createProduct? createProduct,
    String? $__typename,
  });
  CopyWith$Mutation$CreateProduct$createProduct<TRes> get createProduct;
}

class _CopyWithImpl$Mutation$CreateProduct<TRes>
    implements CopyWith$Mutation$CreateProduct<TRes> {
  _CopyWithImpl$Mutation$CreateProduct(
    this._instance,
    this._then,
  );

  final Mutation$CreateProduct _instance;

  final TRes Function(Mutation$CreateProduct) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createProduct = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateProduct(
        createProduct: createProduct == _undefined
            ? _instance.createProduct
            : (createProduct as Mutation$CreateProduct$createProduct?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$CreateProduct$createProduct<TRes> get createProduct {
    final local$createProduct = _instance.createProduct;
    return local$createProduct == null
        ? CopyWith$Mutation$CreateProduct$createProduct.stub(_then(_instance))
        : CopyWith$Mutation$CreateProduct$createProduct(
            local$createProduct, (e) => call(createProduct: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateProduct<TRes>
    implements CopyWith$Mutation$CreateProduct<TRes> {
  _CopyWithStubImpl$Mutation$CreateProduct(this._res);

  TRes _res;

  call({
    Mutation$CreateProduct$createProduct? createProduct,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$CreateProduct$createProduct<TRes> get createProduct =>
      CopyWith$Mutation$CreateProduct$createProduct.stub(_res);
}

const documentNodeMutationCreateProduct = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateProduct'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'category')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'condition')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'description')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'imageUrl')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'ImagesInputType'),
            isNonNull: false,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'postagePrice')),
        type: NamedTypeNode(
          name: NameNode(value: 'Float'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'price')),
        type: NamedTypeNode(
          name: NameNode(value: 'Float'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'size')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'Int'),
            isNonNull: false,
          ),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'subCategory')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'title')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createProduct'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'category'),
            value: VariableNode(name: NameNode(value: 'category')),
          ),
          ArgumentNode(
            name: NameNode(value: 'condition'),
            value: VariableNode(name: NameNode(value: 'condition')),
          ),
          ArgumentNode(
            name: NameNode(value: 'description'),
            value: VariableNode(name: NameNode(value: 'description')),
          ),
          ArgumentNode(
            name: NameNode(value: 'imagesUrl'),
            value: VariableNode(name: NameNode(value: 'imageUrl')),
          ),
          ArgumentNode(
            name: NameNode(value: 'postagePrice'),
            value: VariableNode(name: NameNode(value: 'postagePrice')),
          ),
          ArgumentNode(
            name: NameNode(value: 'price'),
            value: VariableNode(name: NameNode(value: 'price')),
          ),
          ArgumentNode(
            name: NameNode(value: 'size'),
            value: VariableNode(name: NameNode(value: 'size')),
          ),
          ArgumentNode(
            name: NameNode(value: 'subCategory'),
            value: VariableNode(name: NameNode(value: 'subCategory')),
          ),
          ArgumentNode(
            name: NameNode(value: 'title'),
            value: VariableNode(name: NameNode(value: 'title')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'success'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'product'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'description'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'category'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: 'subCategory'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: 'sizes'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'sizeValue'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'sizeSystem'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: 'condition'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'price'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'postagePrice'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'views'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'likes'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'imagesUrl'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'createdAt'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'updatedAt'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$CreateProduct _parserFn$Mutation$CreateProduct(
        Map<String, dynamic> data) =>
    Mutation$CreateProduct.fromJson(data);
typedef OnMutationCompleted$Mutation$CreateProduct = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$CreateProduct?,
);

class Options$Mutation$CreateProduct
    extends graphql.MutationOptions<Mutation$CreateProduct> {
  Options$Mutation$CreateProduct({
    String? operationName,
    required Variables$Mutation$CreateProduct variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateProduct? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateProduct? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateProduct>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$CreateProduct(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateProduct,
          parserFn: _parserFn$Mutation$CreateProduct,
        );

  final OnMutationCompleted$Mutation$CreateProduct? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CreateProduct
    extends graphql.WatchQueryOptions<Mutation$CreateProduct> {
  WatchOptions$Mutation$CreateProduct({
    String? operationName,
    required Variables$Mutation$CreateProduct variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateProduct? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationCreateProduct,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CreateProduct,
        );
}

extension ClientExtension$Mutation$CreateProduct on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CreateProduct>> mutate$CreateProduct(
          Options$Mutation$CreateProduct options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$CreateProduct> watchMutation$CreateProduct(
          WatchOptions$Mutation$CreateProduct options) =>
      this.watchMutation(options);
}

class Mutation$CreateProduct$createProduct {
  Mutation$CreateProduct$createProduct({
    this.success,
    this.product,
    this.$__typename = 'CreateProduct',
  });

  factory Mutation$CreateProduct$createProduct.fromJson(
      Map<String, dynamic> json) {
    final l$success = json['success'];
    final l$product = json['product'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateProduct$createProduct(
      success: (l$success as bool?),
      product: l$product == null
          ? null
          : Mutation$CreateProduct$createProduct$product.fromJson(
              (l$product as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final bool? success;

  final Mutation$CreateProduct$createProduct$product? product;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$success = success;
    _resultData['success'] = l$success;
    final l$product = product;
    _resultData['product'] = l$product?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$success = success;
    final l$product = product;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$success,
      l$product,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateProduct$createProduct ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$success = success;
    final lOther$success = other.success;
    if (l$success != lOther$success) {
      return false;
    }
    final l$product = product;
    final lOther$product = other.product;
    if (l$product != lOther$product) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CreateProduct$createProduct
    on Mutation$CreateProduct$createProduct {
  CopyWith$Mutation$CreateProduct$createProduct<
          Mutation$CreateProduct$createProduct>
      get copyWith => CopyWith$Mutation$CreateProduct$createProduct(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateProduct$createProduct<TRes> {
  factory CopyWith$Mutation$CreateProduct$createProduct(
    Mutation$CreateProduct$createProduct instance,
    TRes Function(Mutation$CreateProduct$createProduct) then,
  ) = _CopyWithImpl$Mutation$CreateProduct$createProduct;

  factory CopyWith$Mutation$CreateProduct$createProduct.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateProduct$createProduct;

  TRes call({
    bool? success,
    Mutation$CreateProduct$createProduct$product? product,
    String? $__typename,
  });
  CopyWith$Mutation$CreateProduct$createProduct$product<TRes> get product;
}

class _CopyWithImpl$Mutation$CreateProduct$createProduct<TRes>
    implements CopyWith$Mutation$CreateProduct$createProduct<TRes> {
  _CopyWithImpl$Mutation$CreateProduct$createProduct(
    this._instance,
    this._then,
  );

  final Mutation$CreateProduct$createProduct _instance;

  final TRes Function(Mutation$CreateProduct$createProduct) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? success = _undefined,
    Object? product = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateProduct$createProduct(
        success: success == _undefined ? _instance.success : (success as bool?),
        product: product == _undefined
            ? _instance.product
            : (product as Mutation$CreateProduct$createProduct$product?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$CreateProduct$createProduct$product<TRes> get product {
    final local$product = _instance.product;
    return local$product == null
        ? CopyWith$Mutation$CreateProduct$createProduct$product.stub(
            _then(_instance))
        : CopyWith$Mutation$CreateProduct$createProduct$product(
            local$product, (e) => call(product: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateProduct$createProduct<TRes>
    implements CopyWith$Mutation$CreateProduct$createProduct<TRes> {
  _CopyWithStubImpl$Mutation$CreateProduct$createProduct(this._res);

  TRes _res;

  call({
    bool? success,
    Mutation$CreateProduct$createProduct$product? product,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$CreateProduct$createProduct$product<TRes> get product =>
      CopyWith$Mutation$CreateProduct$createProduct$product.stub(_res);
}

class Mutation$CreateProduct$createProduct$product {
  Mutation$CreateProduct$createProduct$product({
    required this.id,
    required this.name,
    required this.description,
    this.category,
    this.subCategory,
    this.sizes,
    this.condition,
    required this.price,
    this.postagePrice,
    required this.views,
    required this.likes,
    required this.imagesUrl,
    required this.createdAt,
    required this.updatedAt,
    this.$__typename = 'ProductType',
  });

  factory Mutation$CreateProduct$createProduct$product.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$description = json['description'];
    final l$category = json['category'];
    final l$subCategory = json['subCategory'];
    final l$sizes = json['sizes'];
    final l$condition = json['condition'];
    final l$price = json['price'];
    final l$postagePrice = json['postagePrice'];
    final l$views = json['views'];
    final l$likes = json['likes'];
    final l$imagesUrl = json['imagesUrl'];
    final l$createdAt = json['createdAt'];
    final l$updatedAt = json['updatedAt'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateProduct$createProduct$product(
      id: (l$id as String),
      name: (l$name as String),
      description: (l$description as String),
      category: l$category == null
          ? null
          : Mutation$CreateProduct$createProduct$product$category.fromJson(
              (l$category as Map<String, dynamic>)),
      subCategory: l$subCategory == null
          ? null
          : Mutation$CreateProduct$createProduct$product$subCategory.fromJson(
              (l$subCategory as Map<String, dynamic>)),
      sizes: (l$sizes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Mutation$CreateProduct$createProduct$product$sizes.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      condition: l$condition == null
          ? null
          : fromJson$Enum$ProductsProductConditionChoices(
              (l$condition as String)),
      price: (l$price as num).toDouble(),
      postagePrice: (l$postagePrice as num?)?.toDouble(),
      views: (l$views as int),
      likes: (l$likes as int),
      imagesUrl:
          (l$imagesUrl as List<dynamic>).map((e) => (e as String)).toList(),
      createdAt: DateTime.parse((l$createdAt as String)),
      updatedAt: DateTime.parse((l$updatedAt as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String description;

  final Mutation$CreateProduct$createProduct$product$category? category;

  final Mutation$CreateProduct$createProduct$product$subCategory? subCategory;

  final List<Mutation$CreateProduct$createProduct$product$sizes?>? sizes;

  final Enum$ProductsProductConditionChoices? condition;

  final double price;

  final double? postagePrice;

  final int views;

  final int likes;

  final List<String> imagesUrl;

  final DateTime createdAt;

  final DateTime updatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$category = category;
    _resultData['category'] = l$category?.toJson();
    final l$subCategory = subCategory;
    _resultData['subCategory'] = l$subCategory?.toJson();
    final l$sizes = sizes;
    _resultData['sizes'] = l$sizes?.map((e) => e?.toJson()).toList();
    final l$condition = condition;
    _resultData['condition'] = l$condition == null
        ? null
        : toJson$Enum$ProductsProductConditionChoices(l$condition);
    final l$price = price;
    _resultData['price'] = l$price;
    final l$postagePrice = postagePrice;
    _resultData['postagePrice'] = l$postagePrice;
    final l$views = views;
    _resultData['views'] = l$views;
    final l$likes = likes;
    _resultData['likes'] = l$likes;
    final l$imagesUrl = imagesUrl;
    _resultData['imagesUrl'] = l$imagesUrl.map((e) => e).toList();
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$description = description;
    final l$category = category;
    final l$subCategory = subCategory;
    final l$sizes = sizes;
    final l$condition = condition;
    final l$price = price;
    final l$postagePrice = postagePrice;
    final l$views = views;
    final l$likes = likes;
    final l$imagesUrl = imagesUrl;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$description,
      l$category,
      l$subCategory,
      l$sizes == null ? null : Object.hashAll(l$sizes.map((v) => v)),
      l$condition,
      l$price,
      l$postagePrice,
      l$views,
      l$likes,
      Object.hashAll(l$imagesUrl.map((v) => v)),
      l$createdAt,
      l$updatedAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateProduct$createProduct$product ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$category = category;
    final lOther$category = other.category;
    if (l$category != lOther$category) {
      return false;
    }
    final l$subCategory = subCategory;
    final lOther$subCategory = other.subCategory;
    if (l$subCategory != lOther$subCategory) {
      return false;
    }
    final l$sizes = sizes;
    final lOther$sizes = other.sizes;
    if (l$sizes != null && lOther$sizes != null) {
      if (l$sizes.length != lOther$sizes.length) {
        return false;
      }
      for (int i = 0; i < l$sizes.length; i++) {
        final l$sizes$entry = l$sizes[i];
        final lOther$sizes$entry = lOther$sizes[i];
        if (l$sizes$entry != lOther$sizes$entry) {
          return false;
        }
      }
    } else if (l$sizes != lOther$sizes) {
      return false;
    }
    final l$condition = condition;
    final lOther$condition = other.condition;
    if (l$condition != lOther$condition) {
      return false;
    }
    final l$price = price;
    final lOther$price = other.price;
    if (l$price != lOther$price) {
      return false;
    }
    final l$postagePrice = postagePrice;
    final lOther$postagePrice = other.postagePrice;
    if (l$postagePrice != lOther$postagePrice) {
      return false;
    }
    final l$views = views;
    final lOther$views = other.views;
    if (l$views != lOther$views) {
      return false;
    }
    final l$likes = likes;
    final lOther$likes = other.likes;
    if (l$likes != lOther$likes) {
      return false;
    }
    final l$imagesUrl = imagesUrl;
    final lOther$imagesUrl = other.imagesUrl;
    if (l$imagesUrl.length != lOther$imagesUrl.length) {
      return false;
    }
    for (int i = 0; i < l$imagesUrl.length; i++) {
      final l$imagesUrl$entry = l$imagesUrl[i];
      final lOther$imagesUrl$entry = lOther$imagesUrl[i];
      if (l$imagesUrl$entry != lOther$imagesUrl$entry) {
        return false;
      }
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CreateProduct$createProduct$product
    on Mutation$CreateProduct$createProduct$product {
  CopyWith$Mutation$CreateProduct$createProduct$product<
          Mutation$CreateProduct$createProduct$product>
      get copyWith => CopyWith$Mutation$CreateProduct$createProduct$product(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateProduct$createProduct$product<TRes> {
  factory CopyWith$Mutation$CreateProduct$createProduct$product(
    Mutation$CreateProduct$createProduct$product instance,
    TRes Function(Mutation$CreateProduct$createProduct$product) then,
  ) = _CopyWithImpl$Mutation$CreateProduct$createProduct$product;

  factory CopyWith$Mutation$CreateProduct$createProduct$product.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateProduct$createProduct$product;

  TRes call({
    String? id,
    String? name,
    String? description,
    Mutation$CreateProduct$createProduct$product$category? category,
    Mutation$CreateProduct$createProduct$product$subCategory? subCategory,
    List<Mutation$CreateProduct$createProduct$product$sizes?>? sizes,
    Enum$ProductsProductConditionChoices? condition,
    double? price,
    double? postagePrice,
    int? views,
    int? likes,
    List<String>? imagesUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? $__typename,
  });
  CopyWith$Mutation$CreateProduct$createProduct$product$category<TRes>
      get category;
  CopyWith$Mutation$CreateProduct$createProduct$product$subCategory<TRes>
      get subCategory;
  TRes sizes(
      Iterable<Mutation$CreateProduct$createProduct$product$sizes?>? Function(
              Iterable<
                  CopyWith$Mutation$CreateProduct$createProduct$product$sizes<
                      Mutation$CreateProduct$createProduct$product$sizes>?>?)
          _fn);
}

class _CopyWithImpl$Mutation$CreateProduct$createProduct$product<TRes>
    implements CopyWith$Mutation$CreateProduct$createProduct$product<TRes> {
  _CopyWithImpl$Mutation$CreateProduct$createProduct$product(
    this._instance,
    this._then,
  );

  final Mutation$CreateProduct$createProduct$product _instance;

  final TRes Function(Mutation$CreateProduct$createProduct$product) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? category = _undefined,
    Object? subCategory = _undefined,
    Object? sizes = _undefined,
    Object? condition = _undefined,
    Object? price = _undefined,
    Object? postagePrice = _undefined,
    Object? views = _undefined,
    Object? likes = _undefined,
    Object? imagesUrl = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateProduct$createProduct$product(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        description: description == _undefined || description == null
            ? _instance.description
            : (description as String),
        category: category == _undefined
            ? _instance.category
            : (category
                as Mutation$CreateProduct$createProduct$product$category?),
        subCategory: subCategory == _undefined
            ? _instance.subCategory
            : (subCategory
                as Mutation$CreateProduct$createProduct$product$subCategory?),
        sizes: sizes == _undefined
            ? _instance.sizes
            : (sizes
                as List<Mutation$CreateProduct$createProduct$product$sizes?>?),
        condition: condition == _undefined
            ? _instance.condition
            : (condition as Enum$ProductsProductConditionChoices?),
        price: price == _undefined || price == null
            ? _instance.price
            : (price as double),
        postagePrice: postagePrice == _undefined
            ? _instance.postagePrice
            : (postagePrice as double?),
        views: views == _undefined || views == null
            ? _instance.views
            : (views as int),
        likes: likes == _undefined || likes == null
            ? _instance.likes
            : (likes as int),
        imagesUrl: imagesUrl == _undefined || imagesUrl == null
            ? _instance.imagesUrl
            : (imagesUrl as List<String>),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        updatedAt: updatedAt == _undefined || updatedAt == null
            ? _instance.updatedAt
            : (updatedAt as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$CreateProduct$createProduct$product$category<TRes>
      get category {
    final local$category = _instance.category;
    return local$category == null
        ? CopyWith$Mutation$CreateProduct$createProduct$product$category.stub(
            _then(_instance))
        : CopyWith$Mutation$CreateProduct$createProduct$product$category(
            local$category, (e) => call(category: e));
  }

  CopyWith$Mutation$CreateProduct$createProduct$product$subCategory<TRes>
      get subCategory {
    final local$subCategory = _instance.subCategory;
    return local$subCategory == null
        ? CopyWith$Mutation$CreateProduct$createProduct$product$subCategory
            .stub(_then(_instance))
        : CopyWith$Mutation$CreateProduct$createProduct$product$subCategory(
            local$subCategory, (e) => call(subCategory: e));
  }

  TRes sizes(
          Iterable<Mutation$CreateProduct$createProduct$product$sizes?>? Function(
                  Iterable<
                      CopyWith$Mutation$CreateProduct$createProduct$product$sizes<
                          Mutation$CreateProduct$createProduct$product$sizes>?>?)
              _fn) =>
      call(
          sizes: _fn(_instance.sizes?.map((e) => e == null
              ? null
              : CopyWith$Mutation$CreateProduct$createProduct$product$sizes(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Mutation$CreateProduct$createProduct$product<TRes>
    implements CopyWith$Mutation$CreateProduct$createProduct$product<TRes> {
  _CopyWithStubImpl$Mutation$CreateProduct$createProduct$product(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? description,
    Mutation$CreateProduct$createProduct$product$category? category,
    Mutation$CreateProduct$createProduct$product$subCategory? subCategory,
    List<Mutation$CreateProduct$createProduct$product$sizes?>? sizes,
    Enum$ProductsProductConditionChoices? condition,
    double? price,
    double? postagePrice,
    int? views,
    int? likes,
    List<String>? imagesUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$CreateProduct$createProduct$product$category<TRes>
      get category =>
          CopyWith$Mutation$CreateProduct$createProduct$product$category.stub(
              _res);

  CopyWith$Mutation$CreateProduct$createProduct$product$subCategory<TRes>
      get subCategory =>
          CopyWith$Mutation$CreateProduct$createProduct$product$subCategory
              .stub(_res);

  sizes(_fn) => _res;
}

class Mutation$CreateProduct$createProduct$product$category {
  Mutation$CreateProduct$createProduct$product$category({
    this.id,
    this.name,
    this.$__typename = 'CategoryType',
  });

  factory Mutation$CreateProduct$createProduct$product$category.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateProduct$createProduct$product$category(
      id: (l$id as int?),
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? id;

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateProduct$createProduct$product$category ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CreateProduct$createProduct$product$category
    on Mutation$CreateProduct$createProduct$product$category {
  CopyWith$Mutation$CreateProduct$createProduct$product$category<
          Mutation$CreateProduct$createProduct$product$category>
      get copyWith =>
          CopyWith$Mutation$CreateProduct$createProduct$product$category(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateProduct$createProduct$product$category<
    TRes> {
  factory CopyWith$Mutation$CreateProduct$createProduct$product$category(
    Mutation$CreateProduct$createProduct$product$category instance,
    TRes Function(Mutation$CreateProduct$createProduct$product$category) then,
  ) = _CopyWithImpl$Mutation$CreateProduct$createProduct$product$category;

  factory CopyWith$Mutation$CreateProduct$createProduct$product$category.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$CreateProduct$createProduct$product$category;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateProduct$createProduct$product$category<TRes>
    implements
        CopyWith$Mutation$CreateProduct$createProduct$product$category<TRes> {
  _CopyWithImpl$Mutation$CreateProduct$createProduct$product$category(
    this._instance,
    this._then,
  );

  final Mutation$CreateProduct$createProduct$product$category _instance;

  final TRes Function(Mutation$CreateProduct$createProduct$product$category)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateProduct$createProduct$product$category(
        id: id == _undefined ? _instance.id : (id as int?),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreateProduct$createProduct$product$category<
        TRes>
    implements
        CopyWith$Mutation$CreateProduct$createProduct$product$category<TRes> {
  _CopyWithStubImpl$Mutation$CreateProduct$createProduct$product$category(
      this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$CreateProduct$createProduct$product$subCategory {
  Mutation$CreateProduct$createProduct$product$subCategory({
    this.id,
    this.name,
    this.$__typename = 'SubCategoryType',
  });

  factory Mutation$CreateProduct$createProduct$product$subCategory.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateProduct$createProduct$product$subCategory(
      id: (l$id as int?),
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? id;

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateProduct$createProduct$product$subCategory ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CreateProduct$createProduct$product$subCategory
    on Mutation$CreateProduct$createProduct$product$subCategory {
  CopyWith$Mutation$CreateProduct$createProduct$product$subCategory<
          Mutation$CreateProduct$createProduct$product$subCategory>
      get copyWith =>
          CopyWith$Mutation$CreateProduct$createProduct$product$subCategory(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateProduct$createProduct$product$subCategory<
    TRes> {
  factory CopyWith$Mutation$CreateProduct$createProduct$product$subCategory(
    Mutation$CreateProduct$createProduct$product$subCategory instance,
    TRes Function(Mutation$CreateProduct$createProduct$product$subCategory)
        then,
  ) = _CopyWithImpl$Mutation$CreateProduct$createProduct$product$subCategory;

  factory CopyWith$Mutation$CreateProduct$createProduct$product$subCategory.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$CreateProduct$createProduct$product$subCategory;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateProduct$createProduct$product$subCategory<
        TRes>
    implements
        CopyWith$Mutation$CreateProduct$createProduct$product$subCategory<
            TRes> {
  _CopyWithImpl$Mutation$CreateProduct$createProduct$product$subCategory(
    this._instance,
    this._then,
  );

  final Mutation$CreateProduct$createProduct$product$subCategory _instance;

  final TRes Function(Mutation$CreateProduct$createProduct$product$subCategory)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateProduct$createProduct$product$subCategory(
        id: id == _undefined ? _instance.id : (id as int?),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreateProduct$createProduct$product$subCategory<
        TRes>
    implements
        CopyWith$Mutation$CreateProduct$createProduct$product$subCategory<
            TRes> {
  _CopyWithStubImpl$Mutation$CreateProduct$createProduct$product$subCategory(
      this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$CreateProduct$createProduct$product$sizes {
  Mutation$CreateProduct$createProduct$product$sizes({
    this.id,
    this.sizeValue,
    this.sizeSystem,
    this.$__typename = 'SizeType',
  });

  factory Mutation$CreateProduct$createProduct$product$sizes.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$sizeValue = json['sizeValue'];
    final l$sizeSystem = json['sizeSystem'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateProduct$createProduct$product$sizes(
      id: (l$id as int?),
      sizeValue: (l$sizeValue as String?),
      sizeSystem: (l$sizeSystem as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? id;

  final String? sizeValue;

  final String? sizeSystem;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$sizeValue = sizeValue;
    _resultData['sizeValue'] = l$sizeValue;
    final l$sizeSystem = sizeSystem;
    _resultData['sizeSystem'] = l$sizeSystem;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$sizeValue = sizeValue;
    final l$sizeSystem = sizeSystem;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$sizeValue,
      l$sizeSystem,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateProduct$createProduct$product$sizes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$sizeValue = sizeValue;
    final lOther$sizeValue = other.sizeValue;
    if (l$sizeValue != lOther$sizeValue) {
      return false;
    }
    final l$sizeSystem = sizeSystem;
    final lOther$sizeSystem = other.sizeSystem;
    if (l$sizeSystem != lOther$sizeSystem) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CreateProduct$createProduct$product$sizes
    on Mutation$CreateProduct$createProduct$product$sizes {
  CopyWith$Mutation$CreateProduct$createProduct$product$sizes<
          Mutation$CreateProduct$createProduct$product$sizes>
      get copyWith =>
          CopyWith$Mutation$CreateProduct$createProduct$product$sizes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateProduct$createProduct$product$sizes<
    TRes> {
  factory CopyWith$Mutation$CreateProduct$createProduct$product$sizes(
    Mutation$CreateProduct$createProduct$product$sizes instance,
    TRes Function(Mutation$CreateProduct$createProduct$product$sizes) then,
  ) = _CopyWithImpl$Mutation$CreateProduct$createProduct$product$sizes;

  factory CopyWith$Mutation$CreateProduct$createProduct$product$sizes.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$CreateProduct$createProduct$product$sizes;

  TRes call({
    int? id,
    String? sizeValue,
    String? sizeSystem,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateProduct$createProduct$product$sizes<TRes>
    implements
        CopyWith$Mutation$CreateProduct$createProduct$product$sizes<TRes> {
  _CopyWithImpl$Mutation$CreateProduct$createProduct$product$sizes(
    this._instance,
    this._then,
  );

  final Mutation$CreateProduct$createProduct$product$sizes _instance;

  final TRes Function(Mutation$CreateProduct$createProduct$product$sizes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? sizeValue = _undefined,
    Object? sizeSystem = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateProduct$createProduct$product$sizes(
        id: id == _undefined ? _instance.id : (id as int?),
        sizeValue: sizeValue == _undefined
            ? _instance.sizeValue
            : (sizeValue as String?),
        sizeSystem: sizeSystem == _undefined
            ? _instance.sizeSystem
            : (sizeSystem as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreateProduct$createProduct$product$sizes<TRes>
    implements
        CopyWith$Mutation$CreateProduct$createProduct$product$sizes<TRes> {
  _CopyWithStubImpl$Mutation$CreateProduct$createProduct$product$sizes(
      this._res);

  TRes _res;

  call({
    int? id,
    String? sizeValue,
    String? sizeSystem,
    String? $__typename,
  }) =>
      _res;
}
