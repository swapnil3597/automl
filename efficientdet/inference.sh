python model_inspect.py --runmode=saved_model_infer \
  --model_name=efficientdet-d0  \
  --saved_model_dir=gs://tfrecords_and_logs/experiments/img_clf_approach/logs/efficientdet_5_wbcs/export/  \
  --input_image=../test_data/*.png --output_image_dir=results/