require 'pg'

def setup_test_database!

	# p 'Resetting test database...'
	 connection = PG.connect(dbname: 'chitter_test')
	 connection.exec("TRUNCATE peeps RESTART IDENTITY;")

end
