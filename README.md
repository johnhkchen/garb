# garb

Common set of commands that act as entryway into a simple web-app project


--------------------
Background Knowledge
--------------------
We'll use Docker to make development as simple as possible.
For more detailed information, check the `docs` folder.

Once the container environment is set up, we will use `just` as the tool to run the various commands.

--------------------
Set-up Instructions
--------------------
### Necessary Tools
`docker` is a containerization tool that allows us to run the same environment on any machine. Install it at https://docs.docker.com/install/.

`just` is a tool that allows us to run commands in a simple way.

### Process Overview - Spinning up a Dev Container
1. Open Docker Desktop
2. Use a dev container, point it to this repo
3. Use the Open in VSCode option
4. Use the `just run` command to run the codebase

### Process Overview - Making Changes with a Dev Container
1. Create a new dev branch using `just branch`, be sure to provide a branch name
2. Make your changes, using `just test` and `just lint`
3. Once changes are made, push your commits and open a pull request

[//]: # (3. Run `just demo` to do a couple of things!)

[//]: # (### Set-up Instructions - Development)

[//]: # ()
[//]: # (--------------------)

[//]: # (Usage)

[//]: # (--------------------)

[//]: # (#### Running a Development Environment)

[//]: # (1. Run `just dev` to run the tests)

[//]: # (#### Testing, Linting, Formatting)

[//]: # (1. Run `just test` to run the tests)

[//]: # (2. Run `just lint` to run the linter)

[//]: # (3. Run `just format` to run the formatter)

[//]: # (4. Run `just e2e` to run the integrations tests)