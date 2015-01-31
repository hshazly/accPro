# TL;DR: YOU SHOULD DELETE THIS FILE
#
# This file is used by web_steps.rb, which you should also delete
#
# You have been warned
module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    case page_name

    when /^the home\s?page$/
      '/accounts/dashboard'
	when /^the balances page$/
		'/accounts/show_balance'
	when /^"new_account"$/
		'/accounts/new'
	when /^the create account page$/
		'/accounts/new'
	when /^show account page$/
		'/accounts/show/1'
	when /^"Make Transaction"$/
		'/transactions/new'
	when /^"Show Transactions history"$/
		'/transactions'
	when /^new transactions page$/
		'/transactions/new'
	when /^show transactions page$/
		'/transactions'
	when /^edit profile page$/
		'/users/edit'
	when /^the main page$/
		'/accounts'
	when /^the sign in page$/
		'/users/sign_in'
	when /^the sign up page$/
		'users/sign_up'
	when /^all accounts page$/
		'/crud_accounts'						
    # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))

    else
      begin
        page_name =~ /^the (.*) page$/
        path_components = $1.split(/\s+/)
        self.send(path_components.push('path').join('_').to_sym)
      rescue NoMethodError, ArgumentError
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
          "Now, go and add a mapping in #{__FILE__}"
      end
    end
  end
end

World(NavigationHelpers)
