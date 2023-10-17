TEST = pytest 
TEST_ARGS = --verbose --color=yes
TYPE_CHECK = mypy --strict
STYLE_CHECK = flake8
STYLE_FIX = autopep8 --in-place --recursive --aggressive --aggressive
KATTIS = python3 kattis-cli/submit.py 

.PHONY: all
all: style-check type-check unittest localtest kattis clean

.PHONY: type-check
type-check:
	$(TYPE_CHECK) CosmicPathOptimization.py

.PHONY: style-check
style-check:
	$(STYLE_CHECK) CosmicPathOptimization.py

unittest:
	$(TEST) unit_test_CosmicPathOptimization.py
	@echo "Unittest done."

kattis:
	$(KATTIS) CosmicPathOptimization.py

localtest:
	@cat examples/1.in | python3 CosmicPathOptimization.py | diff - examples/1.ans
	@echo "Local Kattis Testing Complete."

.PHONY: clean
clean:
	rm -rf __pycache__
	rm -rf .pytest_cache
	rm -rf .mypy_cache
	rm -rf .hypothesis


.PHONY: push
push: run-test clean
	

.PHONY: fix-style
fix-style:
	$(STYLE_FIX) PROGRAM
