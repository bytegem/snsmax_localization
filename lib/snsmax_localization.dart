library snsmax_localization;

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import './src/messages_all.dart';

part '_default_messages.dart';

class SNSMaxLocalizations with _DefaultMessages {
  /// Cached the using locale name.
  final String _locale;

  /// Create the localizations instance.
  /// [locale] is using locale name.
  SNSMaxLocalizations(this._locale);

  /// Start loading the resources for `locale`. The returned future completes
  /// when the resources have finished loading.
  ///
  /// It's assumed that the this method will return an object that contains
  /// a collection of related resources (typically defined with one method per
  /// resource). The object will be retrieved with [SNSMaxLocalizations.of].
  static Future<SNSMaxLocalizations> load(Locale locale) {
    final String name = locale.countryCode.isEmpty ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);

    return initializeMessages(localeName).then((_) {
      return SNSMaxLocalizations(localeName);
    });
  }

  /// The [SNSMaxLocalizations] from the closest [Localizations] instance
  /// that encloses the given context.
  ///
  /// This method is just a convenient shorthand for:
  /// `SNSMaxLocalizations.of(context)`.
  ///
  /// References to the localized resources defined by this class are typically
  /// written in terms of this method. For example:
  ///
  /// ```dart
  /// FlatButton(onPressed: null, child: Text(SNSMaxLocalizations.of(context).cancel))
  /// ```
  static SNSMaxLocalizations of(BuildContext context) {
    return Localizations.of<SNSMaxLocalizations>(context, SNSMaxLocalizations);
  }

  /// The `SNSMaxLocalizationsDelegate` form the [SNSMaxLocalizationsDelegate] static 
  /// getter instance.
  /// 
  /// This method is just a convenient shorthand for:
  /// `SNSMaxLocalizations.delegate`.
  /// 
  /// References to the localized resources defined by this class are typically
  /// written in terms of this method. For example:
  ///
  /// ```dart
  /// MaterialApp(
  ///     localizationsDelegates: [
  ///       SNSMaxLocalizations.delegate
  ///     ],
  /// );
  /// ```
  static SNSMaxLocalizationsDelegate get delegate => const SNSMaxLocalizationsDelegate();

  /// Get your App using locale name.
  @override
  String get locale => _locale;
}

class SNSMaxLocalizationsDelegate extends LocalizationsDelegate<SNSMaxLocalizations> {
  /// Create the [SNSMaxLocalizationsDelegate] instance.
  const SNSMaxLocalizationsDelegate(): super();

  /// Whether resources for the given locale can be loaded by this delegate.
  ///
  /// Return true if the instance of `SNSMaxLocalizations` loaded by this delegate's [load]
  /// method supports the given `locale`'s language.
  @override
  bool isSupported(Locale locale) {
    return ['en', 'zh'].contains(locale.languageCode);
  }

  /// Start loading the resources for `locale`. The returned future completes
  /// when the resources have finished loading.
  ///
  /// It's assumed that the this method will return an object that contains
  /// a collection of related resources (typically defined with one method per
  /// resource). The object will be retrieved with [Localizations.of].
  @override
  Future<SNSMaxLocalizations> load(Locale locale) {
    return SNSMaxLocalizations.load(locale);
  }

  /// Returns true if the resources for this delegate should be loaded
  /// again by calling the [load] method.
  ///
  /// This method is called whenever its [Localizations] widget is
  /// rebuilt. If it returns true then dependent widgets will be rebuilt
  /// after [load] has completed.
  @override
  bool shouldReload(LocalizationsDelegate<SNSMaxLocalizations> old) {
    return false;
  }
}

