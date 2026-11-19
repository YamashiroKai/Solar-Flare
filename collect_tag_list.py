import os
import sys

reports_path = ""
public_tags_path = 'bin\\!public_tags.txt'

if len(sys.argv) == 3:
	reports_path = sys.argv[1]
	public_tags_path = sys.argv[2]

allset = set()
unreferenced_set = set()
reports_path = reports_path + "reports\\"

def process_directory(directory):
	tag_directory = os.path.join(sys.path[0], 'tags')
	digsite_directory = os.path.join(tag_directory, directory)
	if os.path.exists(digsite_directory):
		for path, subdirs, files in os.walk(digsite_directory):
			for name in files:
				absolute_file_path = os.path.join(path, name)
				local_path = absolute_file_path.split(tag_directory + os.sep, 1)[1]
				local_path = local_path.lower()
				if not local_path in allset:
					s = local_path.rstrip()
					unreferenced_set.add(s)


def process_file(fname):
	with open( reports_path + fname + "\\" + fname + "_tags_loaded.txt", "r") as file:
		for lineNumber, lineText in enumerate(file):
			s = lineText.rstrip()
			allset.add(s)

process_file('ui')
process_file('a10')
process_file('a30')
process_file('a50')
process_file('b30')
process_file('b40')
process_file('c10')
process_file('c20')
process_file('c40')
process_file('d20')
process_file('d40')

process_file('beavercreek')
process_file('bloodgulch')
process_file('boardingaction')
process_file('carousel')
process_file('chillout')
process_file('damnation')
process_file('dangercanyon')
process_file('deathisland')
process_file('gephyrophobia')
process_file('hangemhigh')
process_file('icefields')
process_file('infinity')
process_file('longest')
process_file('prisoner')
process_file('putput')
process_file('ratrace')
process_file('sidewinder')
process_file('timberland')
process_file('wizard')

process_file('tutorial')

process_file('dusk')				# digsite\levels\dusk\dusk
process_file('d_dusk_too')			# digsite\levels\dusk\_dig\d_dusk_too
process_file('indoor')				# digsite\levels\indoor\indoor
process_file('agoraphobia')			# digsite\levels\indoor\_dig\agoraphobia
process_file('ruinedpain')			# digsite\levels\ruinedpain\ruinedpain
process_file('spasm')				# digsite\levels\spasm\spasm
process_file('spasm_playground')	# digsite\levels\spasm\spasm_playground
process_file('swampthing')			# digsite\levels\swampthing\swampthing
process_directory('digsite')		# tags\digsite

# tags we aren't building but want to include anyway
with open('bin\\!public_tags_extra.txt', "r") as file:
	for lineNumber, lineText in enumerate(file):
		s = lineText.rstrip()
		allset.add(s)

with open(public_tags_path, "w") as fout:
	print()
	for s in sorted(allset):
		if os.path.exists(sys.path[0] + '\\tags\\' + s):
			fout.write(s + '\n')

	for s in sorted(unreferenced_set):
		if os.path.exists(sys.path[0] + '\\tags\\' + s):
			fout.write(s + '\n')

print('done')
