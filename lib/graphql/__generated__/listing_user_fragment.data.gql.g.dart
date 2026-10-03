// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listing_user_fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GlistingUserFragmentData> _$glistingUserFragmentDataSerializer =
    new _$GlistingUserFragmentDataSerializer();
Serializer<GlistingUserFragmentData_profile>
    _$glistingUserFragmentDataProfileSerializer =
    new _$GlistingUserFragmentData_profileSerializer();
Serializer<GlistingUserFragmentData_verification>
    _$glistingUserFragmentDataVerificationSerializer =
    new _$GlistingUserFragmentData_verificationSerializer();

class _$GlistingUserFragmentDataSerializer
    implements StructuredSerializer<GlistingUserFragmentData> {
  @override
  final Iterable<Type> types = const [
    GlistingUserFragmentData,
    _$GlistingUserFragmentData
  ];
  @override
  final String wireName = 'GlistingUserFragmentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GlistingUserFragmentData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.profile;
    if (value != null) {
      result
        ..add('profile')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GlistingUserFragmentData_profile)));
    }
    value = object.verification;
    if (value != null) {
      result
        ..add('verification')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GlistingUserFragmentData_verification)));
    }
    value = object.userBanStatus;
    if (value != null) {
      result
        ..add('userBanStatus')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GlistingUserFragmentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GlistingUserFragmentDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'profile':
          result.profile.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GlistingUserFragmentData_profile))!
              as GlistingUserFragmentData_profile);
          break;
        case 'verification':
          result.verification.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GlistingUserFragmentData_verification))!
              as GlistingUserFragmentData_verification);
          break;
        case 'userBanStatus':
          result.userBanStatus = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GlistingUserFragmentData_profileSerializer
    implements StructuredSerializer<GlistingUserFragmentData_profile> {
  @override
  final Iterable<Type> types = const [
    GlistingUserFragmentData_profile,
    _$GlistingUserFragmentData_profile
  ];
  @override
  final String wireName = 'GlistingUserFragmentData_profile';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GlistingUserFragmentData_profile object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.profileId;
    if (value != null) {
      result
        ..add('profileId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.firstName;
    if (value != null) {
      result
        ..add('firstName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lastName;
    if (value != null) {
      result
        ..add('lastName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('displayName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.picture;
    if (value != null) {
      result
        ..add('picture')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.info;
    if (value != null) {
      result
        ..add('info')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GlistingUserFragmentData_profile deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GlistingUserFragmentData_profileBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'profileId':
          result.profileId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'displayName':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'picture':
          result.picture = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'info':
          result.info = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GlistingUserFragmentData_verificationSerializer
    implements StructuredSerializer<GlistingUserFragmentData_verification> {
  @override
  final Iterable<Type> types = const [
    GlistingUserFragmentData_verification,
    _$GlistingUserFragmentData_verification
  ];
  @override
  final String wireName = 'GlistingUserFragmentData_verification';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GlistingUserFragmentData_verification object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'userId',
      serializers.serialize(object.userId,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.isEmailConfirmed;
    if (value != null) {
      result
        ..add('isEmailConfirmed')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isFacebookConnected;
    if (value != null) {
      result
        ..add('isFacebookConnected')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isGoogleConnected;
    if (value != null) {
      result
        ..add('isGoogleConnected')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isIdVerification;
    if (value != null) {
      result
        ..add('isIdVerification')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isPhoneVerified;
    if (value != null) {
      result
        ..add('isPhoneVerified')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GlistingUserFragmentData_verification deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GlistingUserFragmentData_verificationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'isEmailConfirmed':
          result.isEmailConfirmed = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isFacebookConnected':
          result.isFacebookConnected = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isGoogleConnected':
          result.isGoogleConnected = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isIdVerification':
          result.isIdVerification = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isPhoneVerified':
          result.isPhoneVerified = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GlistingUserFragmentData extends GlistingUserFragmentData {
  @override
  final String G__typename;
  @override
  final String? email;
  @override
  final GlistingUserFragmentData_profile? profile;
  @override
  final GlistingUserFragmentData_verification? verification;
  @override
  final int? userBanStatus;

  factory _$GlistingUserFragmentData(
          [void Function(GlistingUserFragmentDataBuilder)? updates]) =>
      (new GlistingUserFragmentDataBuilder()..update(updates))._build();

  _$GlistingUserFragmentData._(
      {required this.G__typename,
      this.email,
      this.profile,
      this.verification,
      this.userBanStatus})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GlistingUserFragmentData', 'G__typename');
  }

  @override
  GlistingUserFragmentData rebuild(
          void Function(GlistingUserFragmentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GlistingUserFragmentDataBuilder toBuilder() =>
      new GlistingUserFragmentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GlistingUserFragmentData &&
        G__typename == other.G__typename &&
        email == other.email &&
        profile == other.profile &&
        verification == other.verification &&
        userBanStatus == other.userBanStatus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, profile.hashCode);
    _$hash = $jc(_$hash, verification.hashCode);
    _$hash = $jc(_$hash, userBanStatus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GlistingUserFragmentData')
          ..add('G__typename', G__typename)
          ..add('email', email)
          ..add('profile', profile)
          ..add('verification', verification)
          ..add('userBanStatus', userBanStatus))
        .toString();
  }
}

class GlistingUserFragmentDataBuilder
    implements
        Builder<GlistingUserFragmentData, GlistingUserFragmentDataBuilder> {
  _$GlistingUserFragmentData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  GlistingUserFragmentData_profileBuilder? _profile;
  GlistingUserFragmentData_profileBuilder get profile =>
      _$this._profile ??= new GlistingUserFragmentData_profileBuilder();
  set profile(GlistingUserFragmentData_profileBuilder? profile) =>
      _$this._profile = profile;

  GlistingUserFragmentData_verificationBuilder? _verification;
  GlistingUserFragmentData_verificationBuilder get verification =>
      _$this._verification ??=
          new GlistingUserFragmentData_verificationBuilder();
  set verification(
          GlistingUserFragmentData_verificationBuilder? verification) =>
      _$this._verification = verification;

  int? _userBanStatus;
  int? get userBanStatus => _$this._userBanStatus;
  set userBanStatus(int? userBanStatus) =>
      _$this._userBanStatus = userBanStatus;

  GlistingUserFragmentDataBuilder() {
    GlistingUserFragmentData._initializeBuilder(this);
  }

  GlistingUserFragmentDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _email = $v.email;
      _profile = $v.profile?.toBuilder();
      _verification = $v.verification?.toBuilder();
      _userBanStatus = $v.userBanStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GlistingUserFragmentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GlistingUserFragmentData;
  }

  @override
  void update(void Function(GlistingUserFragmentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GlistingUserFragmentData build() => _build();

  _$GlistingUserFragmentData _build() {
    _$GlistingUserFragmentData _$result;
    try {
      _$result = _$v ??
          new _$GlistingUserFragmentData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GlistingUserFragmentData', 'G__typename'),
              email: email,
              profile: _profile?.build(),
              verification: _verification?.build(),
              userBanStatus: userBanStatus);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'profile';
        _profile?.build();
        _$failedField = 'verification';
        _verification?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GlistingUserFragmentData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GlistingUserFragmentData_profile
    extends GlistingUserFragmentData_profile {
  @override
  final String G__typename;
  @override
  final int? profileId;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? displayName;
  @override
  final String? picture;
  @override
  final String? location;
  @override
  final String? info;
  @override
  final String? createdAt;

  factory _$GlistingUserFragmentData_profile(
          [void Function(GlistingUserFragmentData_profileBuilder)? updates]) =>
      (new GlistingUserFragmentData_profileBuilder()..update(updates))._build();

  _$GlistingUserFragmentData_profile._(
      {required this.G__typename,
      this.profileId,
      this.firstName,
      this.lastName,
      this.displayName,
      this.picture,
      this.location,
      this.info,
      this.createdAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GlistingUserFragmentData_profile', 'G__typename');
  }

  @override
  GlistingUserFragmentData_profile rebuild(
          void Function(GlistingUserFragmentData_profileBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GlistingUserFragmentData_profileBuilder toBuilder() =>
      new GlistingUserFragmentData_profileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GlistingUserFragmentData_profile &&
        G__typename == other.G__typename &&
        profileId == other.profileId &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        displayName == other.displayName &&
        picture == other.picture &&
        location == other.location &&
        info == other.info &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, profileId.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, picture.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, info.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GlistingUserFragmentData_profile')
          ..add('G__typename', G__typename)
          ..add('profileId', profileId)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('displayName', displayName)
          ..add('picture', picture)
          ..add('location', location)
          ..add('info', info)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class GlistingUserFragmentData_profileBuilder
    implements
        Builder<GlistingUserFragmentData_profile,
            GlistingUserFragmentData_profileBuilder> {
  _$GlistingUserFragmentData_profile? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _profileId;
  int? get profileId => _$this._profileId;
  set profileId(int? profileId) => _$this._profileId = profileId;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _picture;
  String? get picture => _$this._picture;
  set picture(String? picture) => _$this._picture = picture;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  String? _info;
  String? get info => _$this._info;
  set info(String? info) => _$this._info = info;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  GlistingUserFragmentData_profileBuilder() {
    GlistingUserFragmentData_profile._initializeBuilder(this);
  }

  GlistingUserFragmentData_profileBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _profileId = $v.profileId;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _displayName = $v.displayName;
      _picture = $v.picture;
      _location = $v.location;
      _info = $v.info;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GlistingUserFragmentData_profile other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GlistingUserFragmentData_profile;
  }

  @override
  void update(void Function(GlistingUserFragmentData_profileBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GlistingUserFragmentData_profile build() => _build();

  _$GlistingUserFragmentData_profile _build() {
    final _$result = _$v ??
        new _$GlistingUserFragmentData_profile._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GlistingUserFragmentData_profile', 'G__typename'),
            profileId: profileId,
            firstName: firstName,
            lastName: lastName,
            displayName: displayName,
            picture: picture,
            location: location,
            info: info,
            createdAt: createdAt);
    replace(_$result);
    return _$result;
  }
}

class _$GlistingUserFragmentData_verification
    extends GlistingUserFragmentData_verification {
  @override
  final String G__typename;
  @override
  final String userId;
  @override
  final bool? isEmailConfirmed;
  @override
  final bool? isFacebookConnected;
  @override
  final bool? isGoogleConnected;
  @override
  final bool? isIdVerification;
  @override
  final bool? isPhoneVerified;

  factory _$GlistingUserFragmentData_verification(
          [void Function(GlistingUserFragmentData_verificationBuilder)?
              updates]) =>
      (new GlistingUserFragmentData_verificationBuilder()..update(updates))
          ._build();

  _$GlistingUserFragmentData_verification._(
      {required this.G__typename,
      required this.userId,
      this.isEmailConfirmed,
      this.isFacebookConnected,
      this.isGoogleConnected,
      this.isIdVerification,
      this.isPhoneVerified})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GlistingUserFragmentData_verification', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        userId, r'GlistingUserFragmentData_verification', 'userId');
  }

  @override
  GlistingUserFragmentData_verification rebuild(
          void Function(GlistingUserFragmentData_verificationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GlistingUserFragmentData_verificationBuilder toBuilder() =>
      new GlistingUserFragmentData_verificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GlistingUserFragmentData_verification &&
        G__typename == other.G__typename &&
        userId == other.userId &&
        isEmailConfirmed == other.isEmailConfirmed &&
        isFacebookConnected == other.isFacebookConnected &&
        isGoogleConnected == other.isGoogleConnected &&
        isIdVerification == other.isIdVerification &&
        isPhoneVerified == other.isPhoneVerified;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, isEmailConfirmed.hashCode);
    _$hash = $jc(_$hash, isFacebookConnected.hashCode);
    _$hash = $jc(_$hash, isGoogleConnected.hashCode);
    _$hash = $jc(_$hash, isIdVerification.hashCode);
    _$hash = $jc(_$hash, isPhoneVerified.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GlistingUserFragmentData_verification')
          ..add('G__typename', G__typename)
          ..add('userId', userId)
          ..add('isEmailConfirmed', isEmailConfirmed)
          ..add('isFacebookConnected', isFacebookConnected)
          ..add('isGoogleConnected', isGoogleConnected)
          ..add('isIdVerification', isIdVerification)
          ..add('isPhoneVerified', isPhoneVerified))
        .toString();
  }
}

class GlistingUserFragmentData_verificationBuilder
    implements
        Builder<GlistingUserFragmentData_verification,
            GlistingUserFragmentData_verificationBuilder> {
  _$GlistingUserFragmentData_verification? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  bool? _isEmailConfirmed;
  bool? get isEmailConfirmed => _$this._isEmailConfirmed;
  set isEmailConfirmed(bool? isEmailConfirmed) =>
      _$this._isEmailConfirmed = isEmailConfirmed;

  bool? _isFacebookConnected;
  bool? get isFacebookConnected => _$this._isFacebookConnected;
  set isFacebookConnected(bool? isFacebookConnected) =>
      _$this._isFacebookConnected = isFacebookConnected;

  bool? _isGoogleConnected;
  bool? get isGoogleConnected => _$this._isGoogleConnected;
  set isGoogleConnected(bool? isGoogleConnected) =>
      _$this._isGoogleConnected = isGoogleConnected;

  bool? _isIdVerification;
  bool? get isIdVerification => _$this._isIdVerification;
  set isIdVerification(bool? isIdVerification) =>
      _$this._isIdVerification = isIdVerification;

  bool? _isPhoneVerified;
  bool? get isPhoneVerified => _$this._isPhoneVerified;
  set isPhoneVerified(bool? isPhoneVerified) =>
      _$this._isPhoneVerified = isPhoneVerified;

  GlistingUserFragmentData_verificationBuilder() {
    GlistingUserFragmentData_verification._initializeBuilder(this);
  }

  GlistingUserFragmentData_verificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userId = $v.userId;
      _isEmailConfirmed = $v.isEmailConfirmed;
      _isFacebookConnected = $v.isFacebookConnected;
      _isGoogleConnected = $v.isGoogleConnected;
      _isIdVerification = $v.isIdVerification;
      _isPhoneVerified = $v.isPhoneVerified;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GlistingUserFragmentData_verification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GlistingUserFragmentData_verification;
  }

  @override
  void update(
      void Function(GlistingUserFragmentData_verificationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GlistingUserFragmentData_verification build() => _build();

  _$GlistingUserFragmentData_verification _build() {
    final _$result = _$v ??
        new _$GlistingUserFragmentData_verification._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GlistingUserFragmentData_verification', 'G__typename'),
            userId: BuiltValueNullFieldError.checkNotNull(
                userId, r'GlistingUserFragmentData_verification', 'userId'),
            isEmailConfirmed: isEmailConfirmed,
            isFacebookConnected: isFacebookConnected,
            isGoogleConnected: isGoogleConnected,
            isIdVerification: isIdVerification,
            isPhoneVerified: isPhoneVerified);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
