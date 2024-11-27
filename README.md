# terraform-azure-mcaf-virtualmachine
Terraform module to deploy virtual machines

**note** This module has a lot of items taken from the azure AVM module.

## Usage

### How to find the right SKU

Partialy search to speed up, it can take some time if you search for all SKU's.

* --size D4s
* --size _v6
* --zone to list only availabity zone enabled sku's

```shell
az vm list-skus --location germanywestcentral --query '[?resourceType==`virtualMachines` && restrictions == `[]`]' --output table --size D4
#
az vm list-skus --location germanywestcentral --query '[?resourceType==`virtualMachines` && restrictions == `[]`]' --output table --size _v6
```

### how to find the right image definition. (Publisher, Offer, SKU)

Partialy search to speed up, it can take some time if you search for all images.

* --sku gen2
* --sku 22_04

Add --all if you want to to list all available.

```shell
# Windows
az vm image list --location germanywestcentral --publisher MicrosoftWindowsServer --sku 2025 --output table --query "[].{Publisher:publisher, Offer:offer, Sku:sku, Version:version}"

#Ubuntu
az vm image list --location germanywestcentral --publisher Canonical --output table --query "[].{Publisher:publisher, Offer:offer, Sku:sku, Version:version}"
```

<!-- BEGIN_TF_DOCS -->

<!-- END_TF_DOCS -->

## License

**Copyright:** Schuberg Philis

```text
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