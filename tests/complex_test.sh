#!/bin/bash

function test_complex_output_without_args() {
    mock curl cat ./tests/fixtures/pull_request_api

    assert_match_snapshot "$(./src/complex)"
}
