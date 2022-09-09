# Licenses

Software projects SHOULD be licensed using the Apache 2.0 license.

## How should the Apache license be applied to a repository?

To apply the Apache 2.0 license to your work, two separate files need to be created in the root of the repository:


(1) a “NOTICE” file containing the following boilerplate notice:

```
Copyright 2019 Input Output (HK) Ltd.

Licensed under the Apache License, Version 2.0 (the "License”). You may not use this file except in compliance with the License. You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0.txt

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
```

(2) a “LICENSE” file containing the full license text which can be obtained from this link http://www.apache.org/licenses/LICENSE-2.0.txt 

## Rationale

TODO: this is very IOHK-specific

Apache 2.0 is a permissive license that is widely deployed and backed by a strong community. Apache 2.0 allows users the freedom to use the software for any purpose, to distribute it, to modify it, and to distribute modified versions of it under the terms of the license, without any concern about royalties. 

A key advantage of the Apache 2.0 license is that it contains provisions that are absent from many other free and open source licenses (including the MIT license) and which provide more clarity to contributors and users alike. For example:

- Apache 2.0 specifically denies users the right to use IOHK's trademarks except as required to describe the origin of the work or to reproduce the content of a notice file. 
   - This helps to protect IOHK’s branding as “IOHK”. 
   - For clarity: Cardano's trademarks do not fall under the license. Cardano's trademarks continue to be regulated by the Cardano Foundation only.
- Apache 2.0 is better at preserving the integrity of the original work because of more detailed terms around modifications. Unlike the MIT license, for instance, it requires users to list out all the modifications contained in the derivative work and to preserve previous notices. It also explicitly authorizes users to release modified versions of the work under another license, provided that the terms of the Apache 2.0 license are not violated. If no other license is designated, the modifications are automatically subject to the Apache 2.0 license.
   - This allows for future modifications and derivatives of our products, while making sure that such modifications and derivatives will equally be open-sourced, and that the references to the original work are preserved throughout.
- Apache 2.0 contains a patent license and retaliation clause which is designed to prevent patents (including by patent trolls) from encumbering the software project.
   - This allows our products to prosper long-term and allows IOHK to defend them against future legal attacks by competitors, patent trolls, ...
