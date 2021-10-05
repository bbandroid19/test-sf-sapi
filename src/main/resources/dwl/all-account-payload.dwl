%dw 2.0
output application/json
---
{
accounts: payload map ( payload01 , indexOfPayload01 ) -> {
		accountId: payload01.Id,
		tradingName: payload01.Name,
		accountNumber: payload01.AccountNumber,
		industry: payload01.Industry,
		contacts: payload01.Contacts map ( payload02 , indexOfPayload02 ) -> {
			firstName: payload02.FirstName,
	        lastName: payload02.LastName,
	        title: payload02.Title,
	        email: payload02.Email,
	        phone: payload02.Phone
		},
	    
		links: [{
			rel: "self",
			href: (vars.relativePath default "") ++ "/api/accounts/" ++ (payload01.Id as String default "")
		}]
	}
}

