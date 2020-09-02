python model_inspect.py --runmode=saved_model_infer \
  --model_name=efficientdet-d0  \
  --saved_model_dir=gs://tfrecords_and_logs/experiments/img_clf_approach/logs/efficientdet/export/  \
  --input_image=../testdata/Task_13_2020142361_1_001.png --output_image_dir=results/