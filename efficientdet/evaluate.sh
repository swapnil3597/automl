python main.py --mode=eval  \
    --model_name=efficientdet-d0 \
    --model_dir=gs://tfrecords_and_logs/experiments/img_clf_approach/logs/efficientdet_5_wbcs/  \
    --validation_file_pattern=gs://tfrecords_and_logs/experiments/img_clf_approach/tfrecord_obj_5_wbcs/valid*.tfrecord  \
    --testdev_dir='../validation_results/' \
    --eval_samples=534