# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

---

## [2.0.0](https://github.com/schubergphilis-ep/terraform-aws-mcaf-service-quotas-manager/compare/v1.0.2...v2.0.0) (2026-03-27)


### ⚠ BREAKING CHANGES

* Add region support ([#20](https://github.com/schubergphilis/terraform-aws-mcaf-service-quotas-manager/pull/20))

### 🚀 Features

* Add region support ([#20](https://github.com/schubergphilis/terraform-aws-mcaf-service-quotas-manager/pull/20)) ([79c48fb](https://github.com/schubergphilis-ep/terraform-aws-mcaf-service-quotas-manager/commit/79c48fb74ba3d642793375879bf246f9cef81202))

## [1.0.2](https://github.com/schubergphilis-ep/terraform-aws-mcaf-service-quotas-manager/compare/v1.0.1...v1.0.2) (2026-03-18)


### 🐛 Fixes

* bug: TypeError: ServiceQuota.__init__() got an unexpected keyword arg… ([#23](https://github.com/schubergphilis/terraform-aws-mcaf-service-quotas-manager/pull/23)) ([00a8092](https://github.com/schubergphilis-ep/terraform-aws-mcaf-service-quotas-manager/commit/00a8092e5be40314d467542bb8d03c725e92b025))

## [1.0.1](https://github.com/schubergphilis-ep/terraform-aws-mcaf-service-quotas-manager/compare/v1.0.0...v1.0.1) (2026-03-18)


### 🐛 Fixes

* bump python dependencies ([#21](https://github.com/schubergphilis/terraform-aws-mcaf-service-quotas-manager/pull/21)) ([e273ea7](https://github.com/schubergphilis-ep/terraform-aws-mcaf-service-quotas-manager/commit/e273ea77ac1a168028ce8caf0e4adc2c113c054d))

## [1.0.0](https://github.com/schubergphilis-ep/terraform-aws-mcaf-service-quotas-manager/compare/v0.5.2...v1.0.0) (2026-02-26)


### ⚠ BREAKING CHANGES

* Removing assumable ARNS per account ([#19](https://github.com/schubergphilis/terraform-aws-mcaf-service-quotas-manager/pull/19))

### 🐛 Fixes

* Removing assumable ARNS per account ([#19](https://github.com/schubergphilis/terraform-aws-mcaf-service-quotas-manager/pull/19)) ([bfa2deb](https://github.com/schubergphilis-ep/terraform-aws-mcaf-service-quotas-manager/commit/bfa2deb6ac288610e4f9af0db69cbae99e8fdd11))

## [0.5.2](https://github.com/schubergphilis-ep/terraform-aws-mcaf-service-quotas-manager/compare/v0.5.1...v0.5.2) (2026-02-19)


### 🐛 Fixes

* Make the inline policy as managed policy ([#18](https://github.com/schubergphilis/terraform-aws-mcaf-service-quotas-manager/pull/18)) ([134e731](https://github.com/schubergphilis-ep/terraform-aws-mcaf-service-quotas-manager/commit/134e7312d572c159fdd40db21872809f0b96044b))

## [0.5.1](https://github.com/schubergphilis-ep/terraform-aws-mcaf-service-quotas-manager/compare/v0.5.0...v0.5.1) (2026-01-14)


### 🐛 Fixes

* add path/role_path validation & sorting & rename versions.tf to terraform.tf ([#12](https://github.com/schubergphilis/terraform-aws-mcaf-service-quotas-manager/pull/12)) ([06fe2be](https://github.com/schubergphilis-ep/terraform-aws-mcaf-service-quotas-manager/commit/06fe2be74799bd593742fb2dff77da30f18bdbb5))
* Update the Lambda execution role ([#17](https://github.com/schubergphilis/terraform-aws-mcaf-service-quotas-manager/pull/17)) ([0b49d23](https://github.com/schubergphilis-ep/terraform-aws-mcaf-service-quotas-manager/commit/0b49d234c259f95cd8cb3f9e7f892304bec8279a))

## [0.5.0](https://github.com/schubergphilis-ep/terraform-aws-mcaf-service-quotas-manager/compare/v0.4.0...v0.5.0) (2026-01-07)


### 🐛 Fixes

* add path/role_path validation & sorting & rename versions.tf to terraform.tf ([#12](https://github.com/schubergphilis/terraform-aws-mcaf-service-quotas-manager/pull/12)) ([06fe2be](https://github.com/schubergphilis-ep/terraform-aws-mcaf-service-quotas-manager/commit/06fe2be74799bd593742fb2dff77da30f18bdbb5))

## [0.4.0](https://github.com/schubergphilis-ep/terraform-aws-mcaf-service-quotas-manager/compare/v0.3.0...v0.4.0) (2024-07-22)


### 🚀 Features

* support specifying the execution role name_prefix, path, and permissions boundary ([#11](https://github.com/schubergphilis/terraform-aws-mcaf-service-quotas-manager/pull/11)) ([ec434bf](https://github.com/schubergphilis-ep/terraform-aws-mcaf-service-quotas-manager/commit/ec434bf4a612edc5856032fe19e098f789666cbf))

## [0.3.0](https://github.com/schubergphilis-ep/terraform-aws-mcaf-service-quotas-manager/compare/v0.2.3...v0.3.0) (2024-07-22)


### 🚀 Features

* support setting role path ([#10](https://github.com/schubergphilis/terraform-aws-mcaf-service-quotas-manager/pull/10)) ([b360599](https://github.com/schubergphilis-ep/terraform-aws-mcaf-service-quotas-manager/commit/b36059954003286a16219e0cc8e6255dd433c8a3))

## [0.2.3](https://github.com/schubergphilis-ep/terraform-aws-mcaf-service-quotas-manager/compare/v0.2.2...v0.2.3) (2024-01-03)


### 🐛 Fixes

* bug: update s3 module to latest version to ensure compatibility with name_prefix ([#9](https://github.com/schubergphilis/terraform-aws-mcaf-service-quotas-manager/pull/9)) ([4385214](https://github.com/schubergphilis-ep/terraform-aws-mcaf-service-quotas-manager/commit/43852146567499e91f88cc0b85ced66c6f8f3e3c))

## [0.2.2](https://github.com/schubergphilis-ep/terraform-aws-mcaf-service-quotas-manager/compare/v0.2.1...v0.2.2) (2024-01-02)


### 🐛 Fixes

* bug: fix inconsistent naming ([#7](https://github.com/schubergphilis/terraform-aws-mcaf-service-quotas-manager/pull/7)) ([b73100d](https://github.com/schubergphilis-ep/terraform-aws-mcaf-service-quotas-manager/commit/b73100dc1e8d5a3ed80274268422306b4538dfe6))

## [0.2.1](https://github.com/schubergphilis-ep/terraform-aws-mcaf-service-quotas-manager/compare/v0.2.0...v0.2.1) (2024-01-02)


### 🐛 Fixes

* bug: solve sns aws:SourceOwner deprecation ([#6](https://github.com/schubergphilis/terraform-aws-mcaf-service-quotas-manager/pull/6)) ([8275081](https://github.com/schubergphilis-ep/terraform-aws-mcaf-service-quotas-manager/commit/8275081c5b17bb8adb313bbda9eee584c9aee4a4))
* bug: fix unique bucket name requirements and set correct default role name ([#5](https://github.com/schubergphilis/terraform-aws-mcaf-service-quotas-manager/pull/5)) ([650a446](https://github.com/schubergphilis-ep/terraform-aws-mcaf-service-quotas-manager/commit/650a446b7c6d46db9df5c655207a4f8b511ce0ec))

## [0.2.0](https://github.com/schubergphilis-ep/terraform-aws-mcaf-service-quotas-manager/compare/v0.1.0...v0.2.0) (2024-01-02)


### 🚀 Features

* enhancement: Extend supported quotas ([#4](https://github.com/schubergphilis/terraform-aws-mcaf-service-quotas-manager/pull/4)) ([8c55cb7](https://github.com/schubergphilis-ep/terraform-aws-mcaf-service-quotas-manager/commit/8c55cb72d11f813fe6555ea0ffbca77cb087a31a))

## 0.1.0 (2023-12-28)

