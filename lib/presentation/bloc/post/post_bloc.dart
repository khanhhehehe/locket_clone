import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

part 'food_event.dart';

@lazySingleton
class FoodBloc extends Bloc<FoodEvent, FoodState> {
  final FoodUseCase _foodUseCase;

  FoodBloc() : _foodUseCase = getIt<FoodUseCase>(), super(FoodInitial()) {
    // on<GetFoods>(_getFoods);
    on<CreateFood>(_createFood);
    // on<DeleteFood>(_deleteFood);
  }

  // Future<void> _getFoods(GetFoods event, Emitter<FoodState> emit) async {
  //   try {
  //     emit(state.copyWith(foodStatus: FoodStatus.start));
  //     List<Food> foods = await _foodUseCase.getFood();
  //     emit(state.copyWith(foods: foods, foodStatus: FoodStatus.success));
  //   } catch (e) {
  //     emit(state.copyWith(foodStatus: FoodStatus.fail));
  //   }
  // }

  Future<void> _createFood(CreateFood event, Emitter<FoodState> emit) async {
    try {
      emit(state.copyWith(createFoodStatus: CreateFoodStatus.start));
      await _foodUseCase.createFood(event.food);
      emit(state.copyWith(createFoodStatus: CreateFoodStatus.success));
      getIt<FoodBloc>().add(const GetFoods());
    } catch (e) {
      emit(state.copyWith(createFoodStatus: CreateFoodStatus.fail));
    }
  }

  // Future<FutureOr<void>> _deleteFood(
  //     DeleteFood event, Emitter<FoodState> emit) async {
  //   try {
  //     emit(state.copyWith(deleteFoodStatus: DeleteFoodStatus.start));
  //     await _foodUseCase.deleteFood(event.id);
  //     emit(state.copyWith(deleteFoodStatus: DeleteFoodStatus.success));
  //     getIt<FoodBloc>().add(const GetFoods());
  //   } catch (e) {
  //     emit(state.copyWith(deleteFoodStatus: DeleteFoodStatus.fail));
  //   }
  // }
}
