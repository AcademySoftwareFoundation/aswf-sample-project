# Security and PROJECT

General discussion of PROJECT security posture.

## Reporting

Document process for external parties to report security issues. A private mailing list reaching only the TSC members should be provided to allow confidential reporting when needed, such as to avoid public disclosure before a vulnerability can be addressed in a release.

## Vulnerabilty Handling

Document the process and timeframe that the project is committed to following to address security issues. There should be an explicit policy on fixing severe security issues in versions that are no longer supported.

## Outstanding Security Issues

A list of current, unaddressed security issues, with an assessment of severity and a timeframe for resolution. Publicly disclosed [CVEs](https://cve.mitre.org/) should be listed here.

## Addressed Security Issues

A historical list of addressed security vulnerabilities, in particular any public CVEs, with corresponding release information.

## File Format Expectations

Assuming PROJECT defines a data file format, a discussion of what a user should expect happens when operating on a valid or invalid PROJECT data file.

## Runtime Library Expectations

Assuming PROJECT defines a callable API / library, a discussion of how the library is expected to behave, how it handles erroneous inputs / does input sanitization, how it returns errors.

## Data and Metadata Implications

A discussion of issues relating to the data model implemented by the project such as correctness, confidentiality, potential misuse...

