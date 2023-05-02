# Commands Documentation

### File Management\n\n

---

### System Information\n\n

---

### Networking\n\n

---

**Command:** `sudo firewall-cmd --zone=public --permanent --addport=22/tcp`

**Description:** to make the change permanent and open a port on a linux server, allowing inboud or outboud connections to your system

**Details:** firewalld needs to be installed

**Timestamp:** 2023-05-02 08:58:05

---

### Process Management\n\n

---

**Command:** `systemctl list-units --type=service --state=active`

**Description:** to lists services by status

**Details:** possible values of --state can be running, stopped, enabled, disabled and failed

**Timestamp:** 2023-05-02 09:00:50

---
