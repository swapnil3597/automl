python -m dataset.create_coco_tfrecord \
    --image_dir=gs://medanta_images/Tasks/ \
    --object_annotations_file=gs://tfrecords_and_logs/mask_rcnn_main/coco_instances/neu_and_lymph_fixed_coco_mask.json \
    --output_file_prefix=tfrecords_and_logs/experiments/img_clf_approach/tfrecord_efficientdet/valid \
    --num_shards=20
