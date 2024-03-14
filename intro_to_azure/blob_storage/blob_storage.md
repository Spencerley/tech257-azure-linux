# Azure Blob Storage Explained:

## **a. What is it?**

Azure Blob Storage is a Microsoft Azure cloud service designed for storing **unstructured data**. This means data that doesn't follow a specific format, like:

* Text files (documents, logs)
* Images
* Videos
* Audio files

Blob storage is highly **scalable** and **cost-effective**, allowing you to store massive amounts of data efficiently. 

## **b. Blob vs. File System:**

Here's a breakdown of the key differences:

* **Structure:** Blob storage is **flat**, meaning files are directly addressed within a container. File systems (Windows, Linux, Mac) are **hierarchical**, with folders and subfolders for organization.
* **Access:** Blobs are accessed by their unique address. Files in a file system are reached by navigating the directory structure.
* **Scalability:** Blob storage is designed to handle massive data volumes easily. File systems have limitations on scalability.

## **c. Advantages and Disadvantages:**

**Advantages:**

* **Scalability:** Handles enormous data volumes.
* **Cost-effective:** Pay only for the storage used.
* **Durability:** Data is replicated across geographically distributed servers for high availability.
* **Security:** Offers various security features like encryption and access control.

**Disadvantages:**

* **Limited file management:** Lacks the familiar folder structure for organization.
* **Latency:** Accessing data might have higher latency compared to local storage.


## **d. Storage Tiers:**

Blob storage offers different tiers with varying performance and cost:

* **Hot:** Frequently accessed data (higher cost).
* **Cool:** Less frequently accessed data (lower cost).
* **Archive:** Infrequently accessed data (lowest cost).

**Azure Pricing Calculator:** [https://learn.microsoft.com/en-us/azure/cost-management-billing/costs/pricing-calculator](https://learn.microsoft.com/en-us/azure/cost-management-billing/costs/pricing-calculator) helps estimate costs based on your chosen tier and storage needs.

## **e. Parts of Azure Blob Storage:**

* **Account:** The top level container that holds your data. You can have one storage account per Azure subscription.
* **Container:** A logical grouping within a storage account to organize your blobs. Think of it as a folder in a traditional file system.
* **Blobs:** The actual data files stored within containers. Each blob has a unique identifier for access.

**Relationship:**

* An account can have multiple containers.
* Containers store one or more blobs.
* Blobs are the individual data files.


**Analogy:** Imagine a library. The account is the library building itself. Containers are sections within the library (fiction, non-fiction). Individual books are the blobs. 