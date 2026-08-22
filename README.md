# 🚀 **LINUX & GIT PRACTICE LAB**
---
### 📌 **ABOUT THE REPOSITORY**
> **A hands-on, day-to-day log of Linux System Administration, Advanced Shell Scripting, and Production-Grade Git Workflows.**
---
### **DAILY PROGRESS BREAKDOWN**

| Day | Core Focus Area | Key Commands & Tools |
| :--- | :--- | :--- |
| **DAY 01** | **System Info & File Permissions** | `chmod`, `chown`, Redirections (`>`, `>>`) |
| **DAY 02** | **Log Searching & Process Control** | `grep`, `find`, `kill`, `ps` |
| **DAY 03** | **Git Stash & Branching Workflows** | `git stash`, `git branch`, `git checkout` |
| **DAY 04** | **Backup Scripts & Ignores** | `backup-logs.sh`, `.gitignore` |
| **DAY 05** | **Process Management & Dashboards** | `top`, `htop`, `ss`, `ip` |
| **DAY 06** | **User Management & Environment** | `useradd`, `usermod`, `export`, `env` |
| **DAY 07** | **Log Processing & Archival** | `awk`, `grep`, `tar -czvf`, `sort \ | uniq -c` |

---
### 🛠️ **FEATURED AUTOMATION SCRIPTS**
* 🔍 **`parse_logs.sh`** : **Automated Log Analyzer**  
  *Extracts system errors, suppresses error streams via `2>/dev/null`, and counts unique error types using `awk` & `sort`.*
* 📦 **`archive_logs.sh`** : **Log Archival & Compression**  
  *Bundles and compresses log files into `.tar.gz` format with automated timestamps.*
---
### 💡 **WORKFLOW & BEST PRACTICES**
* **Branching Model:** Feature-branching workflow (`checkout -b` $\rightarrow$ `merge` $\rightarrow$ `branch -d`).
* **History Management:** Clean commit messages and `git pull --rebase` execution.
