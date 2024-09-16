default:
	./update.sh
	ruby app.rb > docs/number2carrier.js

clean:
	rm *.csv
	rm *.xlsx
