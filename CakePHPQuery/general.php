<?php
$order_occurrences = $this->getDbTable('OrderOccurrences')
    ->find()
    ->contain(['Orders' => function (\Cake\ORM\Query $query) use ($customer_email) {
        $condition = ['Orders.admin_status' => ORDER_ADMIN_STATUS_ACTIVE];

        if (!empty($customer_email)) {
            $condition['Orders.customer_email'] = $customer_email;
        }

        return $query->where($condition);
    }])
    ->where($condition)
    ->enableHydration(false)
    ->all();