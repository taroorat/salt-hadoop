hadoop:
  user.present:  
    - fullname: hadoop
    - shell: /bin/bash  
    - password: '$1$hadoop$eW6Q52yOaR7Ejjyz9.Ylf1'
    - home: /home/hadoop  
    - uid: 1008
    - gid: 1008 
    - groups:
      - hadoop
    - require:  
      - group: hadoop  
  
  group.present: 
    - gid: 1008

zk:
  user.present:  
    - fullname: zk
    - shell: /bin/bash  
    - password: '$1$zk$eW6Q52yOaR7Ejjyz9.Ylf1'
    - home: /home/zk 
    - uid: 1009
    - gid: 1009 
    - groups:
      - zk
      - hadoop
    - require:  
      - group: zk
  
  group.present: 
    - gid: 1009

