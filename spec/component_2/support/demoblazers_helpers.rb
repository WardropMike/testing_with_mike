module DemoblazersHelpers

  def check_company_banner_link
    link = find('a#nava')['href']
    demoblaze_page = "demoblaze.com/index.html"
    link.include?(demoblaze_page)
  end

  def check_company_banner_logo(demoblaze_banner_logo)
    logo_src = find('a#nava img')['src']
    logo_src.include?(demoblaze_banner_logo)
  end

  def check_navigation_bar
    assert_selector('nav#narvbarx')

  end

  def check_banner_menu_items
    assert_selector('li a', text: 'Home')
    assert_selector('li a', text: 'Contact')
    assert_selector('li a', text: "About us")
    assert_selector('li a', text: "Cart")
    assert_selector('li a', text: "Log in")
    assert_selector('li a', text: "Sign up")
  end

  def check_coursel
    assert_selector('img.d-block')

  end

  def check_categories
    assert_selector('div a#cat', text: 'CATEGORIES')
  end

  def check_categories_options
    expect_invlude = ["CATEGORIES", "Phones", "Laptops", "Monitors"]
    actual = page.all('div#contcont .list-group a').map(&:text)
    actual.include?(expect_invlude)
    list_count = page.all('div#contcont .list-group a').count
    expect(list_count).to eq 4
    assert_selector('div#contcont .list-group a', text: 'Phones')
    assert_selector('div#contcont .list-group a', text: 'Laptops')
    assert_selector('div#contcont .list-group a', text: 'Monitors')
  end

  def check_cateories_grid
    num_of = page.all('div#tbodyid div.col-lg-4').count
    expect(num_of).to be 9
  end

  def check_footer
    assert_selector('div#footc')
  end

  def click_signup
    find('li a#signin2', text: 'Sign up').click
  end

  def trigger_prompt
    evaluate_script "alert('This user already exist.');"
  end

  def sign_up_new(user, creds, expected_prompt_text)
    user_field = 'div input#sign-username'
    pw_field = 'div input#sign-password'
    find(user_field).send_keys(user)
    find(pw_field).send_keys(creds)
    assert_selector('button', text: 'Close')
    assert_selector('button', text: 'Sign')
    trigger_prompt
    actual_prompt_text = page.driver.browser.switch_to.alert.text
    until actual_prompt_text == expected_prompt_text
      page.all('div', wait: 10).count
      counter = page.all('div', wait: 10).count
      actual_prompt_text = page.driver.browser.switch_to.alert.text
    end
    # wait_for_sector(page.driver.browser.switch_to.alert.text)
    actual_prompt_text = page.driver.browser.switch_to.alert.text
    if actual_prompt_text == true
      page.driver.browser.switch_to.alert.accept
      find('button', text: 'Close').click
    end
  end

  def sign_in(user, creds)
    user_field = 'div input#sign-username'
    pw_field = 'div input#sign-password'
    page.driver.browser.switch_to.alert.accept
    binding.pry
    # Check if dirty un and pw then continue 
    find(user_field).send_keys(user)
    find(pw_field).send_keys(creds)
    find('button', text: 'Log in').click
  end

  def verify_cart_page_loads
    binding.pry
    assert_selector('div.table-responsive')
  end


end
