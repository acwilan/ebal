require 'test_helper'

class MessageTest < ActiveSupport::TestCase

  def setup
    @message = Message.new(from_id: users(:andres).id,
                           to_id: users(:nelly).id,
                           subject: "Subject",
                           body: "Body")
  end
  
  test "message should be valid" do
    assert @message.valid?
  end
  
  test "from must be set" do
    @message.from_id = nil
    assert_not @message.valid?
  end
  
  test "to must be set" do
    @message.to_id = nil
    assert_not @message.valid?
  end
  
  test "subject must be set" do
    @message.subject = "    "
    assert_not @message.valid?
  end
  
  test "body must be set" do
    @message.body = "     "
    assert_not @message.valid?
  end
  
  test "shouldn't send an e-mail to himself/herself" do
    @message.to_id = @message.from_id
    assert_not @message.valid?
  end

end
