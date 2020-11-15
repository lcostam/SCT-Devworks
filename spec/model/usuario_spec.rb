require 'rails_helper'

RSpec.describe Usuario, type: :model do
  context 'validations' do
    it "ensures the presence of name, email and password" do
      usuario = Usuario.new(name: "", email: "", password:"").save
      expect(usuario).to eq(false)
    end

    it "ensures that name has three or more characters" do
        usuario = Usuario.new(name: "l", email:"lcostam@gmail.com.vr", password:"123" ).save
        expect(usuario).to eq(false)
    end

    it "ensures that valid user will be saved" do
        usuario = Usuario.new(name: "Leandro", email:"lcostam@gmail.com.vr", password:"123")
        expect(usuario).to be_valid
    end

    
  end
end