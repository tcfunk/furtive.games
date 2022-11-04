<?php

// phpcs:ignoreFile
// @see default.settings.php for more detailed explanations of individual settings


$settings['update_free_access'] = FALSE;

$settings['update_fetch_with_http_fallback'] = FALSE;

$settings['allow_authorize_operations'] = FALSE;

$settings['file_chmod_directory'] = 0775;
$settings['file_chmod_file'] = 0664;

$settings['file_public_path'] = 'sites/default/files';
$settings['file_private_path'] = '../private';
$settings['file_temp_path'] = '/tmp';

// Google thingy
$settings['block_interest_cohort'] = TRUE;

// Config overrides
$config['user.settings']['anonymous'] = 'Visitor';

// Load services definition file.
$settings['container_yamls'][] = $app_root . '/' . $site_path . '/services.yml';

$settings['trusted_host_patterns'] = [
  '^furtivegames\.com$',
  '^furtive\.games$',
];

// The default list of directories that will be ignored by Drupal's file API.
$settings['file_scan_ignore_directories'] = [
  'node_modules',
  'bower_components',
];

$settings['entity_update_batch_size'] = 50;

// Retain backup tables
$settings['entity_update_backup'] = TRUE;
$settings['migrate_node_migrate_type_classic'] = FALSE;

// Load local development override configuration, if available.
if (file_exists($app_root . '/' . $site_path . '/settings.local.php')) {
  include $app_root . '/' . $site_path . '/settings.local.php';
}

$settings['config_sync_directory'] = '../config/sync';
