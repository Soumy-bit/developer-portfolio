# System Profile

Collected on: Sat Nov 28 12:02:57 UTC 2026

```text
$ uname -a
Linux LAPTOP-3LOQNNUT 6.18.58.1-microsoft-standard-WSL2 #1 SMP PREEMPT_DYNAMIC Tue Oct 27 00:24:11 UTC 2026 x86_64 GNU/Linux

$ cat /etc/os-release
PRETTY_NAME="Ubuntu 26.04.1 LTS"
NAME="Ubuntu"
VERSION_ID="26.04"
VERSION="26.04.1 LTS (Resolute Raccoon)"
VERSION_CODENAME=resolute
ID=ubuntu
ID_LIKE=debian
HOME_URL="https://www.ubuntu.com/"
SUPPORT_URL="https://help.ubuntu.com/"
BUG_REPORT_URL="https://bugs.launchpad.net/ubuntu/"
PRIVACY_POLICY_URL="https://www.ubuntu.com/legal/terms-and-policies/privacy-policy"
UBUNTU_CODENAME=resolute
LOGO=ubuntu-logo

$ lscpu
Architecture:                            x86_64
CPU op-mode(s):                          32-bit, 64-bit
Address sizes:                           39 bits physical, 48 bits virtual
Byte Order:                              Little Endian
CPU(s):                                  20
On-line CPU(s) list:                     0-19
Vendor ID:                               GenuineIntel
Model name:                              Intel(R) Core(TM) i5-14500HX
CPU family:                              6
Model:                                   183
Thread(s) per core:                      2
Core(s) per socket:                      10
Socket(s):                               1
Stepping:                                1
BogoMIPS:                                5606.40
Flags:                                   fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush mmx fxsr sse sse2 ss ht syscall nx pdpe1gb rdtscp lm constant_tsc rep_good nopl xtopology tsc_reliable nonstop_tsc cpuid tsc_known_freq pni pclmulqdq vmx ssse3 fma cx16 pcid sse4_1 sse4_2 x2apic movbe popcnt tsc_deadline_timer aes xsave avx f16c rdrand hypervisor lahf_lm abm 3dnowprefetch ssbd ibrs ibpb stibp ibrs_enhanced tpr_shadow ept vpid ept_ad fsgsbase tsc_adjust bmi1 avx2 smep bmi2 erms invpcid rdseed adx smap clflushopt clwb sha_ni xsaveopt xsavec xgetbv1 xsaves avx_vnni vnmi umip waitpkg gfni vaes vpclmulqdq rdpid movdiri movdir64b fsrm md_clear serialize ibt flush_l1d arch_capabilities
Virtualization:                          VT-x
Hypervisor vendor:                       Microsoft
Virtualization type:                     full
L1d cache:                               480 KiB (10 instances)
L1i cache:                               320 KiB (10 instances)
L2 cache:                                20 MiB (10 instances)
L3 cache:                                24 MiB (1 instance)
NUMA node(s):                            1
NUMA node0 CPU(s):                       0-19
Vulnerability Gather data sampling:      Not affected
Vulnerability Ghostwrite:                Not affected
Vulnerability Indirect target selection: Not affected
Vulnerability Itlb multihit:             Not affected
Vulnerability L1tf:                      Not affected
Vulnerability Mds:                       Not affected
Vulnerability Meltdown:                  Not affected
Vulnerability Mmio stale data:           Not affected
Vulnerability Old microcode:             Not affected
Vulnerability Reg file data sampling:    Mitigation; Clear Register File
Vulnerability Retbleed:                  Mitigation; Enhanced IBRS
Vulnerability Spec rstack overflow:      Not affected
Vulnerability Spec store bypass:         Mitigation; Speculative Store Bypass disabled via prctl
Vulnerability Spectre v1:                Mitigation; usercopy/swapgs barriers and __user pointer sanitization
Vulnerability Spectre v2:                Mitigation; Enhanced / Automatic IBRS; IBPB conditional; PBRSB-eIBRS SW sequence; BHI BHI_DIS_S
Vulnerability Srbds:                     Not affected
Vulnerability Tsa:                       Not affected
Vulnerability Tsx async abort:           Not affected
Vulnerability Vmscape:                   Not affected

$ free -h
               total        used        free      shared  buff/cache   available
Mem:            11Gi       627Mi        10Gi       4.4Mi       644Mi        10Gi
Swap:          3.0Gi          0B       3.0Gi

$ df -h
Filesystem      Size  Used Avail Use% Mounted on
none            5.8G     0  5.8G   0% /usr/lib/modules/6.18.58.1-microsoft-standard-WSL2
/dev/sdb         97M   97M     0 100% /usr/src/linux-headers-6.18.58.1-microsoft-standard-WSL2
none            5.8G  4.0K  5.8G   1% /mnt/wsl
drivers         476G  159G  318G  34% /usr/lib/wsl/drivers
/dev/sdd       1007G  1.7G  954G   1% /
none            5.8G   32K  5.8G   1% /mnt/wslg
none            5.8G     0  5.8G   0% /usr/lib/wsl/lib
rootfs          5.8G  3.4M  5.8G   1% /init
none            5.8G  868K  5.8G   1% /run
none            5.8G     0  5.8G   0% /run/lock
none            5.8G     0  5.8G   0% /run/shm
none            5.8G   80K  5.8G   1% /mnt/wslg/versions.txt
none            5.8G   80K  5.8G   1% /mnt/wslg/doc
C:\             476G  159G  318G  34% /mnt/c
tmpfs           5.8G     0  5.8G   0% /tmp
none            1.0M     0  1.0M   0% /run/credentials/systemd-journald.service
none            1.0M     0  1.0M   0% /run/credentials/systemd-resolved.service
snapfuse         67M   67M     0 100% /snap/core24/2124
snapfuse        5.9M  5.9M     0 100% /snap/shellcheck/1848
snapfuse         45M   45M     0 100% /snap/snapd/28254
snapfuse         33M   33M     0 100% /snap/snapd/28332
none            1.0M     0  1.0M   0% /run/credentials/getty@tty1.service
tmpfs           1.2G   12K  1.2G   1% /run/user/1000

```
