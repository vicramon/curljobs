class CandidatesController < ApplicationController
  expose(:candidates) { Candidate.all }
  expose(:candidate, attributes: :candidate_params)

  def create
    if candidate.save
      redirect_to success_candidates_path
    else
      redirect_to new_candidate_path, flash: { error: "Sorry, but something went wrong." }
    end
  end

  private

  def candidate_params
    params.require(:candidate).permit!
  end

end
