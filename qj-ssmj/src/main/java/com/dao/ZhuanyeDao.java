package com.dao;

import com.entity.ZhuanyeEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.view.ZhuanyeView;

/**
 * 专业表 Dao 接口
 *
 * @author 
 * @since 2021-02-23
 */
public interface ZhuanyeDao extends BaseMapper<ZhuanyeEntity> {

   List<ZhuanyeView> selectListView(Pagination page,@Param("params")Map<String,Object> params);

}
