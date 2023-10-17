import unittest
from CosmicPathOptimization import average


class TestCosmic(unittest.TestCase):

    """
    test cases must start with test and must be a method
    """
    def test1_answer(self) -> None:
        a = 3
        b = [10, 20, 30]
        ans = 20
        self.assertEqual(average(a, b), ans, 'broken')

    def test2_answer(self) -> None:
        a = 3
        b = [20, 40, 60]
        ans = 40
        self.assertEqual(average(a, b), ans, 'broken')

    def test3_answer(self) -> None:
        a = 4
        b = [10, 20, 30, 40]
        ans = 25
        self.assertEqual(average(a, b), ans, 'broken')
    
    def test4_answer(self) -> None:
        a = 4
        b = [10, 20, 30, 40]
        ans = 25
        self.assertEqual(average(a, b), ans, 'broken')
    
    def test5_answer(self) -> None:
        a = 6
        b = [10, 20, 30, 40, 60, 80]
        ans = 40
        self.assertEqual(average(a, b), ans, 'broken')
    
    def test6_answer(self) -> None:
        a = 5
        b = [10, 20, 30, 40,50]
        ans = 30
        self.assertEqual(average(a, b), ans, 'broken')
    


if __name__ == "__main__":
    unittest.main(verbosity=2)
