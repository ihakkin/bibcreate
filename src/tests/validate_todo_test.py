import unittest
from util import validate_reference, UserInputError

class TestTReferenceValidation(unittest.TestCase):
    def setUp(self):
        pass

    def test_valid_length_does_not_raise_error(self):
        validate_reference("valid")
        validate_reference("a" * 100)

    def test_too_short_or_long_raises_error(self):
        with self.assertRaises(UserInputError):
            validate_reference("")

        with self.assertRaises(UserInputError):
            validate_reference("A" * 200)

if __name__ == "__main__":
    unittest.main()