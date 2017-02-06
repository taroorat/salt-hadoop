{{ pillar['hadoop']['hbase_confdir'] }}:
  file.directory:
    - user: hadoop
    - group: hadoop
    - mode: 755
{{ pillar['hadoop']['hbase_confdir'] }}/backup-masters:
  file.managed:
    - source: salt://hadoop/files/backup-masters
    - template: jinja
    - user: hadoop
    - group: hadoop
    - mode: 644
    - require:
      - file: {{ pillar['hadoop']['hbase_confdir'] }}  

{{ pillar['hadoop']['hbase_confdir'] }}/regionservers:
  file.managed:
    - source: salt://hadoop/files/regionservers
    - template: jinja
    - user: hadoop
    - group: hadoop
    - mode: 644
    - require:
      - file: {{ pillar['hadoop']['hbase_confdir'] }}  

{{ pillar['hadoop']['hbase_confdir'] }}/hbase-site.xml:
  file.managed:
    - source: salt://hadoop/files/hbase-site.xml
    - template: jinja
    - user: hadoop
    - group: hadoop
    - mode: 644
    - require:
      - file: {{ pillar['hadoop']['hbase_confdir'] }}  

{{ pillar['hadoop']['hbase_confdir'] }}/hbase-env.sh:
  file.managed:
    - source: salt://hadoop/files/hbase-env.sh
    - template: jinja
    - user: hadoop
    - group: hadoop
    - mode: 644
    - require:
      - file: {{ pillar['hadoop']['hbase_confdir'] }}  
