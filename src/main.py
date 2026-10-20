import os, json, shutil, glob

from urllib import request
from src.utils import Generator

class Config:

	def __init__(
			self,
			out_path: str,
			out_license: bool,
			out_name: str,
			minv: float,
			maxv: float,
			rv: str,
			mcv: str,
			snbt_paths: list
		):
		self.out_path = out_path;
		self.out_license = out_license
		self.out_name = out_name
		self.minv = minv
		self.maxv = maxv
		self.rv = rv
		self.mcv = mcv
		self.snbt_paths = snbt_paths
	
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

	def downloadMCServer(self):
		manifest_url = 'https://piston-meta.mojang.com/mc/game/version_manifest_v2.json'
		version_manifest = Generator.json_from_url(manifest_url)
		version = None
		try:
			for i in version_manifest['versions']:
				if i['id'] == self.mcv:
					version = i
					break
		except Exception as e:
			print(f"Invalid version: {e}")
		version_data = Generator.json_from_url(version['url'])
		server_jar_url = version_data['downloads']['server']['url']
		request.urlretrieve(server_jar_url,"server.jar")

	def buildDataPack(self):
		buildpath = os.path.join(self.out_path, self.out_name)
		datapack = self.provideMcmeta()
		if not os.path.exists("server.jar"):
			self.downloadMCServer()
			print("Downloaded server.jar")

		shutil.copytree("src", os.path.join(buildpath))

		# Start mc data generator for snbt to nbt conversion
		for snbt_dir in self.snbt_paths:
			Generator.snbtToNbt(buildpath, snbt_dir)
			shutil.rmtree(os.path.join(buildpath, snbt_dir, "data"))
			shutil.rmtree(os.path.join(buildpath, snbt_dir, ".cache"))
		
		# Pack.png
		shutil.copy("res/pack.png", os.path.join(buildpath, "pack.png"))
		
		# License
		if self.out_license:
			shutil.copy("LICENSE", os.path.join(buildpath, "LICENSE"))
		try:
			with open(os.path.join(buildpath, 'pack.mcmeta'), 'w') as mcmeta:
				json.dump(datapack, mcmeta)
		except(FileExistsError):
			pass
		py_files = glob.glob("dist/**/*.py", recursive=True)
		snbt_files = glob.glob("dist/**/*.snbt", recursive=True)
		for f in py_files:
			if f.endswith('.mcfunction.py'):
				with open(f, 'r') as script:
					code = script.read()
					exec(code)
			os.remove(f)
		for f in snbt_files:
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