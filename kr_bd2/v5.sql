select fio_client, address, sum(total_amount) AS sum_payment
from client join debt_payments on client.id_client = debt_payments.id_client
where debt_payments.date_loan_closing - debt_payments.date_taking_loan > 61
group by  fio_client, address
order by  sum_payment desc ;

