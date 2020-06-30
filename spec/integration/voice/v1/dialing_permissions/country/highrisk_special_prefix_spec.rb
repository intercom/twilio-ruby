##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

require 'spec_helper.rb'

describe 'HighriskSpecialPrefix' do
  it "can read" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.voice.v1.dialing_permissions \
                      .countries('US') \
                      .highrisk_special_prefixes.list()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://voice.twilio.com/v1/DialingPermissions/Countries/US/HighRiskSpecialPrefixes',
    ))).to eq(true)
  end

  it "receives read_lv responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "content": [
              {
                  "prefix": "+37181"
              },
              {
                  "prefix": "+3719000"
              }
          ],
          "meta": {
              "first_page_url": "https://voice.twilio.com/v1/DialingPermissions/Countries/LV/HighRiskSpecialPrefixes?PageSize=50&Page=0",
              "key": "content",
              "next_page_url": null,
              "page": 0,
              "page_size": 50,
              "previous_page_url": null,
              "url": "https://voice.twilio.com/v1/DialingPermissions/Countries/LV/HighRiskSpecialPrefixes?PageSize=50&Page=0"
          }
      }
      ]
    ))

    actual = @client.voice.v1.dialing_permissions \
                             .countries('US') \
                             .highrisk_special_prefixes.list()

    expect(actual).to_not eq(nil)
  end
end