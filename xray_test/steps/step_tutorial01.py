# file:features/steps/step_tutorial01.py
# ----------------------------------------------------------------------------
# STEPS:
# ----------------------------------------------------------------------------
from behave import given, when, then
from behave import Given, When, Then
#from hamcrest import assert_that, equal_to

@given('we have behave installed')
def step_impl(context):
    pass
@when('we implement a test')
def step_impl(context):
    assert True


@then('behave will test it for us!')
def step_impl(context):
    assert True

@When('add first scenario')
def step_impl(context):
    assert True

@Then('fail second scenario to test')
def step_impl(context):
    assert True


