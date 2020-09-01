import json
import argparse
import gcsfs

def get_args():
    """
        Takes arguments from command line
        ARGS: None
        Returns: Dictionary
    """
    parser = argparse.ArgumentParser()
    parser.add_argument(
          '--project-name',
          type=str,
          required=True,
          help='gcp proj name')
    parser.add_argument(
          '--coco-json-path',
          type=str,
          required=True,
          help='coco_json_path - filtered json or single label json')
    return args_parser.parse_args()

def create_config(project_name, coco_json_path):
    file_system = gcsfs.GCSFileSystem(project=project_name)
    with file_system.open(coco_json_path, 'r') as f:
        coco_json = json.load(f)
    config = {}
    label_map = {category['id']: category['name'] for category in coco_json['categories']}
    with open('cell_config.yaml', 'w') as outfile:
        outfile.write('num_classes: '+str(len(coco_json['categories']))+'\n')
        outfile.write('label_map: '+str(label_map))

def main():
    """main"""
    args = get_args()
    create_config(project_name=args.project_name,
                  coco_json_path=args.coco_json_path)
    
if __name__ == "__main__":
    main()
 