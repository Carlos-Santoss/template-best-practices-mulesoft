%dw 2.0
output application/json
---
errors:[{
	message: vars.errorMessage,
	code: vars.errorCode
}]