# pep8 - Python style guide checker

pep8 is a tool to check your Python code against some of the style
conventions in [PEP 8][pep8].

# codeclimate-pep8

For information on using pep8 with [Code Climate][cc], see the
[Code Climate pep8 docs][docs].

## configuration

The PEP8 project has been renamed to pycodestyle. The Code Climate PEP8 engine
has not been updated to incorporate that name change.

To make configuration specifications in your `setup.cfg` file or `tox.ini` file,
the Code Climate PEP8 engine requires that you include those changes in:

* a `[pep8]` config section
* instead of `[pycodestyle]` config section.

[pep8]: http://www.python.org/dev/peps/pep-0008/
[cc]: https://codeclimate.com/
[docs]: https://docs.codeclimate.com/docs/pep8
