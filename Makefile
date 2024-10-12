default:
	ruby app.rb > docs/number2carrier.js

clean:
	rm *.csv
	rm *.xlsx

update:
	./update.sh
