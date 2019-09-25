<!-- SPDX-License-Identifier: CC-BY-4.0 -->
<!-- Copyright Contributors to the ASWF Sample Project -->

# ASWF Sample Project

[![License](https://img.shields.io/badge/License-Apache--2.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
[![Azure](https://dev.azure.com/academysoftwarefoundation/Academy%20Software%20Foundation/_apis/build/status/academysoftwarefoundation.openvdb)](https://dev.azure.com/academysoftwarefoundation/Academy%20Software%20Foundation/_build?definitionId=1&_a=summary)
[![Quality Gate Status](https://sonarcloud.io/api/project_badges/measure?project=imageworks_OpenColorIO&metric=alert_status)](https://sonarcloud.io/dashboard?id=imageworks_OpenColorIO)
[![CII Best Practices](https://bestpractices.coreinfrastructure.org/projects/2612/badge)](https://bestpractices.coreinfrastructure.org/projects/2612)

The purpose of this project is to provide a skeleton or sample Academy Software Foundation (ASWF) project reflecting the best practices that have been established by the Technical Advisory Committee (TAC). More detailed documentation can be found in the [Technical Advisory Committee repository](https://github.com/AcademySoftwareFoundation/tac).

## Project Submission and Graduation

The process for submitting a project for ASWF membership is documented in the [Project Contribution Proposal Template](https://github.com/AcademySoftwareFoundation/tac/blob/master/process/proposal_template.md). Once a project has been accepted as an Incubation Stage project, the next step is to move the project towards the Adopted Stage, as documented in the [Project Lifecycle Document](https://github.com/AcademySoftwareFoundation/tac/blob/master/process/lifecycle.md). A major part of the Project Graduation requirements are covered by meeting the "passing" [criteria for the Best Practices badge](https://github.com/coreinfrastructure/best-practices-badge/blob/master/doc/criteria.md) defined by the [Linux Foundation's Core Infrastructure Initiative (CII)](https://bestpractices.coreinfrastructure.org/en).

A lot of the information and files in this sample project are closely related to the CII badge requirements, or demonstrate the prefered way to implement these requirements in a ASWF project.

## Source Code Repository

ASWF projects are hosted on [GitHub](https://github.com). Once a project has been been accepted as an Incubation Stage project, its repository will be moved under the [Academy Software Foundation organization](https://github.com/AcademySoftwareFoundation) which is managed by the Linux Foundation Release Engineering team.

## Licensing

ASWF projects should chose an explicit [Open Source Initiative](https://opensource.org/licenses) approved open source license, you can use the [Choose a License](https://choosealicense.com/) site to help pick one. Existing projects will typically want to stick to their existing license, as relicensing can be a complex process. It is preferable to select an existing, unmodified, standard open source license since this simplifies the process of getting legal approval for use of the project within commmercial organizations, and allows the use of metadata to identify the project license.

If you are starting a new project, the ASWF recommends the use of the [Apache License 2.0](https://opensource.org/licenses/Apache-2.0) for code assets, the [Creative Commons Attribution 4.0 International License](http://creativecommons.org/licenses/by/4.0/) for non-code / documentation assets, and a [Community Data License Agreement](https://cdla.io/) for datasets.

A copy of the license should be in the root directory of your repository and should be called LICENSE. If you are using a standard open source license you should also tag your GitHub project with that license type. This can be done at project creation time.

Source files in your project should use [Software Package Data eXchange (SPDX)](https://spdx.org/) identifiers to specify the project license, for instance in a C++ file:

  // SPDX-License-Identifier: Apache-2.0
  // Copyright Contributors to the PROJECT Project.

More details about the the licensing and contribution requirements for ASWF projects can be found in [contributing.md in the ASWF TAC repository](https://github.com/AcademySoftwareFoundation/tac/blob/master/process/contributing.md).


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

### Azure Pipelines / Azure DevOps

ASWF projects currently use Azure Pipelines from Microsoft (a component of the Azure DevOps service) to provide cross platform Continuous Integration functionality. Azure Pipelines provides Windows, macOS and Linux build agents free of charge for open source projects, and although GPU equiped build agents for running test suites that require GPU acceleration are not currently available, it is possible to add a custom build agent to the Agent Pool for your project.

Typically Azure Pipelines looks for a file called `azure-pipelines.yml` in the root directory of the GitHub project which specifies build / test / release instructions to be executed by CI pipeline.

### Initial Configuration

Once a project becomes an official ASWF project and moves its repository under the [AcademySoftwareFoundation GitHub organization](https://github.com/AcademySoftwareFoundation), it will be using the [ASWF Azure Pipelines build project](https://dev.azure.com/academysoftwarefoundation/Academy%20Software%20Foundation/) which is managed by the Linux Foundation Release Engineering team. But you will first want to get Azure Pipelines builds for your project running under your own login.

#### GitHub and Azure DevOps UI Configuration

To run a build of your GitHub project using Azure Pipelines, you will first need to create an Azure DevOps account (assuming you don't already have one, and assuming you already have a GitHub account) and configure authentication in Azure DevOps and GitHub, which can only be done from the web interface:

1. You can [login to Azure DevOps](https://docs.microsoft.com/en-us/azure/devops/user-guide/sign-up-invite-teammates) either with a Microsoft account or with your GitHub credentials. You can create a [Microsoft Account](https://account.microsoft.com/) if you don't already have one and [login to Azure DevOps](https://azure.microsoft.com/en-us/services/devops/) using those credentials, or alternatively use "Start free with GitHub". This will create a default Azure DevOps organization based on your username.
2. At the upper right corner of the Azure DevOps screen, click on the icon representing your account and select "Azure DevOps Profile". Under "User Settings -> Security" select "Personal Access Token". Select "+ New Token" to create a new token, name it "cli_access", under the "Organization" drop down select "All Accessible Organizations", and under "Scope" select "Full Access". Click on "Create" to create the token, make sure to record the value of the token in a safe place. This process is documented under [Authenticate access with personal access tokens](https://docs.microsoft.com/en-us/azure/devops/organizations/accounts/use-personal-access-tokens-to-authenticate). This Personal Access Token (PAT) will let you authenticate CLI access to Azure DevOps. 
3. Similarly you will need to create a [GitHub Personal Access Token](https://help.github.com/en/articles/creating-a-personal-access-token-for-the-command-line) to allow Azure DevOps to connect to your GitHub project. As per the [Build GitHub Repositories](https://docs.microsoft.com/en-us/azure/devops/pipelines/repos/github?view=azure-devops&tabs=yaml) documentation under the section "Using a PAT", your GitHub PAT should have `repo`, `admin:repo_hook`, `read:user`, and `user:email` permissions. You can call the PAT "AzureDevOpsPAT" for instance. As with the Azure DevOps PAT make sure to record this token safely.

#### Azure DevOps CLI Configuration

From this point on we will attempt to configure Azure DevOps from the CLI as much as possible. For more general documentation see [Azure DevOps CLI](https://docs.microsoft.com/en-us/azure/devops/cli/?view=azure-devops#how-to-guides).

1. [Install the Azure CLI on your local system](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli):
   * On [Windows](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli-windows) using a MSI installer
   * On [macOS](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli-macos) using the [Homebrew package manager](https://brew.sh/)
   * On Linux using [`apt` for Debian/Ubuntu](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli-apt) or [`yum` for RHEL/Fedora/CentOS](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli-yum)

2. Install the Azure DevOps extension for the Azure CLI:
```bash
    az extension add --name azure-devops
```

3. Create an Azure DevOps project, the name doesn't matter too much, but it would probably help if it matched the name of your GitHub repository. The `AZURE_DEVOPS_EXT_PAT` environment variable is used to provide the Azure DevOps PAT you previously generated to the command line tools.
```bash
    export AZURE_DEVOPS_EXT_PAT=YOUR_AZDEVOPS_PAT (macOS/Linux)
    set AZURE_DEVOPS_EXT_PAT=YOUR_AZDEVOPS_PAT (Windows)
    az devops configure --defaults organization=https://dev.azure.com/AZDEVOPS_ORG_NAME
    az devops project create --name AZDEVOPS_PROJECT_NAME --source-control git --visibility public
    az devops configure --defaults project=AZDEVOPS_PROJECT_NAME
```

4. Create a Pipeline which will link the Azure DevOps project to your GitHub project. The `AZURE_DEVOPS_EXT_GITHUB_PAT` environment variable is used to provide the GitHub PAT you previously generated to the command line tools, this will be required to allow Azure DevOps to connect to your GitHub account. This assumes the existence of a (stub) `azure-pipelines.yml` configuration file in the root directory of the GitHub project.
```bash
    export AZURE_DEVOPS_EXT_GITHUB_PAT=YOUR_GITHUB_PAT (macOS/Linux)
    set AZURE_DEVOPS_EXT_GITHUB_PAT=YOUR_GITHUB_PAT (Windows)
    az devops service-endpoint github create --github-url https://github.com/GITHUB_ACCOUNT/GITHUB_PROJECT/settings --name GITHUB_PROJECT.connection
    az pipelines create --name AZDEVOPS_PROJECT_NAME.ci --repository GITHUB_USER/GITHUB_PROJECT --branch master --repository-type github --service-connection GITHUBPROJECT.connection --skip-first-run --yml-path /azure-pipelines.yml
```

## Static Analysis

SonarCloud, but lots of other options such as [Clang-Tidy](https://clang.llvm.org/extra/clang-tidy/), [Cppcheck](http://cppcheck.sourceforge.net/), [Infer](https://fbinfer.com/), [LGTM](https://lgtm.com/), [PVS-Studio](https://www.viva64.com/en/pvs-studio/).

## Automated Test Suite

## Ticketing System

The ASWF provides an instance of the [JIRA ticketing system](https://jira.aswf.io/secure/Dashboard.jspa) for the use of its member projects. You will need to create a [Linux Foundation ID](https://identity.linuxfoundation.org/) to use this system. The native GitHub Issues mechanism in the project GitHub repository is also vailable. The TSC should define and document which ticketing system (or combination thereof) should be used and for what purpose.

## Release Notes

## Project Badges
