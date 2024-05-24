#!/bin/bash

function test_mkhd_creates_hexagonal_directories() {
  ./src/mkhd

  assert_directory_exists application
  assert_directory_exists domain
  assert_directory_exists infrastructure
}
