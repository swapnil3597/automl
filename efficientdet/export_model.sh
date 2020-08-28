python model_inspect.py --runmode=saved_model --model_name=efficientdet-d0 \
  --ckpt_path=gs://tfrecords_and_logs/experiments/img_clf_approach/logs/efficientdet/ \
  --saved_model_dir=gs://tfrecords_and_logs/experiments/img_clf_approach/logs/efficientdet/export/ \
  --tensorrt=FP32  --tflite_path=gs://tfrecords_and_logs/experiments/img_clf_approach/logs/efficientdet/tflite/