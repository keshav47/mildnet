source settings.cfg
source $1
echo $1

python execute.py --job-dir=output --data-path=dataset/ --optimizer=mo --model-id=ranknet --weights-path=None --loss=contrastive_loss --train-csv=tops_val_full.csv  --val-csv=tops_val_full.csv --batch-size=16 --train-epocs=30 --lr=0.001 --hyperdash-key=SQ2PTO0EsRQRXldNDT3+hmjV2/rSKnBViePQaE8A4f
