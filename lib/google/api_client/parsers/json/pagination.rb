# Copyright 2010 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


require 'google/api_client/parsers/json_parser'


module Google
  class APIClient
    module JSON
      ##
      # A module which provides a paginated parser.
      module Pagination
        def self.included(parser)
          parser.class_eval do
            include Google::APIClient::JSONParser
          end
        end

        def next_page_token
          return self["nextPageToken"]
        end

        def prev_page_token
          return self["prevPageToken"]
        end
      end
    end
  end
end
