#!/bin/bash
rm build/contracts/*.sol.js ; truffle migrate && truffle test
