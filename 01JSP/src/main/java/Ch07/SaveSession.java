package Ch07;

import java.util.HashMap;
import java.util.Map;

public class SaveSession {
	//MAP 컬렉션(접속 세션정보 저장)
	public Map<String, Account> slist = new HashMap();
	
	//계정 추가
	public void addSession(String id, String pw, String sid) {
		Account acc = new Account(id,pw,sid);
		slist.put(id, acc);
		System.out.println("slist에" + id + " 계정 추가");
	}
	
	//계정 꺼내기
	public Map<String,Account> getSession(){
		return slist;
	}

}
