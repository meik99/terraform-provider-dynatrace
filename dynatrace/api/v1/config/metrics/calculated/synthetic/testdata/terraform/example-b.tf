# ID calc:synthetic.browser.easytravelbooknow.javascripterrors
resource "dynatrace_calculated_synthetic_metric" "#name#" {
  name               = "#name#"
  enabled            = true
  metric             = "JavaScriptErrors"
  metric_key         = "calc:synthetic.browser.#name#"
  monitor_identifier = "SYNTHETIC_TEST-74EEC98A3855C3DD"
}
