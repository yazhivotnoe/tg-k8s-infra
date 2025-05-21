# TG kubernetes infra 

### Required env variables

for usege need setup env.hcl file in root folder


```hcl
yandex_access_key = ""
yandex_secret_key = ""
```

### Usage commands

```bash
terragrunt validate
terragrunt run-all plan
terragrunt run-all apply
```

#### Add new conture

- create a dev folder 
- create a <env>_vars.hcl file in the dev folder
- add modules with analogues prod modules

- and verify that the configuration is correct

```bash
terragrunt run-all plan --queue-include-dir  ./prod/config
# and apply after
terragrunt run-all apply --queue-include-dir  ./prod/config
```
