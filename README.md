# aws-sdk Cookbook

[![Build Status](https://travis-ci.org/americanhonors-cookbooks/aws-sdk.svg?branch=master)][build-status]
[![Dependency Status](https://gemnasium.com/americanhonors-cookbooks/aws-sdk.svg)][dependency-status]

Installs the [aws-sdk][aws-sdk-gem] gem for use in other cookbooks.

## Requirements

### Dependencies

* [apt](https://github.com/opscode-cookbooks/apt)
* [build-essential](https://github.com/opscode-cookbooks/build-essential)

### Platforms

The following platforms are supported and tested:

* Ubuntu 12.04
* Ubuntu 14.04

Other Debian distributions are assumed to work.

## Attributes

### default

* `node['aws-sdk']['version']` - The version of the aws-sdk gem to install. (Default: `1.42.0`)
* `node['aws-sdk']['unf_version']` - The Version of the unf gem to install. (Default: `0.1.4`)

## Recipes

### default

The default recipe will install the aws-sdk and unf gems into Chef's gem environment.

**Note**: The default recipe overrides the `['apt']['compile_time_update']` and  `['build-essential']['compile_time']` attributes to ensure that the necessary development tools are installed for Nokogiri (a dependency of aws-sdk) to compile.

## Usage

Include the default recipe in your node or role.

## Development & Testing

### Rake

    $ bundle exec rake -T
    rake integration:cloud    # Run Test Kitchen with cloud plugins
    rake integration:vagrant  # Run Test Kitchen with Vagrant
    rake spec                 # Run ChefSpec examples
    rake style                # Run all style checks
    rake style:chef           # Lint Chef cookbooks
    rake style:ruby           # Run Ruby style checks
    rake travis               # Run all tests on Travis

### Versioning

The aws-sdk cookbook will always use the version of the aws-sdk gem set in the `[aws-sdk][version]` attribute for versioning.

## Contributing

1. Fork the repository on Github
2. Create a named feature branch (i.e. `feature/add-new-recipe`)
3. Write your change
4. Write ChefSpec and/or Serverspec tests for your change (if applicable)
5. Run the tests (see above), ensuring they all pass
6. Submit a Pull Request

## License & Authors

* Author:: Tony Burns (<tony.burns@quadlearninginc.com>)

```text
Copyright (c) 2014 Quad Learning, Inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```

[build-status]: https://travis-ci.org/americanhonors-cookbooks/aws-sdk
[dependency-status]: https://gemnasium.com/americanhonors-cookbooks/aws-sdk
[aws-sdk-gem]: https://aws.amazon.com/sdkforruby/
[opscode-cookbooks]: https://github.com/opscode-cookbooks
