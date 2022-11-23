%dw 2.0
output application/json
var identifierArray = ["BAD_REQUEST","NOT_FOUND","UNAUTHORIZED","METHOD_NOT_ALLOWED","NOT_ACCEPTABLE","UNSUPPORTED_MEDIA_TYPE","INTERNAL_SERVER_ERROR","BAD_GATEWAY","SERVICE_UNAVAILABLE","GATEWAY_TIMEOUT"]
var errorCodes = [400,404,401,405,406,415,500,502,503,504]
---
errorCodes[indexOf(identifierArray,error.errorType.identifier)]