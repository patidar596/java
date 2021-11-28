package log.springmvc.dao;

import java.util.List;

import log.springmvc.model.feedback;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;


public class feedbackdaoimpl implements feedbackdao{
	
	@Autowired
	  DataSource datasource;
	  @Autowired
	  JdbcTemplate jdbcTemplate;
		
	public List<feedback> show_feedback() {
		// TODO Auto-generated method stub
		String sql = "select * from feedback";
	    return jdbcTemplate.query(sql, new feedbackmapper());
	}

	public void add_feedback(String mesage) {
		// TODO Auto-generated method stub
		String sql = "insert feedback(mesage) values(?)";
	    jdbcTemplate.update(sql, new Object[] { mesage });
	}

	public void del_feedback(int fb_id) {
		// TODO Auto-generated method stub
		String sql = "delete from feedback where fb_id=?";
		jdbcTemplate.update(sql, new Object[] {  fb_id });
	}

	public feedback q_details(int fb_id) {
		// TODO Auto-generated method stub
		String sql = "select * from feedback where fb_id=" + fb_id ;
	    List<feedback> pqlist = jdbcTemplate.query(sql, new feedbackmapper());
	    return pqlist.size()>0 ? pqlist.get(0) : null;
	}
	
}

class feedbackmapper implements RowMapper<feedback> {
	  public feedback mapRow(ResultSet rs, int arg1) throws SQLException {
	    feedback user = new feedback();
	    user.setQuestion(rs.getString("mesage"));
	    user.setFb_id(rs.getInt("fb_id"));
	    return user;
	  }
	}
