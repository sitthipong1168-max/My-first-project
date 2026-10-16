#!/data/data/com.termux/files/usr/bin/bash
# v1.19 - ยอดจริง 16 ต.ค. 15.50 คิว
TODAY_DAY=$(date +%-d)
TODAY_MONTH=$(date +%-m)
TODAY_YEAR=$(date +%Y)
YEAR_TH=$((TODAY_YEAR + 543))
case $TODAY_MONTH in
  1) MONTH_NAME="ม.ค." ;; 2) MONTH_NAME="ก.พ." ;; 3) MONTH_NAME="มี.ค." ;;
  4) MONTH_NAME="เม.ย." ;; 5) MONTH_NAME="พ.ค." ;; 6) MONTH_NAME="มิ.ย." ;;
  7) MONTH_NAME="ก.ค." ;; 8) MONTH_NAME="ส.ค." ;; 9) MONTH_NAME="ก.ย." ;;
  10) MONTH_NAME="ต.ค." ;; 11) MONTH_NAME="พ.ย." ;; 12) MONTH_NAME="ธ.ค." ;;
esac
DATA_DIR="$HOME/concrete-data"
MONTH_DIR="${DATA_DIR}/${TODAY_YEAR}-${TODAY_MONTH}"
mkdir -p "$MONTH_DIR"
CSV_PATH="${MONTH_DIR}/daily.csv"
BASE_Q="373.80"
BASE_BILL=92
TODAY_Q="15.50"
TODAY_BILL=5
ADD_Q="0"; ADD_BILL=0
if [ -f "$CSV_PATH" ]; then
  ADD_Q=$(awk -F',' '{sum+=$1} END {print sum+0}' "$CSV_PATH")
  ADD_BILL=$(wc -l < "$CSV_PATH")
fi
TOTAL_Q=$(awk "BEGIN {print $BASE_Q + $ADD_Q}")
TOTAL_BILL=$((BASE_BILL + ADD_BILL))
echo "=== DAILY DISPATCH REPORT 16 ต.ค. 2026 ==="
echo "📦 ยอดวันนี้: ${TODAY_Q} คิว ${TODAY_BILL} ใบ PC 5 ใบ CN 0"
echo "📊 [ทีม ฝ่ายผลิต]: ${TOTAL_Q} คิว ${TOTAL_BILL} บิล (1-16 ต.ค.)"
echo "🚛 [ทีม ฝ่ายรถ]: 3 คัน 5 เที่ยว - หนุ่ม 2 เที่ยว 4คิว, หวาน 2 เที่ยว 9คิว, มุก 1 เที่ยว 2.5คิว"
echo "👥 [ทีม ฝ่ายลูกค้า]: วันนี้ 15.50 คิว - พนมซับหลังโรงเศษ 4.00, หจก.ประภารรรณ 5.00, บ้านนางคำ 6.50"
echo ""
echo "📊 รวม 1-15 ต.ค.: 358.30 คิว 87 บิล"
echo "📊 16 ต.ค. วันนี้: 15.50 คิว 5 บิล"
echo "📈 รวม 1-16 ต.ค.: 373.80 คิว 92 บิล ✅ ยอดจริง"
