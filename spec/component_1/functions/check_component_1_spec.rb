describe 'As a framework I run tests for APIs', :demo_blaze_api => true do
  let(:site_url) { "www.demoblaze.com/" }
  let(:expected_response_code) { 200 }
  # Placeholder for JSON obj for resuest
  # Placeholder for JSON obj for assertion

  feature 'Call API to check', :api => true do
    # setup(placeholder)
    context 'Verify demoblaze API parts', :context => true do
      scenario 'Call demoblaze for response code', :response_code => true do
        response = call_api(site_url)
        check_response_code(response.code, expected_response_code)
      end
      scenario 'Call demoblaze API for response body', :response => true do
        body = call_api(site_url)
        check_response(body)
      end
      scenario 'Call demoblaze API for response data', :url => true do
        data = call_api(site_url)
        check_response_body(data)
      end
    end
  end
end
