class Admin::CandidatesController < AdminController
  expose(:candidates) { Candidate.all }


end
