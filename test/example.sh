../cast 32s \
	-r capitals.csv \
	-w capitals.sql \
	-i "{country_code},{capital_city}" \
	-o "({hash}, '{country_code}', '{capital_city}')" \
	-t $'insert into City\n\t(hash, country, capital)\nvalues\n\t{records};\n' \
	-s $'\n\t' \
