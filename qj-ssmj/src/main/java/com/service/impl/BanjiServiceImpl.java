package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.transaction.annotation.Transactional;
import com.utils.PageUtils;
import com.utils.Query;

import com.dao.BanjiDao;
import com.entity.BanjiEntity;
import com.service.BanjiService;
import com.entity.view.BanjiView;

/**
 * 班级表 服务实现类
 * @author 
 * @since 2021-02-23
 */
@Service("banjiService")
@Transactional
public class BanjiServiceImpl extends ServiceImpl<BanjiDao, BanjiEntity> implements BanjiService {

    @Override
    public PageUtils queryPage(Map<String,Object> params) {
        if(params != null && (params.get("limit") == null || params.get("page") == null)){
            params.put("page","1");
            params.put("limit","10");
        }
        Page<BanjiView> page =new Query<BanjiView>(params).getPage();
        page.setRecords(baseMapper.selectListView(page,params));
        return new PageUtils(page);
    }

}
