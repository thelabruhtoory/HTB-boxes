---
title: "Hack The Box: (box_name) Report"
author: ["author"]
date: "2022-3-15"
subject: "Markdown"
keywords: [Markdown, Example]
subtitle: "Box Report"
lang: "en"
titlepage: true
titlepage-color: "1E90FF"
titlepage-text-color: "FFFAFA"
titlepage-rule-color: "FFFAFA"
titlepage-rule-height: 2
book: true
classoption: oneside
code-block-font-size: \scriptsize
---
# Hack The Box: (box_name) Report

# Methodologies

I utilized a widely adopted approach to performing penetration testing that is effective in testing how well the (box_name) machine is secured.
Below is a breakout of how I was able to identify and exploit the variety of systems and includes all individual vulnerabilities found.

## Information Gathering

The information gathering portion of a penetration test focuses on identifying the scope of the penetration test.
During this penetration test, I was tasked with exploiting the (box_name) machine.

The specific IP address was:

- ip_addr

## Penetration

The penetration testing portions of the assessment focus heavily on gaining access to a variety of systems.
During this penetration test, I was able to successfully gain access to the (box_name) machine.

### System IP: ip_addr

#### Service Enumeration

The service enumeration portion of a penetration test focuses on gathering information about what services are alive on a system or systems.
This is valuable for an attacker as it provides detailed information on potential attack vectors into a system.
Understanding what applications are running on the system gives an attacker needed information before performing the actual penetration test.
In some cases, some ports may not be listed.

Server IP Address | Ports Open
------------------|----------------------------------------
ip_addr      | **TCP:** \ **UDP:**

**Nmap Scan Results:**

Service Scan:

```bash

```

Output:

```txt

```

Vulnerability Scan:

```bash

```

Output:

```txt

```


\newpage

#### Initial Access

**Vulnerability Exploited:**

**Vulnerability Explanation:**

Reference: *link*

**Vulnerability Fix:**

Reference: *link*

**Severity:** Critical

**Exploit Code:**

Reference: *link*

**Local.txt Proof Screenshot**

![x](screenshots-storage/image.png)

**Local.txt Contents**

```txt
localtxt
```

\newpage

#### Privilege Escalation

**Vulnerability Exploited:** Weak file permissions.

**Vulnerability Explanation:**

Reference: *link*

**Vulnerability Fix:**

Reference: *link*

**Severity:** Critical

**Exploit Code:**

Reference: *link*

**Proof Screenshot Here:**

![x](screenshots-storage/image.png)

**Proof.txt Contents:**

```txt
prooftxt
```


## Maintaining Access

Maintaining access to a system is important to us as attackers, ensuring that we can get back into a system after it has been exploited is invaluable.
The maintaining access phase of the penetration test focuses on ensuring that once the focused attack has occurred (i.e. a buffer overflow), we have administrative access over the system again.
Many exploits may only be exploitable once and we may never be able to get back into a system after we have already performed the exploit.

## House Cleaning

The house cleaning portions of the assessment ensures that remnants of the penetration test are removed.
Often fragments of tools or user accounts are left on an organization's computer which can cause security issues down the road.
Ensuring that we are meticulous and no remnants of our penetration test are left over is important.

After collecting trophies from the (box_name) machine was completed, I removed all user accounts, passwords, and malicious codes used during the penetration test.
Hack the box should not have to remove any user accounts or services from the system.

# Appendix - Additional Items

## Appendix - Proof and Local Contents:

IP (Hostname) | Local.txt Contents | Proof.txt Contents
--------------|--------------------|-------------------
ip_addr   |  localtxt | prooftxt


## Appendix - /etc/passwd contents

```txt

```

## Appendix - /etc/shadow contents

```txt

```