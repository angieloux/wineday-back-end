Rspec.configure do |config|

    # Before running the whole suite of tests, run DatabaseCleaner with truncation.
    config.before(:suite) do 
        DatabaseCleaner.clean_with(:truncation)
    end

    # Tell DatabaseCleaner which strategy to use (transaction)
    config.before(:each) do
        DatabaseCleaner.strategy = :transaction
    end 

    # Before each test, start DatabaseCleaner.
    config.before(:each) do
        DatabaseCleaner.start
    end

    # After each test, clean the database.
    config.after(:each) do
        DatabaseCleaner.clean
    end

    # Also start & clean the to avoid bugs when using a before all hook in the tests (i.e. so data does not persist across test suites).
    config.before(:all) do 
        DatabaseCleaner.start
    end

    config.after(:all) do 
        DatabaseCleaner.clean
    end

end