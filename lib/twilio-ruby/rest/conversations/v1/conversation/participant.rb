##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /       

module Twilio
  module REST
    class Conversations < Domain
      class V1 < Version
        class ConversationContext < InstanceContext
          class ParticipantList < ListResource
            ##
            # Initialize the ParticipantList
            # @param [Version] version Version that contains the resource
            # @param [String] conversation_sid The conversation_sid
            
            # @return [ParticipantList] ParticipantList
            def initialize(version, conversation_sid: nil)
              super(version)
              
              # Path Solution
              @solution = {
                  conversation_sid: conversation_sid
              }
              @uri = "/Conversations/#{@solution[:conversation_sid]}/Participants"
            end
            
            ##
            # Lists ParticipantInstance records from the API as a list.
            # Unlike stream(), this operation is eager and will load `limit` records into
            # memory before returning.
            # @param [Integer] limit Upper limit for the number of records to return. stream()
            #                   guarantees to never return more than limit.  Default is no limit
            # @param [Integer] page_size Number of records to fetch per request, when not set will                      use
            #  the default value of 50 records.  If no page_size is                      defined
            #  but a limit is defined, stream() will attempt to read                      the
            #  limit with the most efficient page size,                      i.e. min(limit, 1000)
            
            # @return [Array] Array of up to limit results
            def list(limit: nil, page_size: nil)
              self.stream(
                  limit: limit,
                  page_size: page_size
              ).entries
            end
            
            ##
            # Streams ParticipantInstance records from the API as an Enumerable.
            # This operation lazily loads records as efficiently as possible until the limit
            # is reached.
            # @param [Integer] limit Upper limit for the number of records to return.                  stream()
            #  guarantees to never return more than limit.                  Default is no limit
            # @param [Integer] page_size Number of records to fetch per request, when                      not set will use
            #  the default value of 50 records.                      If no page_size is defined
            #                       but a limit is defined, stream() will attempt to                      read the
            #  limit with the most efficient page size,                       i.e. min(limit, 1000)
            
            # @return [Enumerable] Enumerable that will yield up to limit results
            def stream(limit: nil, page_size: nil)
              limits = @version.read_limits(limit, page_size)
              
              page = self.page(
                  page_size: limits['page_size'],
              )
              
              @version.stream(page, limit: limits['limit'], page_limit: limits['page_limit'])
            end
            
            ##
            # When passed a block, yields ParticipantInstance records from the API.
            # This operation lazily loads records as efficiently as possible until the limit
            # is reached.
            # @param [Integer] limit Upper limit for the number of records to return.                  stream()
            #  guarantees to never return more than limit.                  Default is no limit
            # @param [Integer] page_size Number of records to fetch per request, when                       not set will use
            #  the default value of 50 records.                      If no page_size is defined
            #                       but a limit is defined, stream() will attempt to read the
            #                       limit with the most efficient page size, i.e. min(limit, 1000)
            def each
              limits = @version.read_limits
              
              page = self.page(
                  page_size: limits['page_size'],
              )
              
              @version.stream(page,
                              limit: limits['limit'],
                              page_limit: limits['page_limit']).each {|x| yield x}
            end
            
            ##
            # Retrieve a single page of ParticipantInstance records from the API.
            # Request is executed immediately.
            # @param [String] page_token PageToken provided by the API
            # @param [Integer] page_number Page Number, this value is simply for client state
            # @param [Integer] page_size Number of records to return, defaults to 50
            
            # @return [Page] Page of ParticipantInstance
            def page(page_token: nil, page_number: nil, page_size: nil)
              params = {
                  'PageToken' => page_token,
                  'Page' => page_number,
                  'PageSize' => page_size,
              }
              response = @version.page(
                  'GET',
                  @uri,
                  params
              )
              return ParticipantPage.new(@version, response, @solution)
            end
            
            ##
            # Retrieve a single page of ParticipantInstance records from the API.
            # Request is executed immediately.
            # @param [String] to The to
            # @param [String] from The from
            
            # @return [ParticipantInstance] Newly created ParticipantInstance
            def create(to: nil, from: nil)
              data = {
                  'To' => to,
                  'From' => from,
              }
              
              payload = @version.create(
                  'POST',
                  @uri,
                  data: data
              )
              
              return ParticipantInstance.new(
                  @version,
                  payload,
                  conversation_sid: @solution['conversation_sid'],
              )
            end
            
            ##
            # Constructs a ParticipantContext
            # @param [String] sid The sid
            
            # @return [ParticipantContext] ParticipantContext
            def get(sid)
              ParticipantContext.new(
                  @version,
                  conversation_sid: @solution[:conversation_sid],
                  sid: sid,
              )
            end
            
            ##
            # Provide a user friendly representation
            def to_s
              '#<Twilio.Conversations.V1.ParticipantList>'
            end
          end
        
          class ParticipantPage < Page
            ##
            # Initialize the ParticipantPage
            # @param [Version] version Version that contains the resource
            # @param [Response] response Response from the API
            # @param [Hash] solution Path solution for the resource
            # @param [String] conversation_sid The conversation_sid
            
            # @return [ParticipantPage] ParticipantPage
            def initialize(version, response, solution)
              super(version, response)
              
              # Path Solution
              @solution = solution
            end
            
            ##
            # Build an instance of ParticipantInstance
            # @param [Hash] payload Payload response from the API
            
            # @return [ParticipantInstance] ParticipantInstance
            def get_instance(payload)
              return ParticipantInstance.new(
                  @version,
                  payload,
                  conversation_sid: @solution['conversation_sid'],
              )
            end
            
            ##
            # Provide a user friendly representation
            def to_s
              '<Twilio.Conversations.V1.ParticipantPage>'
            end
          end
        
          class ParticipantContext < InstanceContext
            ##
            # Initialize the ParticipantContext
            # @param [Version] version Version that contains the resource
            # @param [String] conversation_sid The conversation_sid
            # @param [String] sid The sid
            
            # @return [ParticipantContext] ParticipantContext
            def initialize(version, conversation_sid, sid)
              super(version)
              
              # Path Solution
              @solution = {
                  conversation_sid: conversation_sid,
                  sid: sid,
              }
              @uri = "/Conversations/#{@solution[:conversation_sid]}/Participants/#{@solution[:sid]}"
            end
            
            ##
            # Fetch a ParticipantInstance
            # @return [ParticipantInstance] Fetched ParticipantInstance
            def fetch
              params = {}
              
              payload = @version.fetch(
                  'GET',
                  @uri,
                  params,
              )
              
              return ParticipantInstance.new(
                  @version,
                  payload,
                  conversation_sid: @solution['conversation_sid'],
                  sid: @solution['sid'],
              )
            end
            
            ##
            # Provide a user friendly representation
            def to_s
              context = @solution.map {|k, v| "#{k}: #{v}"}.join(',')
              "#<Twilio.Conversations.V1.ParticipantContext #{context}>"
            end
          end
        
          class ParticipantInstance < InstanceResource
            ##
            # Initialize the ParticipantInstance
            # @param [Version] version Version that contains the resource
            # @param [Hash] payload payload that contains response from Twilio
            # @param [String] conversation_sid The conversation_sid
            # @param [String] sid The sid
            
            # @return [ParticipantInstance] ParticipantInstance
            def initialize(version, payload, conversation_sid: nil, sid: nil)
              super(version)
              
              # Marshaled Properties
              @properties = {
                  'sid' => payload['sid'],
                  'address' => payload['address'],
                  'status' => payload['status'],
                  'conversation_sid' => payload['conversation_sid'],
                  'date_created' => Twilio.deserialize_iso8601(payload['date_created']),
                  'start_time' => Twilio.deserialize_iso8601(payload['start_time']),
                  'end_time' => Twilio.deserialize_iso8601(payload['end_time']),
                  'duration' => payload['duration'].to_i,
                  'account_sid' => payload['account_sid'],
                  'url' => payload['url'],
              }
              
              # Context
              @instance_context = nil
              @params = {
                  'conversation_sid' => conversation_sid,
                  'sid' => sid || @properties['sid'],
              }
            end
            
            ##
            # Generate an instance context for the instance, the context is capable of
            # performing various actions.  All instance actions are proxied to the context
            # @param [Version] version Version that contains the resource
            
            # @return [ParticipantContext] ParticipantContext for this ParticipantInstance
            def context
              unless @instance_context
                @instance_context = ParticipantContext.new(
                    @version,
                    @params['conversation_sid'],
                    @params['sid'],
                )
              end
              @instance_context
            end
            
            def sid
              @properties['sid']
            end
            
            def address
              @properties['address']
            end
            
            def status
              @properties['status']
            end
            
            def conversation_sid
              @properties['conversation_sid']
            end
            
            def date_created
              @properties['date_created']
            end
            
            def start_time
              @properties['start_time']
            end
            
            def end_time
              @properties['end_time']
            end
            
            def duration
              @properties['duration']
            end
            
            def account_sid
              @properties['account_sid']
            end
            
            def url
              @properties['url']
            end
            
            ##
            # Fetch a ParticipantInstance
            # @return [ParticipantInstance] Fetched ParticipantInstance
            def fetch
              @context.fetch()
            end
            
            ##
            # Provide a user friendly representation
            def to_s
              context = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
              "<Twilio.Conversations.V1.ParticipantInstance #{context}>"
            end
          end
        end
      end
    end
  end
end