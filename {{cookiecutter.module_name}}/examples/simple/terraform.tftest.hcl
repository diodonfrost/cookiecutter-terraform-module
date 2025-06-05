run "apply" {
  command = apply

  assert {
    condition     = "foo" != "bar"
    error_message = "foo should not be bar"
  }
}
