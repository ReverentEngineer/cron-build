# cron-build

A simple perl script for cron-builds including parallelization, poll-based change detection, and mail notifications.

# Usage

```
Usage:
    cron-build [options] [repo_file]

Options:
    --config=config_file
        Configuration file

    --jobs=count
        Number of concurrent builds to run.

    --mailto=recipients
        Recipients to mail build status.

    --verbose
        Enables verbose output
```

# Repository File

Users must either provide a one time repository file in the following form:

```
<NAME> <TAB> <URL> <TAB> <SCRIPT> <TAB>
...
```

Users can also provide this through stdin.

# Configuration File

A configuration file is optional but is required for mail notifications.
The configuration file is in simple ini form (`key=value`). The following
keys are accepted:

* **mailhost** - The host of the SMTP mail server to use for mail notifications.
* **mailfrom** - The `From` address of the mail notifications.
* **mailuser** - The name of the user account on the SMTP server
* **mailpass** - THe password of the user account on the SMTP server
