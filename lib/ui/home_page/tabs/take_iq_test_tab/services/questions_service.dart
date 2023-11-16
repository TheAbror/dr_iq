import 'package:chopper/chopper.dart';
import 'package:dr_iq/core/constants/app_strings.dart';
import 'package:dr_iq/ui/home_page/tabs/take_iq_test_tab/model/questions_model.dart';

part 'questions_service.chopper.dart';

@ChopperApi(baseUrl: AppStrings.baseLive)
abstract class QuestionsService extends ChopperService {
  static QuestionsService create([ChopperClient? client]) => _$QuestionsService(client ?? ChopperClient());

  @Get(path: AppStrings.questions)
  Future<Response<List<QuestionsResponse>>> getQuestions();
}
