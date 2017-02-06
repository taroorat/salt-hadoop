base:
  '*':
    - init.useradd
    - init.hosts
    - init.sysctl
    - hadoop.hadinstall
    - hadoop.zkconf
    - hadoop.hbaseconf
    - hadoop.hadoopconf
