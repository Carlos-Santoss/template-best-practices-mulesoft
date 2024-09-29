%dw 2.0
output application/json
---
if(!isEmpty(error.errorMessage.payload default []))
	error.errorMessage.payload
else
	errors:[{
		message: "The server cannot or will not process the request due to something that is perceived to be a client error (e.g., malformed request syntax, invalid request message framing, or deceptive request routing).",
		code: "400"
	}]