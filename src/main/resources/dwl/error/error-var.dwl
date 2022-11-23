%dw 2.0
output application/json
---
{
	"errorType": error.errorType.asString,
	"errorMessage": if (error.errorMessage.payload != null)
						error.errorMessage.payload.errorMessage
					else if (error.errorMessage != null)
						error.errorMessage
					else
						error.description
	
}