<?php

/**
 * This file has been auto-generated
 * by the Symfony Routing Component.
 */

return [
    false, // $matchHost
    [ // $staticRoutes
        '/actus' => [[['_route' => 'actus', '_controller' => 'App\\Controller\\ActusController::index'], null, null, null, false, false, null]],
        '/aidants' => [[['_route' => 'aidants', '_controller' => 'App\\Controller\\AidantsController::index'], null, null, null, false, false, null]],
        '/patients' => [[['_route' => 'patients', '_controller' => 'App\\Controller\\PatientsController::index'], null, null, null, false, false, null]],
        '/article/ajout' => [[['_route' => 'ajout_article', '_controller' => 'App\\Controller\\PatientsController::createArticle'], null, null, null, false, false, null]],
    ],
    [ // $regexpList
        0 => '{^(?'
                .'|/_error/(\\d+)(?:\\.([^/]++))?(*:35)'
                .'|/article/(?'
                    .'|edit/([^/]++)(?'
                        .'|(*:70)'
                    .')'
                    .'|([^/]++)(*:86)'
                    .'|edit/([^/]++)(*:106)'
                .')'
            .')/?$}sDu',
    ],
    [ // $dynamicRoutes
        35 => [[['_route' => '_twig_error_test', '_controller' => 'twig.controller.preview_error::previewErrorPageAction', '_format' => 'html'], ['code', '_format'], null, null, false, true, null]],
        70 => [
            [['_route' => 'app_actus_update', '_controller' => 'App\\Controller\\ActusController::update'], ['id'], null, null, false, true, null],
            [['_route' => 'app_aidants_update', '_controller' => 'App\\Controller\\AidantsController::update'], ['id'], null, null, false, true, null],
        ],
        86 => [[['_route' => 'article_show', '_controller' => 'App\\Controller\\PatientsController::show'], ['id'], null, null, false, true, null]],
        106 => [
            [['_route' => 'app_patients_update', '_controller' => 'App\\Controller\\PatientsController::update'], ['id'], null, null, false, true, null],
            [null, null, null, null, false, false, 0],
        ],
    ],
    null, // $checkCondition
];
