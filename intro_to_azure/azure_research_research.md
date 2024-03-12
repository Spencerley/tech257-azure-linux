# Azure Research

## The basics of Azure

- Imagine a vast network of servers, storage, databases, and other resources readily available over the internet, accessible on demand - that's the essence of cloud computing. 
- Microsoft Azure is a prominent cloud computing platform offering a plethora of these resources and services. 
- Scalability reliability, security and global reach. Great hybrid capability too.
- Most large enterprise work with Microsoft so allows better and easier integration with their other products and ecosystem.
- Think of it as a digital marketplace where you can rent and utilize pre-configured solutions or build your own from scratch, eliminating the need for physical infrastructure management.

## Azure regions and availability zones: how they work and include up-to-date diagrams to help

### Regions: 

- Azure divides the world into geographical regions, each with its own data centers housing various computing resources. Choosing the right region depends on factors like latency (data transfer speed), compliance regulations, and disaster recovery needs.

### Availability Zones: 

- Within a region, Azure further divides its data centers into availability zones. These zones are physically separated and interconnected with high-bandwidth, low-latency connections. This redundancy helps ensure your applications remain operational even if one zone experiences an outage.
- Independent cooling, networking and power in each availability zone so they each should have their own back-ups but it means if one goes down you'll still be able to access your data.

![alt text](images/regions-availability-zones.png)

## How is Azure structured/organised (resources you create on there)?

### Azure resources are organized hierarchically using various components:

- Resource groups: Can group whatever you want into a resource group or split it up depending on teams and management. Containers, can't put them inside of one another.
- Group related resources (e.g., VMs, databases) for easier management and access control.
- Subscriptions: Represent a billing unit for your Azure usage. You can have multiple subscriptions for different projects or cost centers. Different subscriptions to seperate different payments, departments with different Azure budgets, seperate payment accounts. Every subscription hads limits - number of VM's of same size you can make in one region on one subscription (50 VM's same size in same region) so may need more subscriptions to get around this.
- Management groups: Optionally organize multiple subscriptions for centralized governance and policy application across your Azure environment. 6 levels (work like folders, can have MG inside MG). Has a root management group to look after the MG's - Azure AD Tenant (where users, groups and permissions reside). All MG's provide different scopes and every scope is a level at which you can set policies and access.

![resource groups](images/resource-structure.png)

## What types/categories of services does Azure provide?

### Azure offers a diverse range of services categorized into different groups:

- Compute: Virtual Machines (VMs), containers, serverless functions for building and running applications.
- Storage: Blob storage for unstructured data, disk storage for VMs, databases for structured data.
- Networking: Virtual networks, firewalls, load balancers for connecting and securing your resources.
- Management: Tools for monitoring, managing, and automating your Azure resources.
- Security: Identity and access management, data encryption, threat protection solutions.
- Artificial Intelligence: Machine learning, cognitive services, and other AI tools for building intelligent applications.
- Web & Mobile: Tools for building and deploying web and mobile applications.
- Data & Analytics: Services for storing, managing, and analyzing big data.
- Azure DevOps: CI/CD, Kanban boards, Scrum etc.

## Why/when use the Azure Pricing Calculator?

- The Azure Pricing Calculator is an invaluable resource for estimating the cost of using various Azure services. 
- You can specify the resources you plan to use (e.g., VM type, storage size) and the duration of use to get a personalized cost estimate. 
- This helps you plan your budget and choose cost-effective solutions for your needs.
- These are the core concepts of Azure. 
- Remember, this is just the beginning. 
- As you explore further, you'll discover the vast potential of Azure and its services in building, deploying, and managing your cloud-based solutions.

<!-- "In the README.md, add + personalise the content with your own comments, "take-aways", things you've learnt. Supplement the content with extra research where you feel your understanding is weaker.
Understand the content so you are ready to be asked interview questions on the topic" -->