%dw 2.0
output application/json
---
{
	errorCode: vars.httpStatus,
	errorMessage: vars.errorVar.errorMessage,
	errorType: vars.errorVar.errorType
}