MXNET_ENABLE_GPU_P2P=0 python3 train_imagenet.py \
  --rec-train /home/bluews/data/imagenet/train_rec/train_rec.rec \
  --rec-train-idx /home/bluews/data/imagenet/train_rec/train_rec.idx \
  --rec-val /home/bluews/data/imagenet/val/val.rec \
  --rec-val-idx /home/bluews/data/imagenet/val/val.idx \
  --input-size 224 \
  --mode hybrid \
  --lr 0.2 --lr-mode cosine --num-epochs 200 --batch-size 64 --num-gpus 4 -j 12 \
  --use-rec --dtype float16 --warmup-epochs 5  --no-wd --label-smoothing \
  --save-dir params_mnasnet \
  --logging-file mnasnet_best.log