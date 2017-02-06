{{ pillar['hadoop']['zookeeper_datadir'] }}:
  file.directory:
    - user: zk
    - group: zk
    - mode: 755
{{ pillar['hadoop']['zookeeper_datadir'] }}/myid:
  file.managed:
    - source: salt://hadoop/files/myid
    - template: jinja
    - user: zk
    - group: zk
    - mode: 644
    - require:
      - file: {{ pillar['hadoop']['zookeeper_datadir'] }}

{{ pillar['hadoop']['zk_confdir'] }}:
  file.directory:
    - user: zk
    - group: zk
    - mode: 755
{{ pillar['hadoop']['zk_confdir'] }}/zoo.cfg:
  file.managed:
    - source: salt://hadoop/files/zoo.cfg
    - template: jinja
    - user: zk
    - group: zk
    - mode: 644
    - require:
      - file: {{ pillar['hadoop']['zk_confdir'] }}
