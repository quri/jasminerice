#=require jasmine
#=require jasmine-html
#=require boot
#=require jquery
#=require jasmine-jquery-2.0.2
(->
  jasmine = window.jasmine

  execJasmine = ->
    jasmineEnv.execute()
  jasmineEnv = jasmine.getEnv()
  jasmineEnv.updateInterval = 1000

# boot adds  window.jsApiReporter = new jasmine.JsApiReporter({})
#  htmlReporter = new jasmine.HtmlReporter({})

# boot adds  jasmineEnv.addReporter htmlReporter
#  jasmineEnv.addReporter jsApiReporter

#  jasmineEnv.specFilter = (spec) ->
#    htmlReporter.specFilter spec

  jasmine.getFixtures().fixturesPath = 'jasmine/fixtures'
  jasmine.getStyleFixtures().fixturesPath = 'jasmine/fixtures'
  jasmine.getJSONFixtures().fixturesPath = 'jasmine/fixtures/json'


  if (navigator.userAgent.indexOf("PhantomJS") > 0) {
    console.log('running in Phantom')
    var consoleReporter = new jasmineRequire.ConsoleReporter()({
      showColors: true,
      timer: new jasmine.Timer,
      print: function() {
        console.log.apply(console, arguments)
      }
    });

    jasmineEnv.addReporter(consoleReporter);
  }

  #
  # jasmine.rice = {}
  # jasmine.rice.autoExecute = true
  #
  # currentWindowOnload = window.onload
  # window.onload = ->
  #   currentWindowOnload()  if currentWindowOnload
  #   if jasmine.rice.autoExecute
  #     execJasmine()
)()
