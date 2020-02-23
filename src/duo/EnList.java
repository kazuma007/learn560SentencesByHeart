package duo;
import java.util.ArrayList;
import java.util.List;

public class EnList {

	private List<EnContents> enList = new ArrayList<>();

	EnList(){
		enList.add(new EnContents(1, "個人の意志は尊重しなければいけない。", "We must respect the will of the individual."));
		enList.add(new EnContents(2, "気楽にいけよ。大丈夫、すべてうまくいくさ。", "Take it easy. I can assure you that everything will turn out fine."));
		enList.add(new EnContents(3, "悲観的な人生観を捨てて、前向きな態度を常に持ち続けよう。", "Let go of your negative outlook on life. Always maintain a positive attitude."));
		enList.add(new EnContents(4, "生まれた国、性別、信条に関係なく、誰に対しても公平でなくてはならない。", "You should be fair to everyone regardless of national origin, gender, or creed."));
		enList.add(new EnContents(5, "平等は憲法で守られている。", "Equality is guaranteed by the Constitution."));
		enList.add(new EnContents(6, "彼は柱に寄りかかって、自由の女神像をじっとみつめた。", "He leaned against the pillar and gazed at the Statue of Liberty."));
		enList.add(new EnContents(7, "香水のほのかな香りを漂わせながら、一人の女性が僕の前を通り過ぎた。前の彼女のことを思い出してしまった。", "A woman passed by me giving off a subtle scent of perfume. It reminded me of my ex-girlfriend."));
		enList.add(new EnContents(8, "納豆は臭いはひどいけれど味は最高。", "Natto smells awful but tastes terrific."));
		enList.add(new EnContents(9, "「汗でびしょぬれだよ。」「来ないで！臭いわ。シャワーを浴びて。」", "I'm soaked with sweat. \"Stand back! You stink. Take a shower.\""));
		enList.add(new EnContents(10, "ボブはひどく取り乱していて、現実と虚構の区別がほとんどできなかった。", "Bob was so beside himself that he could scarcely tell fact from fiction."));
		enList.add(new EnContents(11, "まもなく出版になる彼の小説は、散文に彼の詩の才能を融合させたものだ。", "His new novel, which combines prose with his gift for poetry, is going to be published."));
	}

	public List<EnContents> getEnList() {
		return enList;
	}

	public void setEnList(List<EnContents> enList) {
		this.enList = enList;
	}


}
