Infrastructure and Compliance Testing with Chef InSpec
================================================================================

This repository contains the support materials for Ben Bleything's [InSpec]
workshop. It's probably not very interesting if you're not participating in the
workshop, but don't let that stop you from poking around.

[InSpec]: https://www.inspec.io

If you _are_ participating in the workshop, great! Welcome! Here's the giant
"Open in Cloud Shell" button I mention during the intro. You should click it!

[![Open in Cloud Shell](http://gstatic.com/cloudssh/images/open-btn.svg)](https://console.cloud.google.com/cloudshell/editor?cloudshell_git_repo=https%3A%2F%2Fgithub.com%2Fbleything%2Finspec-workshop&cloudshell_image=gcr.io%2Fossummit-2019-inspec-tutorial%2Fworkshop-cloud-shell&cloudshell_print=.assets%2Fmotd)

Further Exploration
--------------------------------------------------------------------------------

Here are some things to go check out as you continue on your InSpec journey:

### InSpec Tools and Docs

These will be useful reference material as you get deeper into InSpec.

* [InSpec Tutorials](https://www.inspec.io/tutorials/)
* [InSpec Documentation](https://inspec.io/docs/)
* [InSpec Resource Docs](https://inspec.io/docs/reference/resources/)

### Cloud Provider Resource Packs

If you're on one of the major cloud providers, you'll want to check out the
corresponding resource pack. These will let you write controls that assert
things about your cloud infrastructure.

* [AWS](https://github.com/inspec/inspec-aws)
* [Azure](https://github.com/inspec/inspec-azure)
* [Google Cloud Platform](https://github.com/inspec/inspec-gcp)

### Test Kitchen

Test Kitchen is a really cool test harness that can tremendously streamline the
process of iterating on both tests and infrastructure code.

* [Test Kitchen](https://kitchen.ci)
* [Test Kitchen Documentation](https://kitchen.ci/docs/getting-started/introduction/)

Here are a couple of community plugins that might be interesting:

* [kitchen-docker](https://github.com/test-kitchen/kitchen-docker)
* [kitchen-terraform](https://github.com/newcontext-oss/kitchen-terraform)

### [DevSec Hardening Framework](https://dev-sec.io)

DevSec provides InSpec profiles, Ansible and Puppet modules, and Chef cookbooks
for system hardening. They have profiles for Linux, Windows, Docker, Kubernetes,
MySQL, PostgreSQL, and others.

* [Homepage](https://dev-sec.io)
* [Baselines](https://dev-sec.io/baselines/)

A couple of example baselines:

* [Linux Baseline](https://dev-sec.io/baselines/linux/)
* [PostgreSQL Baseline](https://dev-sec.io/baselines/postgres/)

### [Center for Internet Security](https://www.cisecurity.org)

CIS provides detailed guidelines for system hardening. They cover a wide variety
of operating systems, software, cloud providers, and physical hardware. You have
to register to get access to the docs but they're free and well worth the
trouble.

* [CIS Benchmarks](https://www.cisecurity.org/cis-benchmarks/)

Ownership and License
--------------------------------------------------------------------------------

Copyright 2019 Google LLC. Released under the Apache License, Version 2.0. See
LICENSE for details.

This is not an official Google project.
