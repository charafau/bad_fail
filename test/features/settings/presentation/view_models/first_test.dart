// import 'package:cotapp/core/services/biometric_service/biometric_service.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class TesterFailure {
  void disableBiometric() {}
}

class MockTesterFailure extends Mock implements TesterFailure {}

void main() {
  group('TesterFailure', () {
    late TesterFailure testerFailure;

    setUp(() {
      testerFailure = MockTesterFailure();
    });

    group('some group', () {
      test('should call pass if not commented', () {
        when(() => testerFailure.disableBiometric());
      });
    });
  });
}
