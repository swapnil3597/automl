python main.py --mode=train \
    --training_file_pattern=gs://tfrecords_and_logs/experiments/img_clf_approach/tfrecord_efficientdet/train*.tfrecord \
    --model_name=efficientdet-d0 \
    --model_dir=gs://tfrecords_and_logs/experiments/img_clf_approach/logs/efficientdet/  \
    --train_batch_size=64 \
    --num_epochs=1  \
