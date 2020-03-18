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
