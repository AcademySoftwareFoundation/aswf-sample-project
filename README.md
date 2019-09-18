# ASWF Sample Project

The purpose of this project is to provide a skeleton or sample Academy Software Foundation (ASWF) project reflecting the best practices that have been established by the Technical Advisory Committee (TAC). More detailed documentation can be found in the [Technical Advisory Committee repository](https://github.com/AcademySoftwareFoundation/tac).

## Source Code Repository

ASWF projects are hosted on GitHub under the [Academy Software Foundation organization](https://github.com/AcademySoftwareFoundation).

## Licensing

ASWF projects must chose an explicit open source license, you can use the [Choose a License](https://choosealicense.com/) site to help pick one. Existing projects will typically want to stick to their existing license, as relicensing can be a complicated process. It is preferable to stick with an existing, unmodified, standard open source license since this simplifies the process of getting legal approval for use of the project within commmercial organizations, and allows the use of metadata to identify the project license.

If you are starting a new project, the ASWF recommends the use of the Apache License 2.0.

A copy of the license should be in the root directory of your repository and should be called LICENSE. If you are using a standard open source license you should also tag your GitHub project with that license. This can be done at project creation time.

Source files in your project should use [Software Package Data eXchange (SPDX)](https://spdx.org/) identifiers to specify the project license, for instance in a C++ file:

  // SPDX-License-Identifier: Apache-2.0
  
