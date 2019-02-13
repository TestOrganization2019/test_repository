import ipdb
class CalculatorClass(object):

    def multiply_two_number(self, a,b):
         multiply_result = a*b
         return multiply_result

    def divide_two_number(self, a,b):
        divide_result = a/b
        return divide_result

    def add_two_number(self, a,b):
        addition_result = a+b
        return addition_result

    def select_operation_method(self, a,b, operation):
        if operation == 'divide':
            return self.divide_two_number(a,b)
        if operation == 'multiply':
            return self.multiply_two_number(a,b)
        if operation == 'add':
            return self.add_two_number(a,b)
