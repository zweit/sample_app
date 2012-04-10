require 'spec_helper'

describe "Static pages" do
  
    subject { page }

    describe "Home page" do
        before { visit root_path }

        it { should have_selector('h1', text: 'Sample App') }
        it { should have_selector('title', text: full_tilte(''))}
        #it { should have_selector 'title', text: "Ruby on Rails Tutorial Sample App" }
        #it { should_not have_selector 'title', text: '| Home'} 
    
    #describe "Home page" do
        #it "should have the h1 'Sample App'" do
        #it "should have the content 'Sample App'" do
            #visit '/static_pages/home'
            #visit root_path
            #page.should have_selector('h1', text: 'Sample App')
            #page.should have_selector('title', :text => 'Sample App')
                                #:text => "Ruby on Rails Tutorial Sample App | Home")
            #page.should have_content('Sample App')
        #end

        #it "should have the base title" do
            #visit '/static_pages/home'
            #visit root_path
            #page.shuld have_selector('title', 
                                #text: "Ruby on Rails Tutorial Sample App"
            #page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App")
        #end

        #it "should not have a custom page title" do
            #visit '/static_pages/home'
            #visit root_path    
            #page.should_not have_selector('title', text: '| Home')
            #page.should_not have_selector('title', :text => '| Home')
        #end


#        it "should have the title 'Home'" do
#       
#        visit '/static_pages/home'
#            page.should have_selector('title',
#                            :text => "Ruby on Rails Tutorial Sample App | Home")

#        end

    end #end describe Home page


    describe "Help page" do
        before { visit help_path }
        
        it { should have_selector('h1', text: 'Help') }
        it { should have_selector('tilte', text: full_tilte('Help'))}

        #it "should have the h1 'Help'" do
        #it "should have the content 'Help'" do
            #visit help_path
            #visit '/static_pages/help'
            #page.should have_selector('h1', :text => 'Help')
            #page.should have_content('Help')
        #end

        #it "should have the title 'Help'" do
            #visit help_path
            #page.should have_selector('title',
                                #:text => "Ruby on Rails Tutorial Sample App | Help")
        #end
    end # end describe Help page


    describe "About page" do
        before { visit about_page }
        
        it { should have_selector('h1', text: 'About Us') }
        it { should have_selector('title', text: full_tilte('About Us'))}
        #it "should have the h1 'About Us'" do
            #visit about_path
            #visit '/static_pages/about'
            #page.should have_selector('h1', :text => 'About Us')
        #end

        #it "should have the title 'About Us'" do
            #visit about_path           
            #page.should have_selector('title',
                            #:text => "Ruby on Rails Tutorial Sample App | About Us")
        #end
    end # end describe About Page

    describe "Contact page" do
        before { visit contact_path }

        it { should have_selector('h1',    text: 'Contact') }
        it { should have_selector('title', text: full_title('Contact')) }

        #it "should have the h1 'Contact'" do
            #visit contact_path
            #visit '/static_pages/contact'
            #page.should have_selector('h1', :text => 'Contact')
        #end

        #it "should have the title 'Contact'" do
            #visit contact_path
            #page.should have_selector('title',
                            # :text => "Ruby on Rails Tutorial Sample App | Contact")
        #end
    end #end describe Contact Page
end # end describe Static Pages

