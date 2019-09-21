# ASWF Sample Project

The purpose of this project is to provide a skeleton or sample Academy Software Foundation (ASWF) project reflecting the best practices that have been established by the Technical Advisory Committee (TAC). More detailed documentation can be found in the [Technical Advisory Committee repository](https://github.com/AcademySoftwareFoundation/tac).

## Project Submission and Graduation

The process for submitting a project for ASWF membership is documented in the [Project Contribution Proposal Template](https://github.com/AcademySoftwareFoundation/tac/blob/master/process/proposal_template.md). Once a project has been accepted as an Incubation Stage project, the next step is to move the project towards the Adopted Stage, as documented in the [Project Lifecycle Document](https://github.com/AcademySoftwareFoundation/tac/blob/master/process/lifecycle.md). A major part of the Project Graduation requirements are covered by meeting the "passing" [criteria for the Best Practices badge](https://github.com/coreinfrastructure/best-practices-badge/blob/master/doc/criteria.md) defined by the [Linux Foundation's Core Infrastructure Initiative (CII)](https://bestpractices.coreinfrastructure.org/en).

A lot of the information and files in this sample project are closely related to the CII badge requirements, or demonstrate the prefered way to implement these requirements in a ASWF project.

## Source Code Repository

ASWF projects are hosted on [GitHub](https://github.com). Once a project has been been accepted as an Incubation Stage project, its repository will be moved under the [Academy Software Foundation organization](https://github.com/AcademySoftwareFoundation) which is managed by the Linux Foundation Release Engineering team.

## Licensing

ASWF projects should chose an explicit [Open Source Initiative](https://opensource.org/licenses) approved open source license, you can use the [Choose a License](https://choosealicense.com/) site to help pick one. Existing projects will typically want to stick to their existing license, as relicensing can be a complex process. It is preferable to select an existing, unmodified, standard open source license since this simplifies the process of getting legal approval for use of the project within commmercial organizations, and allows the use of metadata to identify the project license.

If you are starting a new project, the ASWF recommends the use of the Apache License 2.0.

A copy of the license should be in the root directory of your repository and should be called LICENSE. If you are using a standard open source license you should also tag your GitHub project with that license type. This can be done at project creation time.

Source files in your project should use [Software Package Data eXchange (SPDX)](https://spdx.org/) identifiers to specify the project license, for instance in a C++ file:

  // SPDX-License-Identifier: Apache-2.0

## Basic Documentation

Your project should have a README.md file in the project home directory, identifying the project and providing enough information to orient new users towards information and resources relevant to the project. The prefered format for in-tree documentation files which are likely to be viewed via the GitHub web interface is [Markdown text](https://guides.github.com/features/mastering-markdown/).

## Project Charter and Technical Steering Committee Documentation

ASWF Projects are required to designate a Technical Steering Committee (TSC) which is responsible for the technical oversight of the project, and adopt a Project Charter, for which [a template is provided in the ASWF TAC repository](https://github.com/AcademySoftwareFoundation/tac/blob/master/process/charter_template.md). The TSC should meet regularly, and should keep public meeting minutes in the project repository. The TSC is responsible for setting the design, development, testing, release and support procedures for the project in close collaboration with the project community: close collaboration and alignment of processes between the TSCs of the various ASWF projects is encouraged but not mandatory.

A suggested directory structure for the TSC-related documents based on the OpenVDB project is the following:

```
project
├── LICENSE
├── README.md
└── tsc
    ├── charter.md
    ├── meetings
    │   └── yyyy-mm-dd.md
    └── process
        ├── codereview.md
        ├── deprecation.md
        ├── release.md
        └── security.md
```

## Versioning and Releases

## Security and Reporting Mechanism

## Maintainers List

## Website

Consider hosting project web site from GitHub repository.

## VFX Reference Platform

## Build Tools

CMake

## Continuous Integration

Azure Pipelines

## Static Analysis

SonarCloud, but lots of other options such as [Clang-Tidy](https://clang.llvm.org/extra/clang-tidy/), [Cppcheck[](http://cppcheck.sourceforge.net/), [Infer](https://fbinfer.com/), [LGTM](https://lgtm.com/).

## Automated Test Suite

## Ticketing System

The ASWF provides an instance of the [JIRA ticketing system](https://jira.aswf.io/secure/Dashboard.jspa) for the use of its member projects. You will need to create a [Linux Foundation ID](https://identity.linuxfoundation.org/) to use this system. The native GitHub Issues mechanism in the project GitHub repository is also vailable. The TSC should define and document which ticketing system (or combination thereof) should be used and for what purpose.

## Release Notes
