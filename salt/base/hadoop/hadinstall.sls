jdk:
  file.managed:
    - name: /home/salt-hadoop/salt/base/hadoop/files/jdk-8u121-linux-x64.rpm
    - source: salt://hadoop/files/jdk-8u121-linux-x64.rpm
    - user: root
    - group: root
    - mode: 644
    - makedirs: True
  cmd.run:
    - name: rpm -Uvh /home/salt-hadoop/salt/base/hadoop/files/jdk-8u121-linux-x64.rpm
    - user: root
    - unless: rpm -q jdk-1.8.121
    - require:
      - file: jdk

hadoop_install:
  file.managed:
    - name: /home/salt-hadoop/salt/base/hadoop/files/hadoop-2.6.0-cdh5.9.0.tar.gz
    - source: salt://hadoop/files/hadoop-2.6.0-cdh5.9.0.tar.gz
    - user: root
    - group: root
    - mode: 644
    - makedirs: True
  cmd.run:
    - name: tar xf /home/salt-hadoop/salt/base/hadoop/files/hadoop-2.6.0-cdh5.9.0.tar.gz && mv /root/hadoop-2.6.0-cdh5.9.0 /home/hadoop && chown -R hadoop.hadoop /home/hadoop
    - user: root
    - require:
      - file: hadoop_install

hbase_install:
  file.managed:
    - name: /home/salt-hadoop/salt/base/hadoop/files/hbase-1.2.0-cdh5.9.0.tar.gz
    - source: salt://hadoop/files/hbase-1.2.0-cdh5.9.0.tar.gz
    - user: root
    - group: root
    - mode: 644
    - makedirs: True
  cmd.run:
    - name: tar xf /home/salt-hadoop/salt/base/hadoop/files/hbase-1.2.0-cdh5.9.0.tar.gz && mv /root/hbase-1.2.0-cdh5.9.0 /home/hadoop && chown -R hadoop.hadoop /home/hadoop
    - user: root
    - require:
      - file: hbase_install

zk_install:
  file.managed:
    - name: /home/salt-hadoop/salt/base/hadoop/files/zookeeper-3.4.5-cdh5.9.0.tar.gz
    - source: salt://hadoop/files/zookeeper-3.4.5-cdh5.9.0.tar.gz
    - user: root
    - group: root
    - mode: 644
    - makedirs: True
  cmd.run:
    - name: tar xf /home/salt-hadoop/salt/base/hadoop/files/zookeeper-3.4.5-cdh5.9.0.tar.gz && mv /root/zookeeper-3.4.5-cdh5.9.0 /home/zk && chown -R zk.zk /home/zk
    - user: root
    - require:
      - file: zk_install


