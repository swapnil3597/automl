now=$(date +"%Y%m%d_%H%M%S")
MAIN_TRAINER_MODULE="efficientdet.main"

TRAINER_PACKAGE_PATH="$(pwd)/efficientdet/"
PACKAGE_STAGING_PATH="gs://tfrecords_and_logs/"
JOB_NAME="EfficientDet_$now"
CONFIG="config.yaml"

project_name="qp-medanta-2020-05"
train_json_instance="gs://tfrecords_and_logs/experiments/img_clf_approach/jsons/neutro_lymph_plate.json"

python efficientdet/create_data_config.py \
 --project-name $project_name \
 --coco-json-path $train_json_instance

gcloud ai-platform jobs submit training $JOB_NAME \
    --staging-bucket $PACKAGE_STAGING_PATH \
    --runtime-version 2.2 \
    --python-version 3.5 \
    --package-path $TRAINER_PACKAGE_PATH \
    --module-name $MAIN_TRAINER_MODULE \
    --region "us-east1" \
    --config $CONFIG \
    -- \
    --mode=train \
    --training_file_pattern=gs://tfrecords_and_logs/experiments/img_clf_approach/tfrecord_obj_neutro_lymph_plate/train*.tfrecord \
    --model_name=efficientdet-d0 \
    --model_dir=gs://tfrecords_and_logs/experiments/img_clf_approach/logs/efficientdet_neutro_lymph_plate/  \
    --ckpt=gs://tfrecords_and_logs/experiments/img_clf_approach/logs/efficientdet_ckpt/  \
    --train_batch_size=8 \
    --num_epochs=10 \
    --num_examples_per_epoch=7985 \
    --hparams=cell_config.yaml
