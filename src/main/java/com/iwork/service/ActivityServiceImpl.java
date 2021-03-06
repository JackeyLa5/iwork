package com.iwork.service;

import com.iwork.bean.Activity;
import com.iwork.bean.Comment;
import com.iwork.mapper.ActivityMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ActivityServiceImpl implements ActivityService {

    @Resource
    ActivityMapper mapper;

    public void ActivityAdd(Activity activity) {
        mapper.addActivity(activity);
    }

    public List<Activity> ActivityList(int id) {
        return mapper.listActivities(id);
    }


    public Activity selectActivityById(String id) {
        return mapper.selectActivity(id);
    }

    public void CommentAdd(Comment comment) {
        mapper.addComment(comment);
    }

    public List<Comment> selectCommentsByArticleId(String id) {
        return mapper.selectCommentsByArticleId(id);
    }

    public void deleteActivityById(String activityId) {
        mapper.deleteActivityById(activityId);
    }
}
