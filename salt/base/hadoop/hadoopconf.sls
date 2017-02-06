{{ pillar['hadoop']['hadoop_confdir'] }}:
  file.directory:
    - user: hadoop
    - group: hadoop
    - mode: 755
{{ pillar['hadoop']['hadoop_confdir'] }}/masters:
  file.managed:
    - source: salt://hadoop/files/masters
    - template: jinja
    - user: hadoop
    - group: hadoop
    - mode: 644
    - require:
      - file: {{ pillar['hadoop']['hadoop_confdir'] }}  

{{ pillar['hadoop']['hadoop_confdir'] }}/slaves:
  file.managed:
    - source: salt://hadoop/files/slaves
    - template: jinja
    - user: hadoop
    - group: hadoop
    - mode: 644
    - require:
      - file: {{ pillar['hadoop']['hadoop_confdir'] }}  

{{ pillar['hadoop']['hadoop_confdir'] }}/mapred-site.xml:
  file.managed:
    - source: salt://hadoop/files/mapred-site.xml
    - template: jinja
    - user: hadoop
    - group: hadoop
    - mode: 644
    - require:
      - file: {{ pillar['hadoop']['hadoop_confdir'] }}  

{{ pillar['hadoop']['hadoop_confdir'] }}/yarn-site.xml:
  file.managed:
    - source: salt://hadoop/files/yarn-site.xml
    - template: jinja
    - user: hadoop
    - group: hadoop
    - mode: 644
    - require:
      - file: {{ pillar['hadoop']['hadoop_confdir'] }}  

{{ pillar['hadoop']['hadoop_confdir'] }}/core-site.xml:
  file.managed:
    - source: salt://hadoop/files/core-site.xml
    - template: jinja
    - user: hadoop
    - group: hadoop
    - mode: 644
    - require:
      - file: {{ pillar['hadoop']['hadoop_confdir'] }}  

{{ pillar['hadoop']['hadoop_confdir'] }}/hdfs-site.xml:
  file.managed:
    - source: salt://hadoop/files/hdfs-site.xml
    - template: jinja
    - user: hadoop
    - group: hadoop
    - mode: 644
    - require:
      - file: {{ pillar['hadoop']['hadoop_confdir'] }}  

{{ pillar['hadoop']['hadoop_confdir'] }}/hadoop-env.sh:
  file.managed:
    - source: salt://hadoop/files/hadoop-env.sh
    - template: jinja
    - user: hadoop
    - group: hadoop
    - mode: 644
    - require:
      - file: {{ pillar['hadoop']['hadoop_confdir'] }}  

{{ pillar['hadoop']['hadoop_confdir'] }}/yarn-env.sh:
  file.managed:
    - source: salt://hadoop/files/yarn-env.sh
    - template: jinja
    - user: hadoop
    - group: hadoop
    - mode: 644
    - require:
      - file: {{ pillar['hadoop']['hadoop_confdir'] }}  
