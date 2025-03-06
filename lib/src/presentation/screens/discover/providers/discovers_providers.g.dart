// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discovers_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$categoryTabsHash() => r'7ae0b0b83bcf3ce779c3f4cf7784f4df4f811aca';

/// See also [categoryTabs].
@ProviderFor(categoryTabs)
final categoryTabsProvider =
    AutoDisposeProvider<List<NewsCategoryEnum>>.internal(
      categoryTabs,
      name: r'categoryTabsProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$categoryTabsHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef CategoryTabsRef = AutoDisposeProviderRef<List<NewsCategoryEnum>>;
String _$filteredNewsHash() => r'31d4765cb6f4714111ab9e5564ed060de2c9b150';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [filteredNews].
@ProviderFor(filteredNews)
const filteredNewsProvider = FilteredNewsFamily();

/// See also [filteredNews].
class FilteredNewsFamily extends Family<List<NewsModel>> {
  /// See also [filteredNews].
  const FilteredNewsFamily();

  /// See also [filteredNews].
  FilteredNewsProvider call(NewsCategoryEnum category) {
    return FilteredNewsProvider(category);
  }

  @override
  FilteredNewsProvider getProviderOverride(
    covariant FilteredNewsProvider provider,
  ) {
    return call(provider.category);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'filteredNewsProvider';
}

/// See also [filteredNews].
class FilteredNewsProvider extends AutoDisposeProvider<List<NewsModel>> {
  /// See also [filteredNews].
  FilteredNewsProvider(NewsCategoryEnum category)
    : this._internal(
        (ref) => filteredNews(ref as FilteredNewsRef, category),
        from: filteredNewsProvider,
        name: r'filteredNewsProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$filteredNewsHash,
        dependencies: FilteredNewsFamily._dependencies,
        allTransitiveDependencies:
            FilteredNewsFamily._allTransitiveDependencies,
        category: category,
      );

  FilteredNewsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.category,
  }) : super.internal();

  final NewsCategoryEnum category;

  @override
  Override overrideWith(
    List<NewsModel> Function(FilteredNewsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FilteredNewsProvider._internal(
        (ref) => create(ref as FilteredNewsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        category: category,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<List<NewsModel>> createElement() {
    return _FilteredNewsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FilteredNewsProvider && other.category == category;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, category.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin FilteredNewsRef on AutoDisposeProviderRef<List<NewsModel>> {
  /// The parameter `category` of this provider.
  NewsCategoryEnum get category;
}

class _FilteredNewsProviderElement
    extends AutoDisposeProviderElement<List<NewsModel>>
    with FilteredNewsRef {
  _FilteredNewsProviderElement(super.provider);

  @override
  NewsCategoryEnum get category => (origin as FilteredNewsProvider).category;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
