$( function() {

  var email = new LiveValidation('candidate_email', { onlyOnSubmit: true });
  email.add( Validate.Email, { failureMessage: 'invalid email' } );
  email.add( Validate.Presence, { failureMessage: 'required' } );

  var cand_name = new LiveValidation('candidate_name')
  cand_name.add( Validate.Presence, { failureMessage: 'required' });

  var languages = new LiveValidation('candidate_languages')
  languages.add( Validate.Presence, { failureMessage: 'required' });

  var past_jobs = new LiveValidation('candidate_past_jobs')
  past_jobs.add( Validate.Presence, { failureMessage: 'required' });

  var work_samples = new LiveValidation('candidate_work_samples')
  work_samples.add( Validate.Presence, { failureMessage: 'required' });

  var cand_location = new LiveValidation('candidate_location')
  cand_location.add( Validate.Presence, { failureMessage: 'required' });

});
