/*jslint white: true */
/*global exports, String, Buffer, require, console */

exports.ps3Controller = exports.ps3Controller || (function () {
  'use strict';

  /**
   * @author brian@bevey.org
   * @fileoverview Basic control over PS3 pre-configured GIMX setup.
   * @requires child_process
   */
  return {
    version : '0.0.0.0.1 alpha',
    /**
     * Whitelist of available key codes to use.  We could support all buttons,
     * as they are supported in GIMX, but timing of events for unnecessary
     * buttons in the context of media control seems pointless.
     */
    keymap  : ['PowerOn', 'Left', 'Right', 'Up', 'Down', 'PS', 'Select', 'Start', 'Triangle', 'Circle', 'Cross', 'Square'],

    translateCommand : function () {
      var value       = '',
          // Tweak the sensitivity of the button press
          magicNumber = 75;

      switch(this.command) {
        case 'PowerOn' :
          value = 'emu ' + this.deviceMac + ' > /dev/null';
        break;

        case 'PS' :
          value = 'emuclient --event "PS(255)"';
        break;

        case 'Left'  :
        case 'Right' :
        case 'Up'    :
        case 'Down'  :
          value = 'emuclient --event "' + this.command.toLowerCase() + '(' + magicNumber + ')" && emuclient --event "' + this.command.toLowerCase() + '(0)"';
        break;

        case 'Select'   :
        case 'Start'    :
        case 'Triangle' :
        case 'Circle'   :
        case 'Cross'    :
        case 'Square'   :
          value = 'emuclient --event "' + this.command.toLowerCase() + '(255)"';
        break;
      }

      return value;
    },

    dynamicContent : function (data, devices, index, dataResponse) {
      var config = devices[index];

      data = data.replace('{{' + config.config.prefix.toUpperCase() + '_DYNAMIC}}', 'TESTING');

      if(index > 0) {
        devices[index - 1]['controller']['dynamicContent'](data, devices, index - 1, dataResponse);
      }

      else {
        dataResponse.end(data);
      }
    },

    send : function (config) {
      this.deviceMac = config.deviceMac;
      this.command   = config.command   || '';
      this.cbConnect = config.cbConnect || function () {};
      this.cbError   = config.cbError   || function () {};

      var that       = this,
          exec       = require('child_process').exec;

      exec(this.translateCommand(), function (error, stdout, stderr) {
        that.cbConnect();

        if(error) {
          that.cbError();
          console.log(error);
        }
      });
    }
  };
} ());