use inc::Module::Install;

name           'Mac-KeyboardMaestro';
all_from       'lib/Mac/KeyboardMaestro.pm';

requires       'Test::More'       => 0;
requires       'Mac::AppleScript' => 0.04;

license 'perl';
githubmeta;
author_tests('xt');
readme_from    'lib/Mac/KeyboardMaestro.pm';

WriteAll;
