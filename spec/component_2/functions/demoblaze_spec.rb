describe 'As a demoblaze app, I display content', :demoblaze => true do

  let(:demoblaze_page) { "https://www.demoblaze.com/index.html" }
  let(:demoblaze_banner_logo) { "demoblaze.com/bm.png" }
  let(:demo_user) { "BlazingRubyTester" }
  let(:demo_pw) { "pk@$$M)rD" }
  let(:expected_prompt_text) { "This user already exist." }

  feature 'Browsers visit demoblaze homepage elements and data display' do

    context 'visit demoblaze page checks all main elements load', :smoke => true do

      scenario "Home Page item(s)", :home_page => true do
        visit(demoblaze_page)
        check_company_banner_link
        check_company_banner_logo(demoblaze_banner_logo)
        check_navigation_bar
        check_banner_menu_items
        check_coursel
        check_categories
        check_categories_options
        check_cateories_grid
        check_footer
      end

      scenario "HomePage menu item(s)", :nav_many => true do
        visit(demoblaze_page)
        click_signup
        sign_up_new(demo_user, demo_pw, expected_prompt_text)
        sign_in(demo_user, demo_pw)
        verify_cart_page_loads
      end

      after 'teardown' do
        # close_browser, teardown data...
      end
    end
  end
end
