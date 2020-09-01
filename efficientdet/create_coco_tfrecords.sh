python -m dataset.create_coco_tfrecord \
    --image_dir=gs://medanta_images/Tasks/ \
    --object_annotations_file=gs://tfrecords_and_logs/experiments/img_clf_approach/jsons/neutro_lymph_plate.json \
    --output_file_prefix=gs://tfrecords_and_logs/experiments/img_clf_approach/tfrecord_obj_neutro_lymph_plate/train \
    --num_shards=20
