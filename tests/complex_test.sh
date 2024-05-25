#!/bin/bash

function set_up() {
    mock curl cat ./tests/fixtures/pull_request_api
}

function test_complex_output_without_args() {
    assert_match_snapshot "$(./src/complex)"
}

function test_complex_output_with_one_arg() {
    assert_match_snapshot "$(./src/complex --one-argument)"
}

function test_complex_output_with_more_than_one_args() {
    assert_match_snapshot "$(./src/complex --one-argument --second-argument)"
}
