#!/bin/bash

## Crrate default messages arb file.
flutter pub run intl_translation:extract_to_arb \
    --output-dir=localization-arb \
    --locale=en \
    lib/_default_messages.dart;

## Using all arb files generate language dart.
flutter pub run intl_translation:generate_from_arb \
    --output-dir=lib/src --no-use-deferred-loading \
    lib/_default_messages.dart \
    localization-arb/intl_*.arb;
