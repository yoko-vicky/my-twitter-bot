# spec/twitterbot_spec.rb
# rubocop:disable Layout/LineLength
require_relative '../lib/my_tweets'

describe MyTweets do
  let(:my_tweets) { MyTweets.new }
  let(:t) { Time.now }
  let(:quotes) { ['To succeed in life, you need two things; ignorance and confidence. - Mark Twain', 'Nothing in life is to be feared. It is only to be understood. - Marie Curie', 'You will live a dull and boring life if you do not take risks. - Harvey Specter', 'Once you stop learning, you start dying. - Albert Einstein', 'If your dreams do not scare you, they are not big enough. - Ellen Johnson Sirleaf', 'In order to realize our true self we must be willing to live without being dependant upon the opinion of others. - Bruce Lee', 'If today were the last day of your life, would you want to do what you are about to do today. - Steve Jobs', 'It is not the strongest of the species that survives, nor the most intelligent that survives. It is the one that is most adaptable to change. - Charles Darwin', 'I’m a success today because I had a friend who believed in me and I didn’t have the heart to let him down. - Abraham Lincoln', 'If you don’t like where you are, change it. You’re not a tree. - Jim Rohn', 'I never lose. I either win or learn. - Nelson Mandela', 'A pessimist sees the difficulty in every opportunity; an optimist sees the opportunity in every difficulty. - Winston Churchill', 'If you’re not doing some things that are crazy, then you’re doing the wrong things. - Larry Page', 'No man will make a great leader who wants to do it all himself or get all the credit for doing it. - Andrew Carnegie', 'Being honest may not get you many friends but it’ll always get you the right ones. - John Lennon', 'Honesty is a very expensive gift. Don’t expect it from cheap people. - Warren Buffett', 'We cannot learn without pain. - Aristotle', 'No man can become rich without himself enriching others. - Andew Carnegie', 'It takes a lifetime to build reputation, and it can be ruined in five minutes. If you really think about that, you might behave differently. - Warren Buffett', 'Don’t let the noise of others’ opinions drown out your own inner voice. And most important, have the courage to follow your heart and intuition. They somehow already know what you truly want to become. Everything else is secondary. - Steve Jobs', 'Success isn’t about how much money you make, it’s about the difference you make in people’s lives - Anonymous', 'Faith is taking the first step even when you don’t see the whole staircase. - Martin Luther King. Jr.', 'An investment in knowledge pays the best interest. - Benjamin Franklin', 'Believe nothing, no matter where you read it or who has said it, not even if I have said it, unless it agrees with your own reason and your own common sense. - Buddha'] }
  let(:emojis) { ["\u{1F6A1}", "\u{1F600}", "\u{1F603}", "\u{1F604}", "\u{1F601}", "\u{1F606}", "\u{1F605}", "\u{1F923}", "\u{1F602}", "\u{1F642}", "\u{1F643}", "\u{1F609}", "\u{1F60A}", "\u{1F607}", "\u{1F970}", "\u{1F60D}", "\u{1F929}", "\u{1F618}", "\u{1F617}", "\u{263A}", "\u{1F61A}", "\u{1F619}", "\u{1F972}", "\u{1F60B}", "\u{1F61B}", "\u{1F61C}", "\u{1F92A}", "\u{1F61D}", "\u{1F911}", "\u{1F917}", "\u{1F92D}", "\u{1F92B}", "\u{1F914}", "\u{1F910}", "\u{1F928}", "\u{1F610}", "\u{1F611}", "\u{1F636}", "\u{1F60F}", "\u{1F612}", "\u{1F644}", "\u{1F62C}", "\u{1F925}", "\u{1F60C}", "\u{1F614}", "\u{1F62A}", "\u{1F924}", "\u{1F634}", "\u{1F637}", "\u{1F912}", "\u{1F915}", "\u{1F922}", "\u{1F92E}", "\u{1F927}", "\u{1F975}", "\u{1F976}", "\u{1F974}", "\u{1F635}", "\u{1F92F}", "\u{1F920}", "\u{1F973}", "\u{1F978}", "\u{1F60E}", "\u{1F913}", "\u{1F9D0}", "\u{1F615}", "\u{1F61F}", "\u{1F641}", "\u{2639}", "\u{1F62E}", "\u{1F62F}", "\u{1F632}", "\u{1F633}", "\u{1F97A}", "\u{1F626}", "\u{1F627}", "\u{1F628}", "\u{1F630}", "\u{1F625}", "\u{1F622}", "\u{1F62D}", "\u{1F631}", "\u{1F616}", "\u{1F623}", "\u{1F61E}", "\u{1F613}", "\u{1F629}", "\u{1F62B}", "\u{1F971}", "\u{1F624}", "\u{1F621}", "\u{1F620}", "\u{1F92C}", "\u{1F608}", "\u{1F47F}", "\u{1F480}", "\u{2620}", "\u{1F4A9}", "\u{1F921}", "\u{1F479}", "\u{1F47A}", "\u{1F47B}", "\u{1F47D}", "\u{1F47E}", "\u{1F916}", "\u{1F63A}", "\u{1F638}", "\u{1F639}", "\u{1F63B}", "\u{1F63C}", "\u{1F63D}", "\u{1F640}", "\u{1F63F}", "\u{1F63E}", "\u{1F648}", "\u{1F649}"] }

  describe '#pickup_emoji' do
    it 'returns picked up emoji from the emojis array' do
      expect(emojis).to include(my_tweets.pickup_emoji)
    end

    it 'occurs error if call it without receiver' do
      expect { pickup_emoji }.to raise_error(NameError)
    end
  end

  describe '#pickup_quote' do
    it 'returns picked up quote from the quotes array' do
      expect(quotes).to include(my_tweets.pickup_quote)
    end

    it 'occurs error if call it without receiver' do
      expect { pickup_quote }.to raise_error(NameError)
    end
  end
end
# rubocop:enable Layout/LineLength
