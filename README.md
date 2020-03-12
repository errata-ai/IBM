# IBM
A Vale-compatible implementation of [IBM's Developer Editorial Style Guide](https://www.ibm.com/developerworks/library/styleguidelines/index.html).

## Getting Started

> :exclamation: IBM requires Vale >= **1.7.0**. :exclamation:

Download the [latest release](https://github.com/errata-ai/IBM/releases), copy the "IBM" directory to your `StylesPath`, and include it in your configuration file:

```ini
# This goes in a file named either `.vale.ini` or `_vale.ini`.
StylesPath = path/to/some/directory
MinAlertLevel = warning # suggestion, warning or error

# Only Markdown and .txt files; change to whatever you're using.
[*.{md,txt}]
# List of styles to load.
BasedOnStyles = IBM
```

See [Usage](https://github.com/errata-ai/vale/#usage) for more information.

## Repository Structure

<dl>
  <dt><a href="https://github.com/errata-ai/IBM/tree/master/IBM"><code>/IBM</code></a></dt>
  <dd>The <a href="http://yaml.org/">YAML</a>-based rule implementations that make up our style.</dd>

  <dt><a href="https://github.com/errata-ai/IBM/tree/master/fixtures"><code>/fixtures</code></a></dt>
  <dd>The individual unit tests. Each directory should be named after a rule found in <code>/Microsoft</code> and include its own <code>.vale.ini</code> file that isolates its target rule.</dd>

  <dt><a href="https://github.com/errata-ai/IBM/tree/master/features"><code>/features</code></a></dt>
  <dd>The <a href="https://docs.cucumber.io/cucumber/step-definitions/">Cucumber Step Definitions</a> we use to test our fixtures. Essentially, we use the <a href="https://github.com/cucumber/aruba">aruba</a> framework to test Vale's output after running it on each of our fixture directories.</dd>
</dl>

## Extension Points

|   Check    |                    Implementation(s)                   |
|:------------:|:---------------------------------------------------:|
| [`existence`](https://errata-ai.github.io/vale/styles/#existence)  | [`Terms.yml`](https://github.com/errata-ai/IBM/blob/master/IBM/Terms.yml) |
| [`substitution`](https://errata-ai.github.io/vale/styles/#substitution)  | [`Checkusage.yml`](https://github.com/errata-ai/Microsoft/blob/master/Microsoft/Checkusage.yml) |
