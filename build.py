import json, os, shutil

from src.main import Config

with open(os.path.join('config.json'), 'r') as cfile:
	config = json.loads(cfile.read())

config_data = Config(
	config["build_path"],
	config["output_license_in_packs"],
	config["output_datapack_name"],
	config["datapack_min_format"],
	config["datapack_max_format"],
	config["release_version"],
	config["minecraft_version"],
	config["snbt_source_paths"]
)

config_resources = Config(
	config["build_path"],
	config["output_license_in_packs"],
	config["output_resourcepack_name"],
	config["resourcepack_min_format"],
	config["resourcepack_max_format"],
	config["release_version"],
	"",
	[]
)

if __name__ == '__main__':
	if os.path.exists(config["build_path"]): shutil.rmtree(config["build_path"])
	Config.buildDataPack(config_data)
	Config.buildResourcePack(config_resources)