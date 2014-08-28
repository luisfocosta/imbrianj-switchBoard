/*jslint white: true */
/*global State, module, console */

/**
 * Copyright (c) 2014 brian@bevey.org
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to
 * deal in the Software without restriction, including without limitation the
 * rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
 * sell copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
 * IN THE SOFTWARE.
 */

/**
 * @author brian@bevey.org
 * @fileoverview Collection of small sugar functions shared between client and
 *               server.
 */

(function(exports){
  'use strict';

  exports.util = {
    version : 20140823,

    /**
     * Accept a readable name "Test Device" and convert it to a usable token:
     * "test_device".
     */
    encodeName : function(name) {
      name = name.split(' ').join('_');
      name = name.split('>').join('_');
      name = name.split('<').join('_');
      name = name.split('"').join('_');
      name = name.split('\'').join('_');
      name = name.split('!').join('_');
      name = name.split('@').join('_');
      name = name.split('#').join('_');
      name = name.split('$').join('_');
      name = name.split('%').join('_');
      name = name.split('^').join('_');
      name = name.split('&').join('_');
      name = name.split('*').join('_');
      name = name.split('(').join('_');
      name = name.split(')').join('_');
      name = name.split(',').join('_');
      name = name.split(';').join('_');
      name = name.split('.').join('_');
      name = name.toLowerCase();

      return name;
    }
  };
})(typeof exports === 'undefined' ? this.Switchboard : exports);