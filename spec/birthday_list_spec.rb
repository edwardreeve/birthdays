require 'birthday_list'

describe BirthdayList do

  let(:bdl) { BirthdayList.new }

  it 'should be an instance of the BL class' do
    expect(bdl).to be_an_instance_of(BirthdayList)
  end

  it { should respond_to(:add).with(2).arguments }

  it 'should store the arguments given by add' do
    mine = BirthdayList.new
    mine.add('Ed', '1979-01-19')
    mine.add('Judith', '1980-04-07')
    expect(mine.list).to eq([{ name: 'Ed', birthday: '1979-01-19'}, 
                        { name: 'Judith', birthday: '1980-04-07'}])
  end

  it { should respond_to :view }

  it 'should return a nicely formatted list in response to view' do
    mine = BirthdayList.new
    mine.add('Ed', '1979-01-19')
    mine.add('Judith', '1980-04-07')
    # mine = [{ name: 'Ed', birthday: '1979-01-19'}, { name: 'Judith', birthday: '1980-04-07'}]
    expect{mine.view}.to output("Ed, 1979-01-19\nJudith, 1980-04-07\n").to_stdout
  end
end