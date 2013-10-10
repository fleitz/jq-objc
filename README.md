jq-objc
=======

Objective-C JQ Wrapper
Wraps http://stedolan.github.io/jq/tutorial/ in Objective-C
````
// Example
[test jq:@"[.data[] | { name } | .]" withOptions:0];
````
