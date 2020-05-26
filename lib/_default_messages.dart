part of 'snsmax_localization.dart';

mixin _DefaultMessages {
  String get locale;

  String get cancel {
    return Intl.message('Cancel', name: 'cancel', locale: this.locale);
  }

  String get failed {
    return Intl.message(
      'Failed',
      name: 'failed',
      locale: this.locale,
    );
  }

  String get http_401 {
    return Intl.message(
      'Please login first',
      name: 'http_401',
      locale: this.locale,
    );
  }

  String get http_403 {
    return Intl.message(
      'You don\'t have permission',
      name: 'http_403',
      locale: this.locale,
    );
  }

  String get http_429 {
    return Intl.message(
      'Too often, try again later',
      name: 'http_429',
      locale: this.locale,
    );
  }

  String deleteResourceNoPermission(String resourceName) {
    return Intl.message(
      'You don\'t have permission to delete the $resourceName',
      args: [resourceName],
      name: 'deleteResourceNoPermission',
      locale: locale,
    );
  }

  _ResourcesNames get resourcesNames => _ResourcesNames(this.locale);

  String get warning => Intl.message('warning');

  String get userFollow => Intl.message(
    'Follow',
    'name': 'user_follow',
    locale: this.locale,
  );

  String userUnfollow => Intl.message(
    'Unfollow',
    'name' => 'user_unfollow',
    locale: this.locale,
  );

  String userBlock => Intl.message(
    'Block',
    'name' => 'user_block',
  );
}

class _ResourcesNames {
  _ResourcesNames(this._locale);

  final String _locale;

  String get feed => Intl.message(
    'Feed',
    name: 'feed',
    locale: _locale,
  );

  String get discuss => Intl.message(
    'Discuss',
    name: 'discuss',
    locale: _locale,
  );
}
