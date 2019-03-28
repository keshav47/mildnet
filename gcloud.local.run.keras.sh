source settings.cfg
source $1
echo $1
gcloud ml-engine local train \
--module-name trainer.task \
--package-path trainer/ \
--job-dir 'output/mildnet' \
-- \
--data-path='dataset/tops' \
--model-id=$model_id \
--loss=$loss \
--optimizer=$optimizer \
--train-csv=$train_csv \
--val-csv=$val_csv \
--train-epocs=$train_epocs \
--lr=$lr
