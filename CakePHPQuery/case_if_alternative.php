<?php
$ticket_id = intval($level['id']);
$conditions = [
    'Orders.admin_status' => ORDER_ADMIN_STATUS_ACTIVE,
    'OrderTickets.level_id' => intval($level['id'])
];

$query = $this->getDbTable('OrderTickets')->find()
    ->contain(['Orders'])
    ->where($conditions)
    ->select(['OrderTickets.id']);

$organisation_id = $level['organisation_id'] ?? 0;
if (!$organisation_id) {
    $event_level = $this->getEventLevelById($ticket_id);
    $organisation_id = $event_level['organisation_id'] ?? 0;
}
if ($organisation_id) {
    $do_not_mark_ticket_sold_until_paid = $this->isDoNotMarkTicketSoldUntilPaid($organisation_id);
    if ($do_not_mark_ticket_sold_until_paid) {
        $query->andWhere(function ($exp, $q) {
            return $exp->addCase(
                [
                    $q->newExpr()->add(['payment_method' => PaymentMethod::OFFLINE]),
                    $q->newExpr()->add(['payment_method IS NOT' => PaymentMethod::OFFLINE])
                ],
                [$q->newExpr()->add(['payment_status' => ORDER_PAYMENT_STATUS_PAID]), 1],
                    );
        });
    }
}

// $sql = $query->sql();
$count = $query->all()->count();
return $count;