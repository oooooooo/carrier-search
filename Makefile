default:
	./update.sh
	ruby app.rb > doc/number2carrier.js

clean:
	rm *.csv
	rm *.xlsx
