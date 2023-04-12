require 'password_checker'

describe PasswordChecker do
  it 'Should return true if char length is 8 or above' do 
    newpass = PasswordChecker.new
    expect(newpass.check("password")).to eq true 
    expect(newpass.check("password69")).to eq true
    expect(newpass.check("PassW0rd420gang")).to eq true
  end

  it 'Should return an error message if password is less than 8 chars' do 
    newpass = PasswordChecker.new
    expect { newpass.check("1") }.to raise_error "Invalid password must be 8+ characters."
    expect { newpass.check("pass") }.to raise_error "Invalid password must be 8+ characters."
    expect { newpass.check("passyok") }.to raise_error "Invalid password must be 8+ characters."
  end
end