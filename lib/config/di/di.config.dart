// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../feature/home/data/api/api_client.dart' as _i110;
import '../../feature/home/data/data_source/remote_data_source.contract.dart'
    as _i858;
import '../../feature/home/data/data_source/remote_data_source.dart' as _i138;
import '../../feature/home/data/repo_impl/home_repo_impl.dart' as _i271;
import '../../feature/home/domain/repo/home_repo_contract.dart' as _i401;
import '../../feature/home/domain/use_case/get_categories_use_case.dart'
    as _i283;
import '../../feature/home/domain/use_case/get_products_use_case.dart' as _i194;
import '../../feature/home/presntation/view_model/home_view_model.dart'
    as _i362;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i858.RemoteDataSourceContract>(
      () => _i138.RemoteDataSource(gh<_i110.ApiClient>()),
    );
    gh.factory<_i401.HomeRepoContract>(
      () => _i271.HomeRepoImpl(gh<_i858.RemoteDataSourceContract>()),
    );
    gh.factory<_i194.GetProductsUseCase>(
      () => _i194.GetProductsUseCase(gh<_i401.HomeRepoContract>()),
    );
    gh.factory<_i362.HomeViewModel>(
      () => _i362.HomeViewModel(
        gh<_i194.GetProductsUseCase>(),
        gh<_i283.GetCategoriesUseCase>(),
      ),
    );
    return this;
  }
}
