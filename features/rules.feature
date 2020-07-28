Feature: Rules

    Scenario: Incorrect Terminology
        When I test "Terms"
        Then the output should contain exactly:
        """
        test.md:3:13:IBM.Terms:Consider using 'lower left or lower-left' instead of 'bottom-left'
        test.md:5:11:IBM.Terms:Consider using 'several' instead of 'a number of'
        """

    Scenario: Word Usage
        When I test "Usage"
        Then the output should contain exactly:
        """
        test.md:3:1:IBM.Usage:Verify your use of 'We' with the word usage guidelines.
        test.md:3:17:IBM.Usage:Verify your use of 'deploy' with the word usage guidelines.
        """

    Scenario: Use of punctuation
        When I test "Punctuation"
        Then the output should contain exactly:
        """
        test.md:3:10:IBM.Ellipses:Avoid the ellipsis (...) except to indicate omitted words.
        test.md:3:32:IBM.Ellipses:Avoid the ellipsis (...) except to indicate omitted words.
        """

    Scenario: Use of Latin abbreviations
        When I test "Latin"
        Then the output should contain exactly:
        """
        test.md:3:10:IBM.Latin:Use 'and so on' instead of 'etc.'.
        test.md:5:31:IBM.Latin:Use 'that is' instead of 'i.e.,'.
        test.md:7:6:IBM.Latin:Use 'versus' instead of 'vs.'.
        """

    Scenario: Capitalization
        When I test "Capitalization"
        Then the output should contain exactly:
        """
        test.md:9:4:IBM.Headings:'Lambda Expressions' should use sentence-style capitalization.
        """
