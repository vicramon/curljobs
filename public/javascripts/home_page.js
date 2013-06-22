var email = new LiveValidation('company_email', { onlyOnSubmit: true });
email.add( Validate.Email, { failureMessage: 'invalid email' } );
email.add( Validate.Presence, { failureMessage: 'required' } );

