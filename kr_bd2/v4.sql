select city, sum(loan_amount)  as money from debt_payments
                                                 join branch on debt_payments.id_branch = branch.id_branch
group by  city
order by  money desc limit 1;