#!/usr/bin/env node

var fs       = require('fs');
var path     = require('path');
var ncp      = require('ncp').ncp;
var readline = require('readline');

var args = process.argv.slice(2);

if (args.length === 0) {
  help();
}
else if (args[0] === 'install') {

  var destination = path.join(process.cwd(), args[1] || '.');

  if (! fs.existsSync(destination)) {
    console.error('The specified folder does not exist:');
    console.error(destination);
    process.exit(1);
  }

  if (! args[1]) {
    console.log('This will install bourbon into ' + destination + '/bourbon');

    process.openStdin();
    var rl = readline.createInterface(process.stdin, process.stdout);
    rl.setPrompt('Ok? [Y/n] ');
    rl.prompt();

    rl.on('line', function(line) {
      var input = line.toLowerCase() || 'y';
      if (input === 'y') {
        install(destination);
      }
      else {
        help();
      }
      rl.close();
    });
  }
  else {
    install(destination);
  }
}

function install (folder) {
  var source = path.join(__dirname, '../core');
  var destination = path.join(folder, 'bourbon');

  var options = {
    rename: function(destPath) {
      console.log('    ' + destPath.replace(destination + '/', ''));
      return destPath;
    },
    clobber: false
  };

  ncp.limit = 16;
  ncp(source, destination, options, function(err) {
   if (err) {
     console.error(err);
     process.exit(1);
   }
  });
}

function help () {
  console.log('Usage:');
  console.log('  bourbon install [directory]');
}
