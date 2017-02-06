/etc/hosts:
    file.managed:
        - source: salt://init/files/hosts
        - user: root
        - grop: root
        - mode: 644

