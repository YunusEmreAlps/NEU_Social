import 'package:bloc/bloc.dart';

part 'onboard_state.dart';

class OnboardCubit extends Cubit<OnboardState> {
  OnboardCubit() : super(OnboardState(page: 0));

  void incrementPage() =>
      emit(OnboardState(page: state.page < 2 ? state.page + 1 : state.page));

  void decrementPage() =>
      emit(OnboardState(page: state.page > 0 ? state.page - 1 : state.page));
}
