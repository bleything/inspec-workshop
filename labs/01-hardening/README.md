Lab 01 - Hardening Profile
================================================================================

You want to ensure that your servers conform to security best practices. You
heard about an organization called [DevSec] that publishes OS hardening profiles
for InSpec.

Create a new profile that pulls in the [Linux] and [SSH] baselines. Execute it
against one of your VMs. You should expect to see several failures; in the real
world you'd want to address these. For the purposes of this lab, though,
experiment with [including or skipping specific controls][conditional controls]
to get your tests green.

Hints:

* you can target any of your VMs; for the purposes of this lab they're identical
* you will need to create a new control and use `include_controls` or
  `require_controls` to execute the included profiles

[DevSec]: https://dev-sec.io
[Linux]: https://dev-sec.io/baselines/linux/
[SSH]: https://dev-sec.io/baselines/ssh/
[conditional controls]: https://www.inspec.io/docs/reference/profiles/#using-controls-from-an-included-profile
