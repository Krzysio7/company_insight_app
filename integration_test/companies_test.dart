// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import './../test/features/step/the_app_is_running.dart';
import './../test/features/step/the_i_have_not_added_any_companies.dart';
import './../test/features/step/i_can_see_engaging_instructions_about_what_i_should_do.dart';
import './../test/features/step/i_enter_a_valid_company_symbol.dart';
import './../test/features/step/i_am_presented_with_a_preview_of_the_company.dart';
import './../test/features/step/i_can_choose_to_add_the_company_to_my_list.dart';
import '../test/features/step/i_have_entered_an_invalid_or_nonexistent_company_symbol.dart';
import '../test/features/step/i_am_shown_a_message_indicating_that_the_company_profile_could_not_be_found.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('''Companies''', () {
    Future<void> bddSetUp(WidgetTester tester) async {
      await theAppIsRunning(tester);
    }

    testWidgets('''App just opened''', (tester) async {
      await bddSetUp(tester);
      await theIHaveNotAddedAnyCompanies(tester);
      await iCanSeeEngagingInstructionsAboutWhatIShouldDo(tester);
    });
    testWidgets('''Favorite add''', (tester) async {
      await bddSetUp(tester);
      await iEnterAValidCompanySymbol(tester, 'AUU');
      await iAmPresentedWithAPreviewOfTheCompany(tester, 'AUU');
      await iCanChooseToAddTheCompanyToMyList(tester, 'AUU');
    });
    testWidgets('''No result display''', (tester) async {
      await bddSetUp(tester);
      await iHaveEnteredAnInvalidOrNonexistentCompanySymbol(tester);
      await iAmShownAMessageIndicatingThatTheCompanyProfileCouldNotBeFound(tester);
    });
  });
}
