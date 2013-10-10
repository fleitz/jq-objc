jq-objc
=======

Objective-C JQ Wrapper
Wraps http://stedolan.github.io/jq/tutorial/ in Objective-C
```ObjC
// Input
 NSString* json =  @"[{\
    \"glossary\": { \
        \"title\": \"example glossary\", \
		\"GlossDiv\": { \
            \"title\": \"S\", \
			\"GlossList\": { \
                \"GlossEntry\": { \
                    \"ID\": \"SGML\",\
					\"SortAs\": \"SGML\",\
					\"GlossTerm\": \"Standard Generalized Markup Language\",\
					\"Acronym\": \"SGML\",\
					\"Abbrev\": \"ISO 8879:1986\",\
					\"GlossDef\": { \
                        \"para\": \"A meta-markup language, used to create markup languages such as DocBook.\",\
						\"GlossSeeAlso\": [\"GML\", \"XML\"]\
                    },\
					\"GlossSee\": \"markup\"\
                }\
            }\
        }\
    }\
},\
    {\
        \"glossary\": { \
        \"title\": \"Glossary 2\", \
		\"GlossDiv\": { \
        \"title\": \"S\", \
        \"GlossList\": { \
        \"GlossEntry\": { \
        \"ID\": \"SGML\",\
        \"SortAs\": \"SGML\",\
        \"GlossTerm\": \"Standard Generalized Markup Language\",\
        \"Acronym\": \"SGML\",\
        \"Abbrev\": \"ISO 8879:1986\",\
        \"GlossDef\": { \
        \"para\": \"A meta-markup language, used to create markup languages such as DocBook.\",\
        \"GlossSeeAlso\": [\"GML\", \"XML\"]\
        },\
        \"GlossSee\": \"markup\"\
        }\
        }\
        }\
        }\
        }\
    ]";
    
// Lets get all the glossary titles in an array
    NSString* output = [json jq:@"[.[] | .glossary.title]"]; 


// Output
    NSLog(@"%@",output);
[
  "example glossary",
  "Glossary 2"
]

```
