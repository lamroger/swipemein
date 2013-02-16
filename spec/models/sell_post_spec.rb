require 'spec_helper'

describe SellPost do
  let(:user) { FactoryGirl.create(:user) }
  before do
    # This code is wrong!
    @sellpost = SellPost.new(content: "Lorem ipsum", user_id: user.id)
  end

  subject { @sellpost }

  it { should respond_to(:content) }
  it { should respond_to(:user_id) }
end
