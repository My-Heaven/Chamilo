package com.wfh.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.wfh.mapper.roleMapper;
import com.wfh.model.role;

@Repository
@Transactional
public class roleDAO extends JdbcDaoSupport {
	@Autowired
	public roleDAO(DataSource dataSource) {
		this.setDataSource(dataSource);
	}
	public List<role> listRole() {
        String sql = roleMapper.BASE_SQL;
 
        Object[] params = new Object[] {};
        roleMapper mapper = new roleMapper();
 
        List<role> list = this.getJdbcTemplate().query(sql, params, mapper);
        return list;
    }
}
