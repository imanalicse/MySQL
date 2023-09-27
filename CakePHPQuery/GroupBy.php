<?php
$query = $this->getDbTable('SurveyQuestions')->find();
$query->select(['answer_count' => $query->func()->count('SurveyQuestionAnswers.id')])
    ->leftJoinWith('SurveyQuestionAnswers')
    ->group(['SurveyQuestions.id'])
    ->enableAutoFields(true)
    ->order(['answer_count' => 'ASC'])
;

echo '<pre>';
echo print_r($query->toList());
echo '</pre>';
die();

/*
 * */
$query = $this->getDbTable('SurveyQuestionAnswers')->find('all');
$query->select(['answer_count' => $query->func()->count('SurveyQuestionAnswers.id')])
    ->select($this->getDbTable('SurveyQuestionAnswers'))
    ->select($this->getDbTable('Users'))
    ->contain('Users')
    ->where($conditions)
    ->group(['user_id', 'user_identifier']);

$order_by = [];
if (isset($post_data['completed_order']) && $post_data['completed_order'] == 'ascending') {
    $order_by['answer_count'] = 'ASC';
}
else if (isset($post_data['completed_order']) && $post_data['completed_order'] == 'descending') {
    $order_by['answer_count'] = 'DESC';
}
if (isset($post_data['time_responded_order']) && $post_data['time_responded_order'] == 'ascending') {
    $order_by['SurveyQuestionAnswers.created'] = 'ASC';
}
else if (isset($post_data['time_responded_order']) && $post_data['time_responded_order'] == 'descending') {
    $order_by['SurveyQuestionAnswers.created'] = 'DESC';
}
if (!empty($order_by)) {
    $query->order($order_by);
}
$respondents = $this->paginate($query);