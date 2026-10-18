import os
import json
import shutil
import glob

class Config:

	def __init__(
			self,
			out_path: str,
			out_license: bool,
			out_name: str,
			minv: float,
			maxv: float,
			rv: str
		):
		self.out_path = out_path;
		self.out_license = out_license
		self.out_name = out_name
		self.minv = minv
		self.maxv = maxv
		self.rv = rv
	
	def provideMcmeta(self):
		return {
		  "pack": {
		    "min_format": self.minv,
		    "max_format": self.maxv,
		    "description": [
		      {"text":"Magical Addons ","color":"gray","extra":[
		      {"text":self.rv}]}
		    ]
		  }
		}

	def buildDataPack(self):
		buildpath = os.path.join(self.out_path, self.out_name)
		datapack = self.provideMcmeta()
		shutil.copytree("src", buildpath)
		if self.out_license:
			shutil.copy("LICENSE", os.path.join(buildpath, "LICENSE"))
		try:
			with open(os.path.join(buildpath, 'pack.mcmeta'), 'w') as mcmeta:
				json.dump(datapack, mcmeta)
		except(FileExistsError):
			pass
		files = glob.glob("dist/**/*.py", recursive=True)
		for f in files:
			if f.endswith('.mcfunction.py'):
				with open(f, 'r') as script:
					code = script.read()
					exec(code)
			os.remove(f)
		print("Built " + self.out_name)

	def buildResourcePack(self):
		buildpath = os.path.join(self.out_path, self.out_name)
		resourcepack = self.provideMcmeta()
		shutil.copytree("res", buildpath)
		if self.out_license:
			shutil.copy("LICENSE", os.path.join(buildpath, "LICENSE"))
		try:
			with open(os.path.join(buildpath, 'pack.mcmeta'), 'w') as mcmeta:
				json.dump(resourcepack, mcmeta)
		except(FileExistsError):
			pass

		print("Built " + self.out_name)