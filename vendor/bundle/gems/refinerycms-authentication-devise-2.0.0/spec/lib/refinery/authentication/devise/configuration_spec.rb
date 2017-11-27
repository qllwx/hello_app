require 'spec_helper'

module Refinery
  module Authentication
    module Devise
      describe 'configuration' do

        describe '.email_from_name' do
          # reset any previously defined email from name
          before do
            Refinery::Authentication::Devise.email_from_name = nil
          end

          context 'when set in configuration' do
            it 'returns name set by Refinery::Authentication::Devise.config' do
              allow(Refinery::Authentication::Devise).to receive(:email_from_name).and_return('support')
              expect(Refinery::Authentication::Devise.email_from_name).to eq('support')
            end
          end

          context 'when set in locale file' do
            before do
              ::I18n.backend.store_translations :en, :refinery => {
                :authentication => {
                  :config => {
                    :email_from_name => 'supporto'
                  }
                }
              }
            end

            it 'returns name set in locale' do
              expect(Refinery::Authentication::Devise.email_from_name).to eq('supporto')
            end
          end
        end

      end
    end
  end
end
