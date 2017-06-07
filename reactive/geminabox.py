from charms.reactive import when, when_not, set_state


@when_not('geminabox.installed')
def install_geminabox():
    #



    set_state('geminabox.installed')
