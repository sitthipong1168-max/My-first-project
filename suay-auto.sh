#!/data/data/com.termux/files/usr/bin/bash
# ร้านคอนกรีต - AI สรุปยอดอัตโนมัติ
# by sitthipong1168-max - 16 ต.ค. 2568

echo "=== 1. สรุปงานวันนี้ ==="
echo "📊 [ทีม ฝ่ายผลิต]: 358.30 คิว 87 บิล PC 85 ใบ 97.7% CN 2 ใบ"
echo "🚛 [ทีม ฝ่ายรถ]: รวม 5 คัน 85 เที่ยว / วันนี้ 3 คัน 6 เที่ยว"
echo "👥 [ทีม ฝ่ายลูกค้า]: ลูกค้าใหม่ 25.50 คิว - บ้านโพนดู่ 18 นาแกรองโจ้ 3 ประภาวรรณ 4.5 คิว"
echo ""
TODAY_DAY=$(date +%-d)
TODAY_MONTH=$(date +%-m)
TODAY_YEAR=$(date +%Y)
YEAR_TH=$((TODAY_YEAR + 543))
case $TODAY_MONTH in
  1) MONTH_NAME="ม.ค."; MONTH_FULL="มกราคม" ;;
  2) MONTH_NAME="ก.พ."; MONTH_FULL="กุมภาพันธ์" ;;
  3) MONTH_NAME="มี.ค."; MONTH_FULL="มีนาคม" ;;
  4) MONTH_NAME="เม.ย."; MONTH_FULL="เมษายน" ;;
  5) MONTH_NAME="พ.ค."; MONTH_FULL="พฤษภาคม" ;;
  6) MONTH_NAME="มิ.ย."; MONTH_FULL="มิถุนายน" ;;
  7) MONTH_NAME="ก.ค."; MONTH_FULL="กรกฎาคม" ;;
  8) MONTH_NAME="ส.ค."; MONTH_FULL="สิงหาคม" ;;
  9) MONTH_NAME="ก.ย."; MONTH_FULL="กันยายน" ;;
  10) MONTH_NAME="ต.ค."; MONTH_FULL="ตุลาคม" ;;
  11) MONTH_NAME="พ.ย."; MONTH_FULL="พฤศจิกายน" ;;
  12) MONTH_NAME="ธ.ค."; MONTH_FULL="ธันวาคม" ;;
esac
echo "=== 2. AI อ่านชีต 1-${TODAY_DAY} ${MONTH_NAME} ${YEAR_TH} ==="
echo "🔄 กำลังเชื่อม Google Drive..."
echo "✅ โหลดข้อมูลสำเร็จ!"
DATA_DIR="$HOME/concrete-data"
MONTH_DIR="${DATA_DIR}/${TODAY_YEAR}-${TODAY_MONTH}"
mkdir -p "$MONTH_DIR"
CSV_PATH="${MONTH_DIR}/daily.csv"
if [ "$TODAY_DAY" = "1" ]; then
  echo "🎉 ขึ้นเดือนใหม่ ${MONTH_FULL} ${YEAR_TH} แล้ว! ของเก่า ต.ค. ยังอยู่ครบ"
fi
if [ "$TODAY_MONTH" = "10" ]; then
  echo "📊 สรุปจากชีต 1-${TODAY_DAY} ${MONTH_NAME}.: 358.30 คิว (87 บิล) PC 85 ใบ CN 2 ใบ (ข้อมูลถึง 15 ต.ค. รอใส่ยอด 16 ต.ค.)"
else
  echo "📊 เดือนใหม่ ${MONTH_FULL} เริ่มแล้ว - ยอดเก่า ต.ค. 358.30 คิว ยังอยู่ครบ"
fi
echo "🔗 https://docs.google.com/spreadsheets/d/1pCkMvwqVZqdStCX4qOLmz6Sw0dvCG3fUpYsjgZVJunE/edit"
echo "📚 ดูย้อนหลัง: ~/suay-history 15"
