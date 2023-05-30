from pdb import set_trace as t
import csv
import sys
import os

# constants
ethnicities = ['', 'Native American (self reported)', 'East Asian', 'African or Af-Am Self Reported', 'Hispanic', 'White Self Reported', 'Other Undefined Race']
ethCol = ##   ethnicity column here
			
# instantiate the dictionaries
names = {'first': {}, 'middle': {}, 'last': {}}
columns = {'first': 1, 'middle': 2, 'last': 3} # name columns here 

# get all the files 
files = list()
path = 'PATH_TO_VOTERFILES'
folders = os.listdir(path)
for folder in folders:
	localFiles = os.listdir(path + folder)
	files = files + [folder + '/' + f for f in localFiles]

# iterate through the file paths
for file in files:
		
	# get the path
	fullPath = path + file
	print(file)
	
	# read in the file
	cntr = 0
	with open(fullPath) as infile:
		reader = csv.reader(infile, delimiter = '\t')	
		next(infile)
		
		# add the file to the dictionary
		names['first'][file] = {}
		names['middle'][file] = {}
		names['last'][file] = {}
	
		# read in the file line by line 
		for line in reader:

			# add to the dictionaries
			for nameType in columns:
				
				# case when the name is already in the dictionary
				if line[columns[nameType]] in names[nameType][file]:
					if line[ethCol] in names[nameType][file][line[columns[nameType]]]:
						names[nameType][file][line[columns[nameType]]][line[ethCol]] += 1
					else:
						names[nameType][file][line[columns[nameType]]][line[ethCol]] = 1
				# case when the name is not already in the dictionary
				else:
					names[nameType][file][line[columns[nameType]]] = {}
					names[nameType][file][line[columns[nameType]]][line[ethCol]] = 1
												
# save the results as csv files
outDir = 'PATH_TO_OUTPUT_DIRECTORY'

for nameType in names:
	
	outfile = 'nameCounts_' + nameType + '.csv'
	with open(outDir + outfile, 'w') as f:
			writer = csv.writer(f, delimiter = ',')	
			writer.writerow(['Name', 'No Race', 'Native American (self reported)', 'East Asian', 'African or Af-Am Self Reported', 'Hispanic', 'White Self Reported', 'Other Undefined Race'])	
	
			for name in names[nameType]:
				writer.writerow([name] + [names[nameType][name].get(v, 0) for v in ethnicities])