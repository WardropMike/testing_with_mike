module ApiTesting

  def call_api(site_url)
    url = ("https://#{site_url}")
    uri = URI(url)
    response = HTTParty.get(uri)
  end

  def check_response(body_data)
    first_12 = body_data.body[0..13]
    expect(first_12).to eq("<!DOCTYPE html")
  end

  def check_response_body(data)
    data.each do |id|
      id.is_a?(Hash)
    end
  end

  def check_response_code(actual_code, expected_response_code)
    expect(actual_code).to eq(expected_response_code)
  end
end
