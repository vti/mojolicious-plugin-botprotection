Mojolicious::Plugin::BotProtection
==================================

This is a small [Mojolicious][mojo] plugin that helps your web app to detect
post requests from (spam) bots. These tests indicate that a request didn't
come from a human:

* a dummy field is filled in (hidden by CSS)
* a post request contains get query data
* no cookies accepted
* requesting too fast
* identical values for some fields
* wrong form signature in session

By default, this plugin renders an error message with status 400 if it thinks
the request came from a bot. You can customize that (and more):

    plugin bot_protection => {
        dummy_input             => 'xnorfzt',   # dummy by default
        max_identical_fields    => 3,           # 2 by default
        bot_detected_cb         => sub {        # better by default
            my ($c, $reason) = @_;
            $c->render_text(
                'Bad bot! (' . $reason . ')',
                status => 400,
                layout => undef,
            );
        },
    };

[mojo]: http://mojolicio.us/
