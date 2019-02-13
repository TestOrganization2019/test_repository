# file:features/steps/step_tutorial01.py
# ----------------------------------------------------------------------------
# STEPS:
# ----------------------------------------------------------------------------
from behave import given, when, then
from behave import Given, When, Then
from CalculatorClass import CalculatorClass
import ipdb
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


@When('Insert two numbers')
def step_imp(context):
    context.a = 1
    context.b = 5

@When('Insert divide operation')
def step_impl(context):
    context.operator = 'divide'

@Then('Expected result should display')
def step_impl(context):
    calci_obj = CalculatorClass()
    calculation_result = calci_obj.select_operation_method(context.a, context.b, context.operator)

    if context.operator =='divide':
        assert (context.a /context.b ) == calculation_result

    elif context.operator =='multiply':
        assert (context.a *context.b ) == calculation_result

    elif context.operator =='add':
        assert (context.a + context.b) == calculation_result

@When('Insert multiply operation')
def step_impl(context):
    context.operator = 'multiply'








