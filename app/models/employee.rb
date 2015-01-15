class Employee < Account
  has_many :time_entries


  def total_hours
  	time_entries.sum(:time_worked)
  end

  def log_time(amount, customer)
  	TimeEntry.create(time_worked: amount, employee: self, account: customer)
  end
end
