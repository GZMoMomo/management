import java.util.Calendar;
import java.util.Date;
import java.util.Random;

import dao.categoryDAO;
import dao.erDAO;
import dao.recordDAO;
import entity.Category;
import entity.Record;
import entity.er;

public class test {

	public static void main(String[] args) {
		Calendar c=Calendar.getInstance();
		c.set(2020, 12-1, 1);
		for(int i=0;i<30;i++) {
			c.add(Calendar.DATE, 1);
			for(int j=1;j<=7;j++) {
				Date d=c.getTime();
				int spend=(int)((Math.random()*(5-0))+0);
				Record r=new Record();
				r.setDate(d);
				r.setCid(j);
				r.setSpend(spend);
				recordDAO rd=new recordDAO();
				rd.add(r);
			}
			
		}
		
		
	}

}
