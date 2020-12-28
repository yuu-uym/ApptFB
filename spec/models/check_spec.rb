require 'rails_helper'
describe Check do
  before do
    @check = FactoryBot.build(:check)
  end

  describe 'チェックリストの登録' do
    context 'チェックリストの登録がうまくいくとき' do
      it 'title,item1が存在すれば登録できる' do
        expect(@check).to be_valid
      end
    end

    context 'チェックリストの登録がうまくいかないとき' do
      it 'titleが空だと登録できない' do
        @check.title = ''
        @check.valid?
        expect(@check.errors.full_messages).to include("タイトルを入力してください")
      end
      it 'item1が空だと登録できない' do
        @check.item1 = ''
        @check.valid?
        expect(@check.errors.full_messages).to include("項目１を入力してください")
      end
    end
  end
end
