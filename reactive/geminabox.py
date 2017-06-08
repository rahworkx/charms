from charms.reactive import when, when_not, set_state
from charmhelpers.core.hookenv import status_set
from charmhelpers.core.host import chdir
from subprocess import call


@when('codebase.available')
@when_not('geminabox.docker.available')
def install_geminabox():
    #
    with chdir('/srv/geminabox/current'):
         call("docker build -t geminabox .".split())
         call("docker run -d -p 9292:9292 geminabox:latest".split())
         
    set_state('geminabox.docker.available')


@when('geminabox.docker.available')
def persist_status():
    status_set('active', 'Masterless Geminabox Configued')

