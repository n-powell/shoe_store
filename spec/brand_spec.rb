require 'spec_helper'

describe(Brand) do
  describe('#stores') do
    it { have_and_belong_to_many(:stores)}
  end
end
