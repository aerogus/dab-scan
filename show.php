#!/usr/bin/env php
<?php

require __DIR__ . '/vendor/autoload.php';

define('DAB_SCAN_FILE', '/home/pi/dab-scan.json');

$dab_scan_file = !empty($argv[1]) ? $argv[1] : 'dab-scan.json';
if (!file_exists($dab_scan_file)) {
    exit(1);
}

$headers = [
    'canal',
    'muxId',
    'muxName',
    'serviceId',
    'subchannelId',
    'serviceName',
    'bitRate',
    'audio',
    'language',
    'protectionLevel',
    'codeRate',
];

$data = [];

$obj = json_decode(file_get_contents($dab_scan_file));

foreach ($obj as $muxId => $mux) {
    foreach ($mux->services as $serviceId => $service) {
	$row = [];
        $row[] = $mux->channel;
       	$row[] = $muxId;
	$row[] = $mux->name;
	$row[] = $serviceId;
	$row[] = $service->subchannelId;
	$row[] = $service->name;
	$row[] = $service->bitRate;
	$row[] = $service->audio;
	$row[] = $service->language;
	$row[] = $service->protectionLevel;
	$row[] = $service->codeRate;
	$data[] = $row;
    }
}

$table = new \cli\Table();
$table->setHeaders($headers);
$table->setRows($data);
$table->setRenderer(new \cli\table\Ascii());
$table->display();

echo "Total: " . sizeof($data) . " stations\n";

