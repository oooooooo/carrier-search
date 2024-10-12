default: update

clean:
	rm *.csv
	rm *.xlsx

update:
	./update.sh
	ruby app.rb > docs/number2carrier.js
