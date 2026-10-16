#!/data/data/com.termux/files/usr/bin/bash
# suay-add - ปุ่มใส่ยอดเร็ว ร้านคอนกรีต
Q="$1"
NOTE="${@:2}"
if [ -z "$Q" ]; then
  echo "ใช้: suay-add 10.5 บ้านโพนดู่"
  exit 0
fi
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
DATE_NOW=$(date +"%d/%m/%Y %H:%M")
[ -z "$NOTE" ] && NOTE="-"
SAFE_NOTE=$(echo "$NOTE" | tr ',' ' ')
echo "${Q},${DATE_NOW},${SAFE_NOTE}" >> "$CSV_PATH"
TOTAL_Q=$(awk -F',' '{sum+=$1} END {print sum}' "$CSV_PATH")
TOTAL_BILL=$(wc -l < "$CSV_PATH")
echo "✅ เพิ่มแล้ว: ${Q} คิว - ${NOTE}"
echo "📅 ${DATE_NOW} (${TODAY_DAY} ${MONTH_NAME} ${YEAR_TH})"
echo "📊 ยอดรวมเดือนนี้: ${TOTAL_Q} คิว (${TOTAL_BILL} บิล)"
echo "📁 เก็บที่: $CSV_PATH"
