---
layout: page
title: Data Classification Levels
weight: 12
---

## Data Classification Levels

Meltano identifies the following levels of data sensitivity:

- [Level 1: Public](#level-1-public)
- [Level 2: Sensitive](#level-2-sensitive)
- [Level 3: Restricted](#level-3-restricted)
- [Level 4: Highly Restricted](#level-4-highly-restricted)

### Level 1: Public

**Description:** Public data is purposefully made available to the public by the data steward or some other valid authority and may be freely disseminated without potential harm to Meltano or its affiliates.

**Examples:**

- Plugin execution data shared on the Hub.
- Text content of issues and PRs created on public repos.
- Public product and service information.
- Company directory listings.
- Published blog postings.
- Publicly shared presentations.
- Job postings.
- Press releases.
- Product manuals and training materials.

### Level 2: Sensitive

**Description:** Sensitive data includes information that is not openly shared with the general public but is not specifically required to be protected by statute, regulation or by department, division or other governing policies. It is intended for use by a designated workgroup, department or group of individuals. Unauthorized disclosure of this information could adversely impact Meltano, its customers, or affiliates.

Note: While some forms of sensitive data can be made available to the public, it is not freely disseminated without appropriate authorization. This data may inadvertently disclose trade secrets or other information that opens unnecessary risks or other operational costs. A manager or member of the leadership team can approve the sharing of this data.

**Examples:**

- Budget information.
- Employee IDs.
- Personal pager or cell phone numbers.
- Internal memos.
- Internal business plans.

### Level 3: Restricted

**Description:** Restricted data is highly confidential business or personal information. There are often general statutory, regulatory or contractual requirements that require protection of the data. It is intended for a very specific use and should not be disclosed except to those who have explicit authorization to review such data. Unauthorized disclosure of this information could have a serious adverse impact on Meltano, its customers or affiliates.

Regulations and laws that affect data in DCL3 include, but are not limited to, Family Educational Rights & Privacy Act (FERPA) and the Graham-Leach-Bliley Act (GLBA).

**Examples:**

- Customer IDs, including billing account numbers.
- All other customer data that is not explicitly shared by the customer, including the names of persons and organizations who are customers of Meltano if they have not explicitly given permission for their names to be used.
- All other personally identifiable information (PII) such as name, birthdate, address, etc. where the information is held in combination and could lead to identity theft or other misuse; certain research (e.g. proprietary or otherwise protected).

### Level 4: Highly Restricted

**Description:** Highly restricted data is business or personal information that is required to be strictly protected. There are often governing statutes, regulations or standards with specific provisions that dictate how this type of data must be protected. It is intended for a very limited use and must not be disclosed except to those who have explicit authorization to view or use the data. Unauthorized disclosure of this information could have a serious adverse impact on the company, individuals or affiliates.

Regulations, laws and standards that affect data in DCL4 include, but are not limited to, the Arms Export Control Act (Title 22, U.S.C., Sec 2751, et seq.), the Export Administration Regulations (15 CFR 730 et seq.), the Health Insurance Portability & Accountability Act (HIPAA) and Payment Card Industry (PCI) standards.

**Examples:**

- Customer passwords, credentials, and other secrets.
- Internal passwords, credentials, and other secrets.
- Payment instruments, such a credit card information, banking account numbers, etc.
- PHI, "Personal Health Information", as defined by HIPAA.
- Social security numbers, driver license numbers, or other government-issued IDs.

## Shorthand and Practical Usage

As a shorthand, the above data classification levels can be referred to as "Level 1" or "DCL1" and these notations would correspond with the "Public" classification level (for instance).

## Data Classification Exercises and Exposure Risk Evaluations

Periodically, Meltano will conduct risk evaluations based on data classification levels above. For instance, we perform regular review of data classification rules and data handling as part of our SOC2 audit processes.

## Guidelines for responsible data management

As a rule, DCL3 and above are not permitted to be shared internally or externally without proper data protections in place. Sharing of DCL3 requires a 'needs to know' basis as derived from specific job responsibilities.

### Log Files

DCL3 and above data is not permitted to be stored in Meltano's own internal infrastructure logs.

As a rule, customers' logs from data processing workloads are treated as DCL3 (restricted), and should be presumed to contain DCL3 data. For this reason, it is not permitted to view customers' raw log files without proper business justification, for instance: a troubleshooting request or help desk request from the user.

### Data Warehousing and Analytics

Level 4 (Highly Restricted) data is explicitly forbidden in extract/load operations and in data warehouse transformations.

If and when Level 4 data is identified, a "high urgency" issue should be created in the `internal-data` repo and the following actions should be taken immediately: (1) delete/purge the data from the warehouse, (2) deselect data from EL processes, (3) optionally re-add the data using a suitable hash algorithm to ensure proper anonymization.

## FAQ

### What Is Personally Identifiable Information (PII)?

Personally identifiable information (PII) is information that, when used alone _or with other relevant data_, can identify an individual.

PII may contain direct identifiers (e.g., passport information) that can identify a person uniquely, or quasi-identifiers (e.g., race) that can be combined with other quasi-identifiers (e.g., date of birth) to successfully recognize an individual.

### What is SOC2 and how does it relate to data classification?

The SOC 2 Trust Services Criteria requires that organizations demonstrate that they identify and protect confidential information, and that they meet the company’s objectives related to confidentiality.
