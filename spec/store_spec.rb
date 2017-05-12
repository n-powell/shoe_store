require 'spec_helper'

describe(Store) do
  describe('#brands') do
    it { have_and_belong_to_many(:brands)}

  end
end
