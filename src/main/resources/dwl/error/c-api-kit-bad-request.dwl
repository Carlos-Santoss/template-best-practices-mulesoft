%dw 2.0
output application/json
---
errors:[{
	message:
		if (isEmpty(error.muleMessage.typedValue.message) and isEmpty(error.description)) 
			"The server cannot or will not process the request due to something that is perceived to be a client error (e.g., malformed request syntax, invalid request message framing, or deceptive request routing)." 
		else if(isEmpty(error.muleMessage.typedValue.message))
			error.description
		else
			error.muleMessage.typedValue.message,
	code: "400"
}]