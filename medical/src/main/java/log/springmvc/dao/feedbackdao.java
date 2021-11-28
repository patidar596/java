package log.springmvc.dao;

import log.springmvc.model.Pending_question;
import log.springmvc.model.feedback;
import java.util.List;

public interface feedbackdao  {
	List<feedback> show_feedback();
	public void  add_feedback(String mesage);
	void del_feedback(int fb_id);
	feedback q_details(int fb_id);
}
