# Learning Git Best Practices and Docker Container Usage

-[] Create a new public repository on GitHub with a name of your choice.

-[] Clone the repository on your personal computer. Never clone a repo inside a repo!

-[] Setup container within your repository. Download and run setup.sh script from: https://github.com/rambasnet/course-container

-[] Execute run.sh to start the Docker container. Use git-bash terminal if you’re using Windows.

-[] Use Docker extension of VS Code to attch the running container as a Terminal to run all the commands.

-[] Solve Kattis problem Cosmic Path Optimization - https://open.kattis.com/problems/cosmicpathoptimization

-[] Create an issue in GitHub stating the requirements using checkboxes.

-[] Create and checkout branch: issue/<#> mapping each issue with a dedicated branch; where # is actual issue number, 1 e.g..

-[] Solve the problem in a way that can be unit tested.

  -[] Must use atleast 1 fruitful function that needs to be tested with 6 test cases (6 separate test functions for each test case)
  
  -[] Write a separate test module and write test cases using unittest libray.

-[] Create a Makefile inside the cosmicpathoptimization folder:

  -[] Add a rule for local unit test

  -[] Add a rule for local Kattis test on sample input/output files

  -[] Add a rule for checking styles using flake8

  -[] Add a rule for fixing styles using autopep8
  
  -[] Add a rule for checking types with mypy
  
  -[] Add a rule to submit problem to Kattis using Kattis CLI

-[] Run `make all` to make sure all the checks and tests pass. Create screenshot of the final report of make all rule execution.

-[] Submit your solution to Kattis using Makefile and create screenshot of Accepted verdict result on your terminal. 
