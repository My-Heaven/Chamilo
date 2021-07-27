package com.wfh.dao.impl;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.wfh.dao.UserInfoDAO;
import com.wfh.mapper.UserInfoMapper;
import com.wfh.model.UserInfo;

@Service
@Transactional
public class UserInfoDAOImpl extends JdbcDaoSupport implements UserInfoDAO {

	@Autowired
	public UserInfoDAOImpl(DataSource dataSource) {
		this.setDataSource(dataSource);
	}

	@Override
	public void createUser(String code, String username, String password, String email, String lastname,
			String firstname, String phone, String role_id) {
		// TODO Auto-generated method stub
		String sql = "insert into [dbo].[user](code, username, password, email, enabled, expried, credentials_expired_at, lastname, firstname, phone, role_id, image, created_at)\r\n"
				+ "values (?,?,?,?,?,?,?,?,?,?,?,?,?)";
		Object[] params = new Object[] { code, username, password, email, true, null, null, lastname, firstname, phone,
				role_id, "unknown.png", null };
		this.getJdbcTemplate().update(sql, params);
	}

	@SuppressWarnings("deprecation")
	@Override
	public UserInfo findUserById(int id) {
		String sql = "select * from [dbo].[user] where [id] like ?";

		Object[] params = new Object[] { "%" + id + "%" };

		UserInfoMapper mapper = new UserInfoMapper();

		UserInfo user = this.getJdbcTemplate().queryForObject(sql, params, mapper);
		return user;
	}

	@Override
	public void deleteUser(int id) {
		String sql = "delete from [dbo].[user] where [id] = ?";
		Object[] params = new Object[] { id };
		this.getJdbcTemplate().update(sql, params);
	}

	@SuppressWarnings("deprecation")
	@Override
	public List<UserInfo> getListUser() {
		String sql = "select * from [dbo].[user]";

		Object[] params = new Object[] {};
		UserInfoMapper mapper = new UserInfoMapper();

		List<UserInfo> list = this.getJdbcTemplate().query(sql, params, mapper);
		return list;
	}

	@Override
	public void updateUserById(String username, String password, String email, String lastname, String firstname,
			String role_id, String id) {
		String sql = "update [dbo].[user] \r\n"
				+ "set  username= ?, password= ?, email= ?, lastname= ?, firstname= ?, role_id= ?\r\n"
				+ "where [id] = ?";
		Object[] params = new Object[] { username, password, email, lastname, firstname, role_id, id };
		this.getJdbcTemplate().update(sql, params);
	}

	@SuppressWarnings("deprecation")
	@Override
	public List<UserInfo> searchUserById(String id) {
		String sql = "select * from [dbo].[user] where [id] like ?";

		Object[] params = new Object[] { "%" + id + "%" };

		UserInfoMapper mapper = new UserInfoMapper();

		List<UserInfo> listUser = this.getJdbcTemplate().query(sql, params, mapper);
		return listUser;
	}

}
