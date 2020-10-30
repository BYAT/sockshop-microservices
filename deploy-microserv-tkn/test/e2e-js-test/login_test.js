(function (){
  'use strict';
//var shell = require('shelljs');
//var ls = shell.echo("Hello")

//consol.log(ls)
//var casper = require("casper").create();
var ip = "http://front-end/"
casper.echo("http://$(curl -sL http://checkip.amazonaws.com)/");
  require("./config");
  casper.test.begin("User logs in", 3, function suite(test) {
    casper.start(ip, function() {
      test.assertNotVisible("#login-modal", "user does not see the login dialogue");

      this.clickLabel("Login");
      casper.waitUntilVisible("#login-modal", function() {
        test.assertVisible("#login-modal", "user is presented with the login dialogue");
        this.fill("#login-modal form", {
          "username": "Eve_Berger",
          "password": "eve"
        }, false);
      }, function() {
        test.fail("login dialogue never showed up");
      }, 3000);
    });

    casper.then(function() {
      this.click("#login-modal form button.btn.btn-primary");
      this.waitForText("Logged in as Eve Berger", function() {
        test.pass("user is logged in");
      }, function() {
        test.fail("user login failed");
      }, 3000);
    });

    casper.run(function() {
      test.done();
    });
  });
}());
