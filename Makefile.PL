#!/usr/bin/env perl

use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
    NAME            => 'Mojolicious::Plugin::BotProtection',
    VERSION_FROM    => 'lib/Mojolicious/Plugin/BotProtection.pm',
    AUTHOR          => 'Viacheslav Tykhanovskyi <viacheslav.t@gmail.com>',
    PREREQ_PM => {
        'Mojolicious'           => '1.16',
    },
    test            => {TESTS => 't/*.t t/*/*.t t/*/*/*.t'}
);
