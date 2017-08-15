require 'rails_helper'

describe Service do

  describe "responses" do
    it "given a drug, returns other spellings" do
      VCR.use_cassette('service/spelling_suggestions') do
        body = Service.new.spelling_suggestions("Topamax")
        suggestions = body[:get_spelling_suggestions_response][:get_spelling_suggestions_return][:get_spelling_suggestions_return]
        expect(suggestions.class).to eq(Array)
        expect(suggestions.count).to eq(10)
        expect(suggestions.first).to eq("Topamax")
        expect(suggestions.last).to eq("Tokisan")
      end
    end
  end

end