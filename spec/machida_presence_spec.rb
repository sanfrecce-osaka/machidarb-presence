RSpec.describe MachidaPresence do
  it "has a version number" do
    expect(MachidaPresence::VERSION).not_to be nil
  end

  describe 'Nil#blank?' do
    context 'nilのとき' do
      it 'trueであること' do
        expect(nil.blank?).to be true
      end
    end
  end

  describe 'String#blank?' do
    context '空文字のとき' do
      it 'trueであること' do
        expect(''.blank?).to be true
      end
    end

    context '空文字でないとき' do
      it 'falseであること' do
        expect('あ'.blank?).to be false
      end
    end
  end

  describe 'Integer#blank?' do
    context '-1の場合' do
      it 'falseであること' do
        expect(-1.blank?).to be false
      end
    end

    context '0の場合' do
      it 'falseであること' do
        expect(0.blank?).to be false
      end
    end

    context '1の場合' do
      it 'falseであること' do
        expect(1.blank?).to be false
      end
    end
  end

  describe 'Array#blank?' do
    context '空配列のとき' do
      it 'trueであること' do
        expect([].blank?).to be true
      end
    end

    context '空でないとき' do
      it 'falseであること' do
        expect([1].blank?).to be false
      end
    end
  end

  describe 'Nil#present?' do
    context 'nilのとき' do
      it 'falseであること' do
        expect(nil.present?).to be false
      end
    end
  end

  describe 'String#present?' do
    context '空文字のとき' do
      it 'falseであること' do
        expect(''.present?).to be false
      end
    end

    context '空文字でないとき' do
      it 'trueであること' do
        expect('あ'.present?).to be true
      end
    end
  end

  describe 'Integer#present?' do
    context '-1の場合' do
      it 'trueであること' do
        expect(-1.present?).to be true
      end
    end

    context '0の場合' do
      it 'trueであること' do
        expect(0.present?).to be true
      end
    end

    context '1の場合' do
      it 'trueであること' do
        expect(1.present?).to be true
      end
    end
  end

  describe 'Array#present?' do
    context '空配列のとき' do
      it 'falseであること' do
        expect([].present?).to be false
      end
    end

    context '空でないとき' do
      it 'trueであること' do
        expect([1].present?).to be true
      end
    end
  end

  describe 'Nil#presence' do
    context 'nilのとき' do
      it 'nilであること' do
        expect(nil.presence).to be nil
      end
    end
  end

  describe 'String#presence' do
    context '空文字のとき' do
      it 'nilであること' do
        expect(''.presence).to be nil
      end
    end

    context '空文字でないとき' do
      it '自身を返すこと' do
        expect('あ'.presence).to eq 'あ'
      end
    end
  end

  describe 'Integer#presence' do
    context '-1の場合' do
      it '自身を返すこと' do
        expect(-1.presence).to eq -1
      end
    end

    context '0の場合' do
      it '自身を返すこと' do
        expect(0.presence).to eq 0
      end
    end

    context '1の場合' do
      it '自身を返すこと' do
        expect(1.presence).to eq 1
      end
    end
  end

  describe 'Array#presence' do
    context '空配列のとき' do
      it 'nilであること' do
        expect([].presence).to be nil
      end
    end

    context '空でないとき' do
      it '自身を返すこと' do
        expect([1].presence).to eq [1]
      end
    end
  end
end
