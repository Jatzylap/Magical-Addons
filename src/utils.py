import os
from src.main import Config
from itertools import product
import math

class Generator:
	'''
	Generate a square radius from origin => Useful for custom block updates 
	code: Input code => add placeholders: {x}, {y}, {z}
	'''
	def squareRadiusFromOrigin(headers: list, PATH: str, code: str, radius: int, file_num: int, NAME: str):
		content = []

		if not os.path.exists(PATH):
		    os.makedirs(PATH)
		
		x = y = z = range(-radius, radius + 1)
		coordinates = list(product(x, y, z))
		for x_, y_, z_ in coordinates:
		    formatted_code = code.format(x=x_, y=y_, z=z_)
		    content.append(formatted_code)

		# Round up written lines to each file  
		lines_per_file = math.ceil(len(content) / file_num)

		for i in range(file_num):
			file_name = NAME
			if file_num > 1:
				file_name = f'{NAME}_{i+1}'
			file_path = os.path.join(PATH, file_name + '.mcfunction')

			with open(file_path, 'w') as file:
				lines = content[i*lines_per_file:min((i + 1) * lines_per_file, len(content))]
				for h in headers:
					file.write(h)
					file.write('\n')
				file.write('\n')
				for line_num, line in enumerate(lines):
					file.write(line)
					if line_num < len(lines) - 1:
						file.write('\n')
	'''
	Generate a diamond node search tree based on Breadth-First Search => Useful for custom leaf decay
	code: Input code => add placeholders: {x}, {y}, {z}
	'''
	def nodeSearchTree(headers: list, footers: list, PATH: str, code: str, radius: int, file_num: int, NAME: str):
		content = []

		if not os.path.exists(PATH):
		    os.makedirs(PATH)

		x = y = z = range(-radius,radius+1)

		coords = list(product(x, y, z))

		for x_, y_, z_ in coords:
			sum = abs(x_) + abs(y_) + abs(z_)
			if sum <= radius:
				fcode = code.format(x=x_,y=y_,z=z_,sum=sum)
				content.append(fcode)

		# Round up written lines to each file  
		lines_per_file = math.ceil(len(content) / file_num)

		for i in range(file_num):
			file_name = NAME
			if file_num > 1:
				file_name = f'{NAME}_{i+1}'
			file_path = os.path.join(PATH, file_name + '.mcfunction')

			with open(file_path, 'w') as file:
				lines = content[i*lines_per_file:min((i + 1) * lines_per_file, len(content))]

				# header
				for h in headers:
					file.write(h)
					file.write('\n')
				file.write('\n')
				# body
				for line_num, line in enumerate(lines):
					file.write(line)
					if line_num < len(lines) - 1:
						file.write('\n')
				#footer
				file.write('\n')
				for f in footers:
					file.write('\n')
					file.write(f)