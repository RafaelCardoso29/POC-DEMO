import 'package:poc_demo/core/business_components/application_state.dart';

abstract class ErrorHandler {
  ApplicationErrorState getErrorState(Object exception) {
    var message = exception is Exception ? exception.toString() : "";

    return ApplicationApiError(message: message);
  }
}
