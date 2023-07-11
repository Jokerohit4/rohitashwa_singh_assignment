
import 'package:flutter_test/flutter_test.dart';
import 'package:rohitashwa_singh_assignment/pages/tabs/tab_viewModel.dart';

void main() {
  group('TabViewModel', ()
  {
    late TabViewModel viewModel;

    setUp(() {
      viewModel = TabViewModel();
    });

    test('value should start at 0', () {
      viewModel.setCurrentIndex(0);
      expect(viewModel.currentIndex, 0);
    });
  });
 }
