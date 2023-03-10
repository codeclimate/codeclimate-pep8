_Issues aren't enabled for **codeclimate/pep8**._ 

_Opening a PR describing the issue._

----

When using a **tox.ini** on an [oss repo](https://github.com/trailofbits/manticore) with:

```
[pep8] 
statistics = True 
ignore = E265 
exclude = docs/,examples/,scripts/,tests/ 
count = False
```

Code Climate CLI shows:
```
# CODECLIMATE_DEBUG=1 docker run --interactive --tty --rm --env CODECLIMATE_CODE="$PWD" --volume "$PWD":/code --volume /var/run/docker.sock:/var/run/docker.sock --volume /tmp/cc:/tmp/cc codeclimate/codeclimate analyze 
Starting analysis 
Running structure: Done! 
Running duplication: Done! 
Running pep8: Done! 
error: (CC::CLI::Analyze::EngineFailure) engine pep8 failed with status 99 and stderr 
engine produced invalid output: {:message=>"Invalid JSON", :output=>"\n2 E266 too many leading '#' for block comment\n1 E302 expected 2 blank lines, found 1\n11 E402 module level import not at top of file\n1742 E501 line too long (103 > 79 characters)\n1 E704 multiple statements on one line (def)\n33 E712 comparison to False should be 'if cond is False:' or 'if not cond:'\n1 E731 do not assign a lambda expression, use a def\n4 W602 deprecated form of raising exception\n"}
```


If he set `statistics` to `False` in tox.ini, then the codeclimate run completes successfully. 

- He says, "It looks like the parser did not account for the summary statistics option."

---

repo: https://github.com/trailofbits/manticore
