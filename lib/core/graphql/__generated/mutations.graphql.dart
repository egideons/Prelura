import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:prelura_app/modules/model/product/product_model.dart'
    as EnumImport$ConditionEnum;
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
            name: NameNode(value: 'user'),
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
                name: NameNode(value: 'username'),
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
    this.user,
    this.$__typename = 'LoginMutation',
  });

  factory Mutation$Login$login.fromJson(Map<String, dynamic> json) {
    final l$restToken = json['restToken'];
    final l$token = json['token'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Mutation$Login$login(
      restToken: (l$restToken as String?),
      token: (l$token as String?),
      user: l$user == null
          ? null
          : Mutation$Login$login$user.fromJson(
              (l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? restToken;

  final String? token;

  final Mutation$Login$login$user? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$restToken = restToken;
    _resultData['restToken'] = l$restToken;
    final l$token = token;
    _resultData['token'] = l$token;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$restToken = restToken;
    final l$token = token;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$restToken,
      l$token,
      l$user,
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
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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
    Mutation$Login$login$user? user,
    String? $__typename,
  });
  CopyWith$Mutation$Login$login$user<TRes> get user;
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
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Login$login(
        restToken: restToken == _undefined
            ? _instance.restToken
            : (restToken as String?),
        token: token == _undefined ? _instance.token : (token as String?),
        user: user == _undefined
            ? _instance.user
            : (user as Mutation$Login$login$user?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$Login$login$user<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Mutation$Login$login$user.stub(_then(_instance))
        : CopyWith$Mutation$Login$login$user(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Mutation$Login$login<TRes>
    implements CopyWith$Mutation$Login$login<TRes> {
  _CopyWithStubImpl$Mutation$Login$login(this._res);

  TRes _res;

  call({
    String? restToken,
    String? token,
    Mutation$Login$login$user? user,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$Login$login$user<TRes> get user =>
      CopyWith$Mutation$Login$login$user.stub(_res);
}

class Mutation$Login$login$user {
  Mutation$Login$login$user({
    this.id,
    this.username,
    this.$__typename = 'UserType',
  });

  factory Mutation$Login$login$user.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$username = json['username'];
    final l$$__typename = json['__typename'];
    return Mutation$Login$login$user(
      id: (l$id as int?),
      username: (l$username as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? id;

  final String? username;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$username = username;
    _resultData['username'] = l$username;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$username = username;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$username,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$Login$login$user ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) {
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

extension UtilityExtension$Mutation$Login$login$user
    on Mutation$Login$login$user {
  CopyWith$Mutation$Login$login$user<Mutation$Login$login$user> get copyWith =>
      CopyWith$Mutation$Login$login$user(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$Login$login$user<TRes> {
  factory CopyWith$Mutation$Login$login$user(
    Mutation$Login$login$user instance,
    TRes Function(Mutation$Login$login$user) then,
  ) = _CopyWithImpl$Mutation$Login$login$user;

  factory CopyWith$Mutation$Login$login$user.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Login$login$user;

  TRes call({
    int? id,
    String? username,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$Login$login$user<TRes>
    implements CopyWith$Mutation$Login$login$user<TRes> {
  _CopyWithImpl$Mutation$Login$login$user(
    this._instance,
    this._then,
  );

  final Mutation$Login$login$user _instance;

  final TRes Function(Mutation$Login$login$user) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? username = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Login$login$user(
        id: id == _undefined ? _instance.id : (id as int?),
        username:
            username == _undefined ? _instance.username : (username as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$Login$login$user<TRes>
    implements CopyWith$Mutation$Login$login$user<TRes> {
  _CopyWithStubImpl$Mutation$Login$login$user(this._res);

  TRes _res;

  call({
    int? id,
    String? username,
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
    EnumImport$ConditionEnum.ConditionsEnum? condition,
    required String description,
    required List<Input$ImagesInputType?> imageUrl,
    required double price,
    Enum$SizeEnum? size,
    int? subCategory,
    required String name,
    Enum$ParcelSizeEnum? parcelSize,
    double? discount,
  }) =>
      Variables$Mutation$CreateProduct._({
        if (category != null) r'category': category,
        if (condition != null) r'condition': condition,
        r'description': description,
        r'imageUrl': imageUrl,
        r'price': price,
        if (size != null) r'size': size,
        if (subCategory != null) r'subCategory': subCategory,
        r'name': name,
        if (parcelSize != null) r'parcelSize': parcelSize,
        if (discount != null) r'discount': discount,
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
      result$data['condition'] = l$condition == null
          ? null
          : EnumImport$ConditionEnum.ConditionsEnum.conditionByApiValue(
              (l$condition as String));
    }
    final l$description = data['description'];
    result$data['description'] = (l$description as String);
    final l$imageUrl = data['imageUrl'];
    result$data['imageUrl'] = (l$imageUrl as List<dynamic>)
        .map((e) => e == null
            ? null
            : Input$ImagesInputType.fromJson((e as Map<String, dynamic>)))
        .toList();
    final l$price = data['price'];
    result$data['price'] = (l$price as num).toDouble();
    if (data.containsKey('size')) {
      final l$size = data['size'];
      result$data['size'] =
          l$size == null ? null : fromJson$Enum$SizeEnum((l$size as String));
    }
    if (data.containsKey('subCategory')) {
      final l$subCategory = data['subCategory'];
      result$data['subCategory'] = (l$subCategory as int?);
    }
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    if (data.containsKey('parcelSize')) {
      final l$parcelSize = data['parcelSize'];
      result$data['parcelSize'] = l$parcelSize == null
          ? null
          : fromJson$Enum$ParcelSizeEnum((l$parcelSize as String));
    }
    if (data.containsKey('discount')) {
      final l$discount = data['discount'];
      result$data['discount'] = (l$discount as num?)?.toDouble();
    }
    return Variables$Mutation$CreateProduct._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get category => (_$data['category'] as int?);

  EnumImport$ConditionEnum.ConditionsEnum? get condition =>
      (_$data['condition'] as EnumImport$ConditionEnum.ConditionsEnum?);

  String get description => (_$data['description'] as String);

  List<Input$ImagesInputType?> get imageUrl =>
      (_$data['imageUrl'] as List<Input$ImagesInputType?>);

  double get price => (_$data['price'] as double);

  Enum$SizeEnum? get size => (_$data['size'] as Enum$SizeEnum?);

  int? get subCategory => (_$data['subCategory'] as int?);

  String get name => (_$data['name'] as String);

  Enum$ParcelSizeEnum? get parcelSize =>
      (_$data['parcelSize'] as Enum$ParcelSizeEnum?);

  double? get discount => (_$data['discount'] as double?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('category')) {
      final l$category = category;
      result$data['category'] = l$category;
    }
    if (_$data.containsKey('condition')) {
      final l$condition = condition;
      result$data['condition'] = l$condition == null
          ? null
          : EnumImport$ConditionEnum.ConditionsEnum.conditionToApiValue(
              l$condition);
    }
    final l$description = description;
    result$data['description'] = l$description;
    final l$imageUrl = imageUrl;
    result$data['imageUrl'] = l$imageUrl.map((e) => e?.toJson()).toList();
    final l$price = price;
    result$data['price'] = l$price;
    if (_$data.containsKey('size')) {
      final l$size = size;
      result$data['size'] =
          l$size == null ? null : toJson$Enum$SizeEnum(l$size);
    }
    if (_$data.containsKey('subCategory')) {
      final l$subCategory = subCategory;
      result$data['subCategory'] = l$subCategory;
    }
    final l$name = name;
    result$data['name'] = l$name;
    if (_$data.containsKey('parcelSize')) {
      final l$parcelSize = parcelSize;
      result$data['parcelSize'] = l$parcelSize == null
          ? null
          : toJson$Enum$ParcelSizeEnum(l$parcelSize);
    }
    if (_$data.containsKey('discount')) {
      final l$discount = discount;
      result$data['discount'] = l$discount;
    }
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
    final l$price = price;
    final lOther$price = other.price;
    if (l$price != lOther$price) {
      return false;
    }
    final l$size = size;
    final lOther$size = other.size;
    if (_$data.containsKey('size') != other._$data.containsKey('size')) {
      return false;
    }
    if (l$size != lOther$size) {
      return false;
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
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$parcelSize = parcelSize;
    final lOther$parcelSize = other.parcelSize;
    if (_$data.containsKey('parcelSize') !=
        other._$data.containsKey('parcelSize')) {
      return false;
    }
    if (l$parcelSize != lOther$parcelSize) {
      return false;
    }
    final l$discount = discount;
    final lOther$discount = other.discount;
    if (_$data.containsKey('discount') !=
        other._$data.containsKey('discount')) {
      return false;
    }
    if (l$discount != lOther$discount) {
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
    final l$price = price;
    final l$size = size;
    final l$subCategory = subCategory;
    final l$name = name;
    final l$parcelSize = parcelSize;
    final l$discount = discount;
    return Object.hashAll([
      _$data.containsKey('category') ? l$category : const {},
      _$data.containsKey('condition') ? l$condition : const {},
      l$description,
      Object.hashAll(l$imageUrl.map((v) => v)),
      l$price,
      _$data.containsKey('size') ? l$size : const {},
      _$data.containsKey('subCategory') ? l$subCategory : const {},
      l$name,
      _$data.containsKey('parcelSize') ? l$parcelSize : const {},
      _$data.containsKey('discount') ? l$discount : const {},
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
    EnumImport$ConditionEnum.ConditionsEnum? condition,
    String? description,
    List<Input$ImagesInputType?>? imageUrl,
    double? price,
    Enum$SizeEnum? size,
    int? subCategory,
    String? name,
    Enum$ParcelSizeEnum? parcelSize,
    double? discount,
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
    Object? price = _undefined,
    Object? size = _undefined,
    Object? subCategory = _undefined,
    Object? name = _undefined,
    Object? parcelSize = _undefined,
    Object? discount = _undefined,
  }) =>
      _then(Variables$Mutation$CreateProduct._({
        ..._instance._$data,
        if (category != _undefined) 'category': (category as int?),
        if (condition != _undefined)
          'condition': (condition as EnumImport$ConditionEnum.ConditionsEnum?),
        if (description != _undefined && description != null)
          'description': (description as String),
        if (imageUrl != _undefined && imageUrl != null)
          'imageUrl': (imageUrl as List<Input$ImagesInputType?>),
        if (price != _undefined && price != null) 'price': (price as double),
        if (size != _undefined) 'size': (size as Enum$SizeEnum?),
        if (subCategory != _undefined) 'subCategory': (subCategory as int?),
        if (name != _undefined && name != null) 'name': (name as String),
        if (parcelSize != _undefined)
          'parcelSize': (parcelSize as Enum$ParcelSizeEnum?),
        if (discount != _undefined) 'discount': (discount as double?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateProduct<TRes>
    implements CopyWith$Variables$Mutation$CreateProduct<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateProduct(this._res);

  TRes _res;

  call({
    int? category,
    EnumImport$ConditionEnum.ConditionsEnum? condition,
    String? description,
    List<Input$ImagesInputType?>? imageUrl,
    double? price,
    Enum$SizeEnum? size,
    int? subCategory,
    String? name,
    Enum$ParcelSizeEnum? parcelSize,
    double? discount,
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
          name: NameNode(value: 'ConditionEnum'),
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
          isNonNull: true,
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
        type: NamedTypeNode(
          name: NameNode(value: 'SizeEnum'),
          isNonNull: false,
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
        variable: VariableNode(name: NameNode(value: 'name')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'parcelSize')),
        type: NamedTypeNode(
          name: NameNode(value: 'ParcelSizeEnum'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'discount')),
        type: NamedTypeNode(
          name: NameNode(value: 'Float'),
          isNonNull: false,
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
            name: NameNode(value: 'name'),
            value: VariableNode(name: NameNode(value: 'name')),
          ),
          ArgumentNode(
            name: NameNode(value: 'parcelSize'),
            value: VariableNode(name: NameNode(value: 'parcelSize')),
          ),
          ArgumentNode(
            name: NameNode(value: 'discount'),
            value: VariableNode(name: NameNode(value: 'discount')),
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
    this.message,
    this.$__typename = 'CreateProduct',
  });

  factory Mutation$CreateProduct$createProduct.fromJson(
      Map<String, dynamic> json) {
    final l$success = json['success'];
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateProduct$createProduct(
      success: (l$success as bool?),
      message: (l$message as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool? success;

  final String? message;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$success = success;
    _resultData['success'] = l$success;
    final l$message = message;
    _resultData['message'] = l$message;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$success = success;
    final l$message = message;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$success,
      l$message,
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
    String? message,
    String? $__typename,
  });
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
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateProduct$createProduct(
        success: success == _undefined ? _instance.success : (success as bool?),
        message:
            message == _undefined ? _instance.message : (message as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreateProduct$createProduct<TRes>
    implements CopyWith$Mutation$CreateProduct$createProduct<TRes> {
  _CopyWithStubImpl$Mutation$CreateProduct$createProduct(this._res);

  TRes _res;

  call({
    bool? success,
    String? message,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$likeProduct {
  factory Variables$Mutation$likeProduct({required int productId}) =>
      Variables$Mutation$likeProduct._({
        r'productId': productId,
      });

  Variables$Mutation$likeProduct._(this._$data);

  factory Variables$Mutation$likeProduct.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$productId = data['productId'];
    result$data['productId'] = (l$productId as int);
    return Variables$Mutation$likeProduct._(result$data);
  }

  Map<String, dynamic> _$data;

  int get productId => (_$data['productId'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$productId = productId;
    result$data['productId'] = l$productId;
    return result$data;
  }

  CopyWith$Variables$Mutation$likeProduct<Variables$Mutation$likeProduct>
      get copyWith => CopyWith$Variables$Mutation$likeProduct(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$likeProduct ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$productId = productId;
    final lOther$productId = other.productId;
    if (l$productId != lOther$productId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$productId = productId;
    return Object.hashAll([l$productId]);
  }
}

abstract class CopyWith$Variables$Mutation$likeProduct<TRes> {
  factory CopyWith$Variables$Mutation$likeProduct(
    Variables$Mutation$likeProduct instance,
    TRes Function(Variables$Mutation$likeProduct) then,
  ) = _CopyWithImpl$Variables$Mutation$likeProduct;

  factory CopyWith$Variables$Mutation$likeProduct.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$likeProduct;

  TRes call({int? productId});
}

class _CopyWithImpl$Variables$Mutation$likeProduct<TRes>
    implements CopyWith$Variables$Mutation$likeProduct<TRes> {
  _CopyWithImpl$Variables$Mutation$likeProduct(
    this._instance,
    this._then,
  );

  final Variables$Mutation$likeProduct _instance;

  final TRes Function(Variables$Mutation$likeProduct) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? productId = _undefined}) =>
      _then(Variables$Mutation$likeProduct._({
        ..._instance._$data,
        if (productId != _undefined && productId != null)
          'productId': (productId as int),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$likeProduct<TRes>
    implements CopyWith$Variables$Mutation$likeProduct<TRes> {
  _CopyWithStubImpl$Variables$Mutation$likeProduct(this._res);

  TRes _res;

  call({int? productId}) => _res;
}

class Mutation$likeProduct {
  Mutation$likeProduct({
    this.likeProduct,
    this.$__typename = 'Mutation',
  });

  factory Mutation$likeProduct.fromJson(Map<String, dynamic> json) {
    final l$likeProduct = json['likeProduct'];
    final l$$__typename = json['__typename'];
    return Mutation$likeProduct(
      likeProduct: l$likeProduct == null
          ? null
          : Mutation$likeProduct$likeProduct.fromJson(
              (l$likeProduct as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$likeProduct$likeProduct? likeProduct;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$likeProduct = likeProduct;
    _resultData['likeProduct'] = l$likeProduct?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$likeProduct = likeProduct;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$likeProduct,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$likeProduct || runtimeType != other.runtimeType) {
      return false;
    }
    final l$likeProduct = likeProduct;
    final lOther$likeProduct = other.likeProduct;
    if (l$likeProduct != lOther$likeProduct) {
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

extension UtilityExtension$Mutation$likeProduct on Mutation$likeProduct {
  CopyWith$Mutation$likeProduct<Mutation$likeProduct> get copyWith =>
      CopyWith$Mutation$likeProduct(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$likeProduct<TRes> {
  factory CopyWith$Mutation$likeProduct(
    Mutation$likeProduct instance,
    TRes Function(Mutation$likeProduct) then,
  ) = _CopyWithImpl$Mutation$likeProduct;

  factory CopyWith$Mutation$likeProduct.stub(TRes res) =
      _CopyWithStubImpl$Mutation$likeProduct;

  TRes call({
    Mutation$likeProduct$likeProduct? likeProduct,
    String? $__typename,
  });
  CopyWith$Mutation$likeProduct$likeProduct<TRes> get likeProduct;
}

class _CopyWithImpl$Mutation$likeProduct<TRes>
    implements CopyWith$Mutation$likeProduct<TRes> {
  _CopyWithImpl$Mutation$likeProduct(
    this._instance,
    this._then,
  );

  final Mutation$likeProduct _instance;

  final TRes Function(Mutation$likeProduct) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? likeProduct = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$likeProduct(
        likeProduct: likeProduct == _undefined
            ? _instance.likeProduct
            : (likeProduct as Mutation$likeProduct$likeProduct?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$likeProduct$likeProduct<TRes> get likeProduct {
    final local$likeProduct = _instance.likeProduct;
    return local$likeProduct == null
        ? CopyWith$Mutation$likeProduct$likeProduct.stub(_then(_instance))
        : CopyWith$Mutation$likeProduct$likeProduct(
            local$likeProduct, (e) => call(likeProduct: e));
  }
}

class _CopyWithStubImpl$Mutation$likeProduct<TRes>
    implements CopyWith$Mutation$likeProduct<TRes> {
  _CopyWithStubImpl$Mutation$likeProduct(this._res);

  TRes _res;

  call({
    Mutation$likeProduct$likeProduct? likeProduct,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$likeProduct$likeProduct<TRes> get likeProduct =>
      CopyWith$Mutation$likeProduct$likeProduct.stub(_res);
}

const documentNodeMutationlikeProduct = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'likeProduct'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'productId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'likeProduct'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'productId'),
            value: VariableNode(name: NameNode(value: 'productId')),
          )
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
Mutation$likeProduct _parserFn$Mutation$likeProduct(
        Map<String, dynamic> data) =>
    Mutation$likeProduct.fromJson(data);
typedef OnMutationCompleted$Mutation$likeProduct = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$likeProduct?,
);

class Options$Mutation$likeProduct
    extends graphql.MutationOptions<Mutation$likeProduct> {
  Options$Mutation$likeProduct({
    String? operationName,
    required Variables$Mutation$likeProduct variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$likeProduct? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$likeProduct? onCompleted,
    graphql.OnMutationUpdate<Mutation$likeProduct>? update,
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
                    data == null ? null : _parserFn$Mutation$likeProduct(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationlikeProduct,
          parserFn: _parserFn$Mutation$likeProduct,
        );

  final OnMutationCompleted$Mutation$likeProduct? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$likeProduct
    extends graphql.WatchQueryOptions<Mutation$likeProduct> {
  WatchOptions$Mutation$likeProduct({
    String? operationName,
    required Variables$Mutation$likeProduct variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$likeProduct? typedOptimisticResult,
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
          document: documentNodeMutationlikeProduct,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$likeProduct,
        );
}

extension ClientExtension$Mutation$likeProduct on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$likeProduct>> mutate$likeProduct(
          Options$Mutation$likeProduct options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$likeProduct> watchMutation$likeProduct(
          WatchOptions$Mutation$likeProduct options) =>
      this.watchMutation(options);
}

class Mutation$likeProduct$likeProduct {
  Mutation$likeProduct$likeProduct({
    this.success,
    this.$__typename = 'LikeProduct',
  });

  factory Mutation$likeProduct$likeProduct.fromJson(Map<String, dynamic> json) {
    final l$success = json['success'];
    final l$$__typename = json['__typename'];
    return Mutation$likeProduct$likeProduct(
      success: (l$success as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool? success;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$success = success;
    _resultData['success'] = l$success;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$success = success;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$success,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$likeProduct$likeProduct ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$success = success;
    final lOther$success = other.success;
    if (l$success != lOther$success) {
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

extension UtilityExtension$Mutation$likeProduct$likeProduct
    on Mutation$likeProduct$likeProduct {
  CopyWith$Mutation$likeProduct$likeProduct<Mutation$likeProduct$likeProduct>
      get copyWith => CopyWith$Mutation$likeProduct$likeProduct(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$likeProduct$likeProduct<TRes> {
  factory CopyWith$Mutation$likeProduct$likeProduct(
    Mutation$likeProduct$likeProduct instance,
    TRes Function(Mutation$likeProduct$likeProduct) then,
  ) = _CopyWithImpl$Mutation$likeProduct$likeProduct;

  factory CopyWith$Mutation$likeProduct$likeProduct.stub(TRes res) =
      _CopyWithStubImpl$Mutation$likeProduct$likeProduct;

  TRes call({
    bool? success,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$likeProduct$likeProduct<TRes>
    implements CopyWith$Mutation$likeProduct$likeProduct<TRes> {
  _CopyWithImpl$Mutation$likeProduct$likeProduct(
    this._instance,
    this._then,
  );

  final Mutation$likeProduct$likeProduct _instance;

  final TRes Function(Mutation$likeProduct$likeProduct) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? success = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$likeProduct$likeProduct(
        success: success == _undefined ? _instance.success : (success as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$likeProduct$likeProduct<TRes>
    implements CopyWith$Mutation$likeProduct$likeProduct<TRes> {
  _CopyWithStubImpl$Mutation$likeProduct$likeProduct(this._res);

  TRes _res;

  call({
    bool? success,
    String? $__typename,
  }) =>
      _res;
}
