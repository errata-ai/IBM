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
        test.md:9:1:IBM.Abbreviations:Do not use periods in all-uppercase abbreviations such as 'I.B.M.'.
        test.md:11:1:IBM.Abbreviations:Do not use periods in all-uppercase abbreviations such as 'S.W.A.T.'.
        test.md:17:1:IBM.OxfordComma:Use the Oxford comma in 'It comes in red, blue and'.
        test.md:23:14:IBM.DashSpacing:Add spaces around the dash in 'a—w'.
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
        test.md:9:5:IBM.Headings:'Lambda Expressions' should use sentence-style capitalization.
        test.md:13:21:IBM.Definitions:Define acronyms and abbreviations (such as 'MDBs') on first occurrence if they're likely to be unfamiliar.
        test.md:19:224:IBM.Definitions:Define acronyms and abbreviations (such as 'DAFB') on first occurrence if they're likely to be unfamiliar.
        """

    Scenario: Content Structure
        When I test "Structure"
        Then the output should contain exactly:
        """
        test.md:5:1:IBM.SentenceLength:Try to keep sentences less than 25 words.
        """
