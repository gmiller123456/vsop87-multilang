class Test() :
    @staticmethod
    def static_method_to_call():
        pass

    @staticmethod
    def another_static_method() :
        Test.static_method_to_call()

    @classmethod
    def another_class_method(cls) :
        cls.static_method_to_call()