// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GuserProfileFragmentData> _$guserProfileFragmentDataSerializer =
    new _$GuserProfileFragmentDataSerializer();
Serializer<GuserProfileFragmentData_userData>
    _$guserProfileFragmentDataUserDataSerializer =
    new _$GuserProfileFragmentData_userDataSerializer();
Serializer<GuserProfileFragmentData_userVerification>
    _$guserProfileFragmentDataUserVerificationSerializer =
    new _$GuserProfileFragmentData_userVerificationSerializer();

class _$GuserProfileFragmentDataSerializer
    implements StructuredSerializer<GuserProfileFragmentData> {
  @override
  final Iterable<Type> types = const [
    GuserProfileFragmentData,
    _$GuserProfileFragmentData
  ];
  @override
  final String wireName = 'GuserProfileFragmentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GuserProfileFragmentData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userData;
    if (value != null) {
      result
        ..add('userData')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GuserProfileFragmentData_userData)));
    }
    value = object.userVerification;
    if (value != null) {
      result
        ..add('userVerification')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GuserProfileFragmentData_userVerification)));
    }
    value = object.reviewsCount;
    if (value != null) {
      result
        ..add('reviewsCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
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
    value = object.dateOfBirth;
    if (value != null) {
      result
        ..add('dateOfBirth')
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
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phoneNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fullPhoneNumber;
    if (value != null) {
      result
        ..add('fullPhoneNumber')
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
  GuserProfileFragmentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GuserProfileFragmentDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'userData':
          result.userData.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GuserProfileFragmentData_userData))!
              as GuserProfileFragmentData_userData);
          break;
        case 'userVerification':
          result.userVerification.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GuserProfileFragmentData_userVerification))!
              as GuserProfileFragmentData_userVerification);
          break;
        case 'reviewsCount':
          result.reviewsCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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
        case 'dateOfBirth':
          result.dateOfBirth = serializers.deserialize(value,
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
        case 'phoneNumber':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'fullPhoneNumber':
          result.fullPhoneNumber = serializers.deserialize(value,
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

class _$GuserProfileFragmentData_userDataSerializer
    implements StructuredSerializer<GuserProfileFragmentData_userData> {
  @override
  final Iterable<Type> types = const [
    GuserProfileFragmentData_userData,
    _$GuserProfileFragmentData_userData
  ];
  @override
  final String wireName = 'GuserProfileFragmentData_userData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GuserProfileFragmentData_userData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userBanStatus;
    if (value != null) {
      result
        ..add('userBanStatus')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.gender;
    if (value != null) {
      result
        ..add('gender')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GuserProfileFragmentData_userData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GuserProfileFragmentData_userDataBuilder();

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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userBanStatus':
          result.userBanStatus = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GuserProfileFragmentData_userVerificationSerializer
    implements StructuredSerializer<GuserProfileFragmentData_userVerification> {
  @override
  final Iterable<Type> types = const [
    GuserProfileFragmentData_userVerification,
    _$GuserProfileFragmentData_userVerification
  ];
  @override
  final String wireName = 'GuserProfileFragmentData_userVerification';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GuserProfileFragmentData_userVerification object,
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
  GuserProfileFragmentData_userVerification deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GuserProfileFragmentData_userVerificationBuilder();

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

class _$GuserProfileFragmentData extends GuserProfileFragmentData {
  @override
  final String? id;
  @override
  final String G__typename;
  @override
  final GuserProfileFragmentData_userData? userData;
  @override
  final GuserProfileFragmentData_userVerification? userVerification;
  @override
  final int? reviewsCount;
  @override
  final int? profileId;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? displayName;
  @override
  final String? dateOfBirth;
  @override
  final String? picture;
  @override
  final String? location;
  @override
  final String? phoneNumber;
  @override
  final String? fullPhoneNumber;
  @override
  final String? info;
  @override
  final String? createdAt;

  factory _$GuserProfileFragmentData(
          [void Function(GuserProfileFragmentDataBuilder)? updates]) =>
      (new GuserProfileFragmentDataBuilder()..update(updates))._build();

  _$GuserProfileFragmentData._(
      {this.id,
      required this.G__typename,
      this.userData,
      this.userVerification,
      this.reviewsCount,
      this.profileId,
      this.firstName,
      this.lastName,
      this.displayName,
      this.dateOfBirth,
      this.picture,
      this.location,
      this.phoneNumber,
      this.fullPhoneNumber,
      this.info,
      this.createdAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GuserProfileFragmentData', 'G__typename');
  }

  @override
  GuserProfileFragmentData rebuild(
          void Function(GuserProfileFragmentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GuserProfileFragmentDataBuilder toBuilder() =>
      new GuserProfileFragmentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GuserProfileFragmentData &&
        id == other.id &&
        G__typename == other.G__typename &&
        userData == other.userData &&
        userVerification == other.userVerification &&
        reviewsCount == other.reviewsCount &&
        profileId == other.profileId &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        displayName == other.displayName &&
        dateOfBirth == other.dateOfBirth &&
        picture == other.picture &&
        location == other.location &&
        phoneNumber == other.phoneNumber &&
        fullPhoneNumber == other.fullPhoneNumber &&
        info == other.info &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, userData.hashCode);
    _$hash = $jc(_$hash, userVerification.hashCode);
    _$hash = $jc(_$hash, reviewsCount.hashCode);
    _$hash = $jc(_$hash, profileId.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, dateOfBirth.hashCode);
    _$hash = $jc(_$hash, picture.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, fullPhoneNumber.hashCode);
    _$hash = $jc(_$hash, info.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GuserProfileFragmentData')
          ..add('id', id)
          ..add('G__typename', G__typename)
          ..add('userData', userData)
          ..add('userVerification', userVerification)
          ..add('reviewsCount', reviewsCount)
          ..add('profileId', profileId)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('displayName', displayName)
          ..add('dateOfBirth', dateOfBirth)
          ..add('picture', picture)
          ..add('location', location)
          ..add('phoneNumber', phoneNumber)
          ..add('fullPhoneNumber', fullPhoneNumber)
          ..add('info', info)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class GuserProfileFragmentDataBuilder
    implements
        Builder<GuserProfileFragmentData, GuserProfileFragmentDataBuilder> {
  _$GuserProfileFragmentData? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GuserProfileFragmentData_userDataBuilder? _userData;
  GuserProfileFragmentData_userDataBuilder get userData =>
      _$this._userData ??= new GuserProfileFragmentData_userDataBuilder();
  set userData(GuserProfileFragmentData_userDataBuilder? userData) =>
      _$this._userData = userData;

  GuserProfileFragmentData_userVerificationBuilder? _userVerification;
  GuserProfileFragmentData_userVerificationBuilder get userVerification =>
      _$this._userVerification ??=
          new GuserProfileFragmentData_userVerificationBuilder();
  set userVerification(
          GuserProfileFragmentData_userVerificationBuilder? userVerification) =>
      _$this._userVerification = userVerification;

  int? _reviewsCount;
  int? get reviewsCount => _$this._reviewsCount;
  set reviewsCount(int? reviewsCount) => _$this._reviewsCount = reviewsCount;

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

  String? _dateOfBirth;
  String? get dateOfBirth => _$this._dateOfBirth;
  set dateOfBirth(String? dateOfBirth) => _$this._dateOfBirth = dateOfBirth;

  String? _picture;
  String? get picture => _$this._picture;
  set picture(String? picture) => _$this._picture = picture;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _fullPhoneNumber;
  String? get fullPhoneNumber => _$this._fullPhoneNumber;
  set fullPhoneNumber(String? fullPhoneNumber) =>
      _$this._fullPhoneNumber = fullPhoneNumber;

  String? _info;
  String? get info => _$this._info;
  set info(String? info) => _$this._info = info;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  GuserProfileFragmentDataBuilder() {
    GuserProfileFragmentData._initializeBuilder(this);
  }

  GuserProfileFragmentDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _G__typename = $v.G__typename;
      _userData = $v.userData?.toBuilder();
      _userVerification = $v.userVerification?.toBuilder();
      _reviewsCount = $v.reviewsCount;
      _profileId = $v.profileId;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _displayName = $v.displayName;
      _dateOfBirth = $v.dateOfBirth;
      _picture = $v.picture;
      _location = $v.location;
      _phoneNumber = $v.phoneNumber;
      _fullPhoneNumber = $v.fullPhoneNumber;
      _info = $v.info;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GuserProfileFragmentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GuserProfileFragmentData;
  }

  @override
  void update(void Function(GuserProfileFragmentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GuserProfileFragmentData build() => _build();

  _$GuserProfileFragmentData _build() {
    _$GuserProfileFragmentData _$result;
    try {
      _$result = _$v ??
          new _$GuserProfileFragmentData._(
              id: id,
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GuserProfileFragmentData', 'G__typename'),
              userData: _userData?.build(),
              userVerification: _userVerification?.build(),
              reviewsCount: reviewsCount,
              profileId: profileId,
              firstName: firstName,
              lastName: lastName,
              displayName: displayName,
              dateOfBirth: dateOfBirth,
              picture: picture,
              location: location,
              phoneNumber: phoneNumber,
              fullPhoneNumber: fullPhoneNumber,
              info: info,
              createdAt: createdAt);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userData';
        _userData?.build();
        _$failedField = 'userVerification';
        _userVerification?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GuserProfileFragmentData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GuserProfileFragmentData_userData
    extends GuserProfileFragmentData_userData {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String? email;
  @override
  final int? userBanStatus;
  @override
  final String? gender;

  factory _$GuserProfileFragmentData_userData(
          [void Function(GuserProfileFragmentData_userDataBuilder)? updates]) =>
      (new GuserProfileFragmentData_userDataBuilder()..update(updates))
          ._build();

  _$GuserProfileFragmentData_userData._(
      {required this.G__typename,
      required this.id,
      this.email,
      this.userBanStatus,
      this.gender})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GuserProfileFragmentData_userData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GuserProfileFragmentData_userData', 'id');
  }

  @override
  GuserProfileFragmentData_userData rebuild(
          void Function(GuserProfileFragmentData_userDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GuserProfileFragmentData_userDataBuilder toBuilder() =>
      new GuserProfileFragmentData_userDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GuserProfileFragmentData_userData &&
        G__typename == other.G__typename &&
        id == other.id &&
        email == other.email &&
        userBanStatus == other.userBanStatus &&
        gender == other.gender;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, userBanStatus.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GuserProfileFragmentData_userData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('email', email)
          ..add('userBanStatus', userBanStatus)
          ..add('gender', gender))
        .toString();
  }
}

class GuserProfileFragmentData_userDataBuilder
    implements
        Builder<GuserProfileFragmentData_userData,
            GuserProfileFragmentData_userDataBuilder> {
  _$GuserProfileFragmentData_userData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  int? _userBanStatus;
  int? get userBanStatus => _$this._userBanStatus;
  set userBanStatus(int? userBanStatus) =>
      _$this._userBanStatus = userBanStatus;

  String? _gender;
  String? get gender => _$this._gender;
  set gender(String? gender) => _$this._gender = gender;

  GuserProfileFragmentData_userDataBuilder() {
    GuserProfileFragmentData_userData._initializeBuilder(this);
  }

  GuserProfileFragmentData_userDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _email = $v.email;
      _userBanStatus = $v.userBanStatus;
      _gender = $v.gender;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GuserProfileFragmentData_userData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GuserProfileFragmentData_userData;
  }

  @override
  void update(
      void Function(GuserProfileFragmentData_userDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GuserProfileFragmentData_userData build() => _build();

  _$GuserProfileFragmentData_userData _build() {
    final _$result = _$v ??
        new _$GuserProfileFragmentData_userData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GuserProfileFragmentData_userData', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GuserProfileFragmentData_userData', 'id'),
            email: email,
            userBanStatus: userBanStatus,
            gender: gender);
    replace(_$result);
    return _$result;
  }
}

class _$GuserProfileFragmentData_userVerification
    extends GuserProfileFragmentData_userVerification {
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

  factory _$GuserProfileFragmentData_userVerification(
          [void Function(GuserProfileFragmentData_userVerificationBuilder)?
              updates]) =>
      (new GuserProfileFragmentData_userVerificationBuilder()..update(updates))
          ._build();

  _$GuserProfileFragmentData_userVerification._(
      {required this.G__typename,
      required this.userId,
      this.isEmailConfirmed,
      this.isFacebookConnected,
      this.isGoogleConnected,
      this.isIdVerification,
      this.isPhoneVerified})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GuserProfileFragmentData_userVerification', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        userId, r'GuserProfileFragmentData_userVerification', 'userId');
  }

  @override
  GuserProfileFragmentData_userVerification rebuild(
          void Function(GuserProfileFragmentData_userVerificationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GuserProfileFragmentData_userVerificationBuilder toBuilder() =>
      new GuserProfileFragmentData_userVerificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GuserProfileFragmentData_userVerification &&
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
            r'GuserProfileFragmentData_userVerification')
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

class GuserProfileFragmentData_userVerificationBuilder
    implements
        Builder<GuserProfileFragmentData_userVerification,
            GuserProfileFragmentData_userVerificationBuilder> {
  _$GuserProfileFragmentData_userVerification? _$v;

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

  GuserProfileFragmentData_userVerificationBuilder() {
    GuserProfileFragmentData_userVerification._initializeBuilder(this);
  }

  GuserProfileFragmentData_userVerificationBuilder get _$this {
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
  void replace(GuserProfileFragmentData_userVerification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GuserProfileFragmentData_userVerification;
  }

  @override
  void update(
      void Function(GuserProfileFragmentData_userVerificationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GuserProfileFragmentData_userVerification build() => _build();

  _$GuserProfileFragmentData_userVerification _build() {
    final _$result = _$v ??
        new _$GuserProfileFragmentData_userVerification._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GuserProfileFragmentData_userVerification', 'G__typename'),
            userId: BuiltValueNullFieldError.checkNotNull(
                userId, r'GuserProfileFragmentData_userVerification', 'userId'),
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
