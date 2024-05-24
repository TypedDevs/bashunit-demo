#!/bin/bash

function tear_down() {
  rm -rf application domain infrastructure
}

function test_create_hexagonal_layers_directories() {
  ./src/mkhd

  assert_directory_exists application
  assert_directory_exists domain
  assert_directory_exists infrastructure
}

function test_can_be_executed_consecutively() {
  ./src/mkhd
  ./src/mkhd

  assert_successful_code
}
