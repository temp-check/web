# README

## Description

A simple web client for the [temp-check API](https://github.com/temp-check/api).

This client allows users to enter an address to fetch the current temperature for a given address and shows whether the response received from the API was just fetched(🔥), cached(💵), successdul(✅), or errored(❌).

All successful forecast responses are cached up to 30 minutes. During the initial 30 minute cache any subsequent address lookups that resolve to the same same `postal_code` will return the cached response. After 30 minutes the cache is lazily refreshed when the `postal_code` is requested again.
