# vim: sts=2 ts=2 sw=2 et ai
{% from "serverpackages/map.jinja" import serverpackages with context %}

serverpackages__pkg_serverpackages:
  pkg.installed:
    - pkgs: {{serverpackages.packages}}
{% if serverpackages.slsrequires is defined and serverpackages.slsrequires %}
    - require:
{% for slsrequire in serverpackages.slsrequires %}
      - {{slsrequire}}
{% endfor %}
{% endif %}

serverpackages__pkg_serverpackages_additional:
  pkg.installed:
    - pkgs: {{serverpackages.packages_additional}}

serverpackages__pkg_serverpackages_latest:
  pkg.latest:
    - pkgs: {{serverpackages.packages_latest}}


serverpackages__pkg_serverpackages_latest_additional:
  pkg.latest:
    - pkgs: {{serverpackages.packages_latest_additional}}
