
import 'package:bloc/bloc.dart';
import 'package:e_coomer/fetures/details/data/repo/details_rep_imp.dart';
import 'package:e_coomer/fetures/metrics/data/model/Iteam_model.dart';
import 'package:meta/meta.dart';

part 'detailscubit_state.dart';

class DetailscubitCubit extends Cubit<DetailscubitState> {
  DetailscubitCubit() : super(DetailscubitInitial());
  List<Item>? da;

  DetailsRepImp de = DetailsRepImp();
  Future<void> getYearlyData() async {
    emit(Detailscubitload());

    var res = await de.getYearlydata(da!);
    res.fold((l) {
      emit(DetailscubitFailure(message: l.message));
    }, (r) {
      emit(Detailscubitsucess(data: r));
    });
  }
}
