require 'rails_helper'
describe Appointment do
  before do
    @appointment = FactoryBot.build(:appointment)
  end

  describe 'アポイントの登録' do
    context 'アポイントの登録がうまくいくとき' do
      it 'company,appt-date,check_idが存在すれば登録できる' do
        expect(@appointment).to be_valid
      end
    end

    context 'アポイントの登録がうまくいかないとき' do
      it 'companyが空だと登録できない' do
        @appointment.company = ''
        @appointment.valid?
        expect(@appointment.errors.full_messages).to include("社名を入力してください")
      end
      it 'appt_dateが空だと登録できない' do
        @appointment.appt_date = ''
        @appointment.valid?
        expect(@appointment.errors.full_messages).to include("約束日を入力してください")
      end
      it 'check_idが空だと登録できない' do
        @appointment.check_id = ''
        @appointment.valid?
        expect(@appointment.errors.full_messages).to include("Checkを入力してください")
      end
    end
  end
end
