homebrew-rsyslog-liblognorm
===========================

Custom brew formulas to build/install rsyslog with liblognorm enabled.

Install this repository as tap, ignore warnings:
```bash
brew tap perch24/homebrew-rsyslog-liblognorm
```

If you experience errors while building indicating trouble with pkg-config:
```bash
export PKG_CONFIG=/usr/local/bin/pkg-config
```

Install from tap:
```bash
brew install perch24/homebrew-rsyslog-liblognorm/rsyslog
```

The binary will be located in /usr/local/sbin/rsyslogd, add this to your $PATH or start with full path name. The following example will start rsyslogd using your config file, keep it from switching to background and print out debug info so you can see what is going on:

```bash
sudo rsyslogd -f /path/to/your/rsyslog.conf -n -d
```
