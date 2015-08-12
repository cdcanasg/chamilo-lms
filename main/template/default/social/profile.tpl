{% extends template ~ "/layout/layout_1_col.tpl" %}

{% block content %}
<div class="row">
    <div class="col-md-3">
        {{ social_avatar_block }}
        {{ social_extra_info_block }}        
        <div class="social-menu">
            {{ social_menu_block }}
        </div>
    </div>
    <div id="wallMessages" class="col-md-6">
        {{ social_wall_block }}
        {{ social_post_wall_block }}
        {{ social_auto_extend_link }}
    </div>
    <div class="col-md-3">
        <div class="chat-friends">
                <div class="panel-group" id="blocklistFriends" role="tablist" aria-multiselectable="true">
                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingOne">
                            <h4 class="panel-title">
                                <a role="button" data-toggle="collapse" data-parent="#blocklistFriends" href="#listFriends" aria-expanded="true" aria-controls="listFriends">
                                    {{ "SocialFriend" | get_lang }}
                                </a>
                            </h4>
                        </div>
                    <div id="listFriends" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                        <div class="panel-body">
                            {{ social_friend_block }}
                        </div>
                    </div>
                </div>
            </div>
        </div>
        {{ social_skill_block }}
        {{ social_group_info_block }}
        {{ social_course_block }}
        {{ social_session_block }}
        {{ social_rss_block }}
        {{ social_right_information }}
    </div>
</div>
    {% if formModals is defined %}
        {{ formModals }}
    {% endif %}
{% endblock %}
