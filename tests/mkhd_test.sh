#!/bin/bash

function test_create_hexagonal_layers_directories() {
  ./src/mkhd

  assert_directory_exists application
  assert_directory_exists domain
  assert_directory_exists infrastructure
}
