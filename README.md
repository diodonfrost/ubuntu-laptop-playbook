# Ubuntu laptop playbook

[![Build Status](https://travis-ci.org/diodonfrost/ubuntu-laptop-playbook.svg?branch=master)](https://travis-ci.org/diodonfrost/ubuntu-laptop-playbook)

This playbook installs and configures most of the software I use on my Ubuntu laptop for Cloud and software development.

## Installation

1.  [Install Ansible](http://docs.ansible.com/intro_installation.html).
2.  Clone this repository to your local drive.
3.  Run 'ansible-galaxy install -r requirements.yml' inside this directory to install required Ansible roles.
4.  Run 'ansible-playbook playbook.yml' inside this directory.

### Running a specific set of tagged tasks

You can filter which part of the provisioning process to run by specifying a set of tags using `ansible-playbook`'s `--tags` flag.
The tags available:

-   atom
-   aws-cli
-   discord
-   docker
-   gcloud
-   minikube
-   puppet
-   slack
-   spotify
-   tusk
-   vagrant

    ansible-playbook playbook.yml --tags "atom,docker,puppet"

## Overriding Defaults

```yaml
---
# defaults file for linux-dev-playbook

# Install text editor Atom.
# Default is true.
atom_install: true

# Install awscli.
# Default is true.
awscli_install: true

# Install voice and text chat Discord.
# Default is true.
discord_install: true

# Install Docker.
# Default is true.
docker_install: true

# Install google sdk for cloud provider
# Default is true
gcloud_install: true

# Install Minikube for deploy local kubernetes cluster
# Default is true
minikube_install: true

# Install configuration management tool Puppet.
# Default is true.
puppet_install: true

# Specify puppet-agent version
puppet_version: "5"

# Install text chat Slack.
# Default is true.
spotify_install: true

# Install text chat Slack.
# Default is true.
slack_install: true

# Install Tusk note.
# Default is true.
tusk_install: true

# Install provisionner Vagrant.
# Default is true.
vagrant_install: true

# Install shell Oh-My-Zsh.
# Default is true.
ohmyzsh_install: true

atom_packages:
  - atom-beautify
  - atom-jinja2
  - atom-material-ui
  - busy-signal
  - git-plus
  - highlight-selected
  - intentions
  - language-ansible
  - language-chef
  - language-docker
  - language-groovy
  - language-puppet
  - language-terraform
  - linter
  - linter-ansible-linting
  - linter-docker
  - linter-erb
  - linter-golinter
  - linter-markdown
  - linter-puppet-lint
  - linter-pylint
  - linter-ruby
  - linter-shellcheck
  - linter-ui-default
  - markdown-preview-plus
  - minimap
```

## Dependencies

None

## Local Testing

The preferred way of locally testing the role is to use Vagrant. You will have to install Vagrant on your system.

For all our tests we use test-kitchen.

Next install test-kitchen:

```shell
# Install dependencies
gem install bundler
bundle install
```

### Testing with Virtualbox

```shell
# fast test on one machine
kitchen test default-ubuntu
```

## License

Apache 2

## Author Information

This role was created in 2018 by diodonfrost.
