# testing_with_mike
Demo Framework to Showcase Test Engineering Automation
## APP This is a Demo of solutions to testing challenges in a ruby test framework

* This was designed to run at these places in the code promotion pipeline:

* Services from framework:
<p align="center">
  <img src="https://github.com/WardropMike/independalite/blob/master/proj_docs/Framework_Pipeline_Services.png" height="200">
</p>

# Setup Instructions
Make sure you are running a Ruby dev env on macos. This project utilizes ruby 3.0.1.
* Build the container with:
   *   docker build -t testing_with_mike .
* Just run the container:
   * docker container run -it testing_with_mike
* Run the container and drop me at a prompt:
   * docker container run -it testing_with_mike /bin/bash
* To run tests:
   * Single Docker Run
    * docker container run -it testing_with_mike bundle exec rspec
    * docker container run -it testing_with_mike bundle exec rspec --tag home_page
    * docker container run -it testing_with_mike bundle exec rspec --tag demoblaze
   * Running container at a prompt by tag:
    * Tags: demoblaze, smoke, home_page, nav_menu, demo_blaze_api, api
    * Examples:
    * bundle exec rspec --tag demoblaze
    * bundle exec rspec --tag demoblaze home_page

 * How to run and look inside a running container
   * docker container run -it testing_with_mike /bin/bash
 * To run the docker and the specified tests
   * docker container run -it testing_with_mike bundle exec rspec -tag demoblaze

# Tests
UI/UX Tests
 1. Test-Ticket Given a Home page, when user(s) visit, then verify all elements on the page load.
 2. Test-Ticket Given an account, when user(s) need to log in, then verify user path to login works as expected.

API Tests
 1. Test-Ticket Given a service, when user(s) visit the home page, then the page, elements, and data are returned.

# Development tickets
* Story: Scaffold Running Framework, 4 - 8 running tests, Folder Struct and tune
 1. <a href="https://github.com/WardropMike/independalite">Framework Codebase (Git Link)</a>
 2. <a href="https://trello.com/c/WJZw7RQE/1-scaffold-running-framework">Setup Framework Ticket</a>
 3. <a href="https://trello.com/c/Mk9ODRID/2-write-2-4-running-tests">Tests and test Framework Codebase Ticket</a>
 4. <a href="https://trello.com/c/lhN9Eqbu/3-write-2-4-api-tests">Tests and test Framework Codebase Network Ticket</a>
 5. <a href="https://trello.com/c/VlPFOYI9/4-folder-structure-organization">Organize Framework Codebase Ticket</a>
 6. <a href="https://trello.com/c/jYbMVTI8/5-trim-gem-list-and-utilized-gems">Tune Framework Codebase Ticket</a>

# Dockerized
1. <a href="https://trello.com/c/xk6L7BXm/6-fix-and-clean-spec-helper">Trello Fix and Clean Spec Helper Ticket</a>
2. <a href="https://trello.com/c/xk6L7BXm/6-fix-and-clean-spec-helper">Fix and Cleam up Spec Helper Ticket</a>
3. <a href="https://trello.com/c/ZW4inyfZ/7-re-write-dockerfile-clean-up-verify-running">Trello Dockerfile Clean up and Verify Ticket</a>
4. <a href="https://trello.com/c/ZW4inyfZ/7-re-write-dockerfile-clean-up-verify-running">Verify Dockerfile Ticket</a>
5. <a href="https://github.com/WardropMike/independalite/blob/master/Dockerfile">Docker File (Git Link)</a>
6. <a href="https://github.com/WardropMike/independalite/blob/master/spec/spec_helper.rb">Spec Helper</a>
7. <a href="https://github.com/WardropMike/independalite/blob/master/Dockerfile">Re-write Dockerfile (Git Link)</a>


# Tags
 * Setup Tags on spec files
 * <a href="https://github.com/WardropMike/independalite/blob/master/spec/component_1/functions/check_component_1_spec.rb">Tagged Tests (Git Link)</a>

# Run Time arguments
 * <a href="https://github.com/WardropMike/independalite/blob/master/spec/spec_helper.rb">Spec Helper (Git Link)</a>

# Documentation:
 * <a href="https://trello.com/c/0f0sYUkD/12-write-documentation">Write documentation Ticket</a>

# Upcoming updates next steps
 * <a href="https://trello.com/c/kTai02eE/8-re-write-browser-major-in-dockerfile-works-for-now-break-into-docker-compose-esk-style">Upcoming updates next steps Ticket</a>
