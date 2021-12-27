# Getting Started with Terraform

I'm learning [Terraform](https://www.terraform.io/), it's an [infrastructure as
code](https://en.wikipedia.org/wiki/Infrastructure_as_code) tool created by
[HashiCorp](https://www.hashicorp.com/). You can define infrastructure using a
declarative configuration language.

To learn the basics of Terraform I wrote this small configuration that will
create the following:

- Using [Packer](https://www.packer.io/), this will create a custom [AMI
  (Amazon Machine Images)](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AMIs.html)
  based on Ubuntu Server 20.04 LTS, set the `packer-key.pub` as the SSH key
  that is allowed to login into the server and will also install [Docker](https://www.docker.com/)

- Using Terraform, create a new EC2 instance based on the AMI created in the
  previous step.
  - Create an AWS Security Group rule to support access to the 22 port (SSH) and
    the 80 port (HTTP).

- Store the Terraform state in an encrypted S3 bucket instead of storing it
  locally.
