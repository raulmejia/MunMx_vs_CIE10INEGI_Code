input_file=../Data/INEGI_Mortalidad_2010/Mortalidad_2010_completo.csv
output_file=../Data/INEGI_Mortalidad_2010/Mortalidad_2010_completo.csv.UTF8
initial_encoding=$(file -i $input_file | awk -F'[=]' '{print $2}')
iconv -f $initial_encoding -t UTF-8 < $input_file > $output_file

# iconv -f iso-8859-1 -t UTF-8 < $input_file > $output_file

out_tsv="../Data/INEGI_Mortalidad_2010/Mortalidad_2010_completo.UTF8.tsv"
sed 's/, / /g'  < $output_file > $out_tsv
sed -i "s/,/\t/g" $out_tsv
sed -i 's/"//g' $out_tsv


