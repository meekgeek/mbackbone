({
    appDir : '../',
    baseUrl : 'js',
    dir : '../../release',
    paths: {
        jquery:         'libs/jquery/jquery',
        underscore:     'libs/underscore/underscore-min',
        backbone:       'libs/backbone/backbone-optamd3-min',
        text:           'libs/require/text',
        json2:          'libs/json/json2',
        templates:      '../templates',

    },
    optimize: 'uglify',
    fileExclusionRegExp: /^\./,
    modules: [
        {
            name: 'main',
            exclude: ['jquery', 'underscore', 'backbone', 'text', 'json2',]
        }
    ],
})