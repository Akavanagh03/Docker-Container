TEST = pytest 
TEST_ARGS = --verbose --color=yes
TYPE_CHECK = mypy --strict
STYLE_CHECK = flake8
STYLE_FIX = autopep8 --in-place --recursive --aggressive --aggressive
KATTIS = python3 kattis-cli/submit.py 

.PHONY: all
all: style-fix style-check type-check unittest localtest clean

.PHONY: style-fix
style-fix:
	$(STYLE_FIX) CosmicPathOptimization/CosmicPathOptimization.py

.PHONY: type-check
type-check:
	$(TYPE_CHECK) CosmicPathOptimization/CosmicPathOptimization.py

.PHONY: style-check
style-check:
	$(STYLE_CHECK) CosmicPathOptimization/CosmicPathOptimization.py

.PHONY: run-test
run-test:
	$(TEST) $(TEST_ARGS) CosmicPathOptimization/unit_test_CosmicPathOptimization.py

unittest:
	$(TEST) CosmicPathOptimization/unit_test_CosmicPathOptimization.py
	@echo "Unittest done."

kattis:
	$(KATTIS) CosmicPathOptimization/CosmicPathOptimization.py

localtest:
	@cat ./examples/1.in | python3 ./CosmicPathOptimization/CosmicPathOptimization.py | diff - ./examples/1.ans
	@echo "Local Kattis Testing Complete."

.PHONY: clean
clean:
	rm -rf __pycache__
	rm -rf .pytest_cache
	rm -rf .mypy_cache
	rm -rf .hypothesis

.PHONY: push
push: run-test clean
