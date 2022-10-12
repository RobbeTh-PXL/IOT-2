# IOT-2 Blogpost

## An explanation of what you believe infastructure as code is
```
The managing and provisioning of infrastructure through code instead of through manual processes.
We use code to describe the software's environments & dependencies/needs (in order to run successfully).
```

## Your own reasoning why you think infrastructure as code is useful, or isn't
```
- Fast mass-deployment of software (cloud/local...)
- "No" manual setting up of machines (config main.tf once)
- Easy cross-platform deployment (if software allows)
- Continuous configuration automation
- Remote Deployment
- Remote Resources (data,...)
- ...
```

## How Terraform plays a role in all the above
```
Terraform is an infrastructure as code tool. In CI/CD it's impossible to manually manage the individual infrastructures.
This tool helps you with the Continuous Integration and Continuous Deployment on different machines.

We can go from click-ops to code.
```

## Why you think Nix is awesome
```
It's clean and lightweight. Functionality works with packets (like an app store).
The Nix coding language is pure functional and rather simple to understand.
The packages are community build.
Reproducibility :)
```

## NOTES
I also tried using the Nix environment to run and compile the cpp code. Unfortunately I deleted the repo.
I did all of the basic tasks.
The following bonus tasks where completed:
- Auto format Terraform code in GA
- Create PR when not formatted correctly
- Package release through git tags
- Terraform remote state
- Build image with Nix (failed/half successfull, see above)
