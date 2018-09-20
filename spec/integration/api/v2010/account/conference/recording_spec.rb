##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
# 
# frozen_string_literal: true

require 'spec_helper.rb'

describe 'Recording' do
  it "can update" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .conferences('CFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .recordings('REXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').update(status: 'in-progress')
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {'Status' => 'in-progress', }
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://api.twilio.com/2010-04-01/Accounts/ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Conferences/CFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Recordings/REXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX.json',
        data: values,
    ))).to eq(true)
  end

  it "receives update responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "api_version": "2010-04-01",
          "call_sid": "CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "conference_sid": "CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "channels": 1,
          "date_created": "Fri, 14 Oct 2016 21:56:34 +0000",
          "date_updated": "Fri, 14 Oct 2016 21:56:34 +0000",
          "start_time": "Fri, 14 Oct 2016 21:56:34 +0000",
          "price": null,
          "price_unit": null,
          "duration": "-1",
          "sid": "REaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "source": "StartConferenceRecordingAPI",
          "status": "paused",
          "error_code": null,
          "encryption_details": null,
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Recordings/REaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .conferences('CFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .recordings('REXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').update(status: 'in-progress')

    expect(actual).to_not eq(nil)
  end

  it "can fetch" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .conferences('CFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .recordings('REXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://api.twilio.com/2010-04-01/Accounts/ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Conferences/CFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Recordings/REXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX.json',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "api_version": "2010-04-01",
          "call_sid": "CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "conference_sid": "CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "channels": "1",
          "date_created": "Fri, 14 Oct 2016 21:56:34 +0000",
          "date_updated": "Fri, 14 Oct 2016 21:56:38 +0000",
          "start_time": "Fri, 14 Oct 2016 21:56:34 +0000",
          "price": "-0.0025",
          "price_unit": "USD",
          "duration": "4",
          "sid": "REaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "source": "StartConferenceRecordingAPI",
          "status": "completed",
          "error_code": null,
          "encryption_details": {
              "encryption_public_key_sid": "CRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
              "encryption_cek": "OV4h6zrsxMIW7h0Zfqwfn6TI2GCNl54KALlg8wn8YB8KYZhXt6HlgvBWAmQTlfYVeLWydMiCewY0YkDDT1xmNe5huEo9vjuKBS5OmYK4CZkSx1NVv3XOGrZHpd2Pl/5WJHVhUK//AUO87uh5qnUP2E0KoLh1nyCLeGcEkXU0RfpPn/6nxjof/n6m6OzZOyeIRK4Oed5+rEtjqFDfqT0EVKjs6JAxv+f0DCc1xYRHl2yV8bahUPVKs+bHYdy4PVszFKa76M/Uae4jFA9Lv233JqWcxj+K2UoghuGhAFbV/JQIIswY2CBYI8JlVSifSqNEl9vvsTJ8bkVMm3MKbG2P7Q==",
              "encryption_iv": "8I2hhNIYNTrwxfHk"
          },
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Recordings/REaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .conferences('CFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .recordings('REXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()

    expect(actual).to_not eq(nil)
  end

  it "can delete" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .conferences('CFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .recordings('REXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').delete()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'delete',
        url: 'https://api.twilio.com/2010-04-01/Accounts/ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Conferences/CFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Recordings/REXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX.json',
    ))).to eq(true)
  end

  it "receives delete responses" do
    @holodeck.mock(Twilio::Response.new(
        204,
      nil,
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .conferences('CFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .recordings('REXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').delete()

    expect(actual).to eq(true)
  end

  it "can read" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .conferences('CFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .recordings.list()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://api.twilio.com/2010-04-01/Accounts/ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Conferences/CFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Recordings.json',
    ))).to eq(true)
  end

  it "receives read_full responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "end": 0,
          "first_page_uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Recordings.json?PageSize=50&Page=0",
          "next_page_uri": null,
          "page": 0,
          "page_size": 50,
          "previous_page_uri": null,
          "recordings": [
              {
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "api_version": "2010-04-01",
                  "call_sid": "CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "conference_sid": "CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "channels": "1",
                  "date_created": "Fri, 14 Oct 2016 21:56:34 +0000",
                  "date_updated": "Fri, 14 Oct 2016 21:56:38 +0000",
                  "start_time": "Fri, 14 Oct 2016 21:56:34 +0000",
                  "price": "-0.0025",
                  "price_unit": "USD",
                  "duration": "4",
                  "sid": "REaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "source": "StartConferenceRecordingAPI",
                  "status": "completed",
                  "error_code": null,
                  "encryption_details": {
                      "encryption_public_key_sid": "CRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                      "encryption_cek": "OV4h6zrsxMIW7h0Zfqwfn6TI2GCNl54KALlg8wn8YB8KYZhXt6HlgvBWAmQTlfYVeLWydMiCewY0YkDDT1xmNe5huEo9vjuKBS5OmYK4CZkSx1NVv3XOGrZHpd2Pl/5WJHVhUK//AUO87uh5qnUP2E0KoLh1nyCLeGcEkXU0RfpPn/6nxjof/n6m6OzZOyeIRK4Oed5+rEtjqFDfqT0EVKjs6JAxv+f0DCc1xYRHl2yV8bahUPVKs+bHYdy4PVszFKa76M/Uae4jFA9Lv233JqWcxj+K2UoghuGhAFbV/JQIIswY2CBYI8JlVSifSqNEl9vvsTJ8bkVMm3MKbG2P7Q==",
                      "encryption_iv": "8I2hhNIYNTrwxfHk"
                  },
                  "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Recordings.json"
              }
          ],
          "start": 0,
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Recordings.json?PageSize=50&Page=0"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .conferences('CFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .recordings.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_empty responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "end": 0,
          "first_page_uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Recordings.json?PageSize=50&Page=0",
          "next_page_uri": null,
          "page": 0,
          "page_size": 50,
          "previous_page_uri": null,
          "recordings": [],
          "start": 0,
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Recordings.json?PageSize=50&Page=0"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .conferences('CFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .recordings.list()

    expect(actual).to_not eq(nil)
  end
end