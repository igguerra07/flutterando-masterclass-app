import 'package:masterclass/services/flutterando_service.dart';
import 'package:masterclass/src/modules/activities/models/activities_response.dart';
import 'package:masterclass/src/modules/activities/models/activity_model.dart';

const responseTime = Duration(milliseconds: 300);

class FlutterandoV1 implements FlutterandoService {
  @override
  Future<ActivitiesResponse> getActivities() async {
    await Future.delayed(responseTime);
    return ActivitiesResponse(
      data: const [
        ActivityModel(
          type: "playgroud",
          title: "Playground",
          exercicies: 2,
          description: "Ambiente destinado a testes e estudos em geral",
        ),
        ActivityModel(
          type: "animations",
          title: "Animações",
          exercicies: 2,
          description:
              "Estudos sobre animações implícitas e controladas, contendo 4 exercícios e 2 estudos",
        ),
        ActivityModel(
          type: "mockup",
          title: "Leitura de Mockup",
          exercicies: 2,
          description:
              "Aplicação da técnica de leitura de mockup, contendo 2 exercícios",
        ),
      ],
    );
  }
}
