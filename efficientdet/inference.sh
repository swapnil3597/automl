python model_inspect.py --runmode=saved_model_infer \
  --model_name=efficientdet-d0  \
  --saved_model_dir=gs://tfrecords_and_logs/experiments/img_clf_approach/logs/efficientdetd0_neutro_lymph_plate_2ep/export/  \
  --input_image=../test_data/Task_13_2020142361_1_001.png --output_image_dir=results/