# vim: sts=2 ts=2 sw=2 et ai
{% from "serverpackages/map.jinja" import serverpackages with context %}

serverpackages__pkg_serverpackages:
  pkg.installed:
    - name: serverpackages
{% if serverpackages.slsrequires is defined and serverpackages.slsrequires %}
    - require:
{% for slsrequire in serverpackages.slsrequires %}
      - {{slsrequire}}
{% endfor %}
{% endif %}
    - pkgs: {{serverpackages.packages}}
