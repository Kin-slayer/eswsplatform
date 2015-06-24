import com.novae.eswsplatform.bean.AwardBean;
import com.novae.eswsplatform.bean.SystemTimeBean;
import com.novae.eswsplatform.dao.AwardBeanDAO;
import com.novae.eswsplatform.dao.SystemTimeBeanDAO;



public class gendaotest {

	public static void main(String[] args) {
		AwardBeanDAO dao = new AwardBeanDAO();
		AwardBean bean = new AwardBean();
		bean.setName("hahaha");
		bean.setDeclarerId(1);
		dao.save(bean);
	}

}
