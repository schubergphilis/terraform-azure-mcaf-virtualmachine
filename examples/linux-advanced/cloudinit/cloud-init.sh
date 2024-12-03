#cloud-config
package_update: true
package_upgrade: true
apt:
  sources:
    ansible:
      source: ppa:ansible/ansible


packages:
  - sshpass
  - python3-pip
  - ansible

run_cmd:
 - pip3 install pipenv
