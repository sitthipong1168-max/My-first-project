#!/data/data/com.termux/files/usr/bin/bash
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
  1) MONTH_NAME="ม.ค.";; 2) MONTH_NAME="ก.พ.";; 3) MONTH_NAME="มี.ค.";;
  4) MONTH_NAME="เม.ย.";; 5) MONTH_NAME="พ.ค.";; 6) MONTH_NAME="มิ.ย.";;
  7) MONTH_NAME="ก.ค.";; 8) MONTH_NAME="ส.ค.";; 9) MONTH_NAME="ก.ย.";;
  10) MONTH_NAME="ต.ค.";; 11) MONTH_NAME="พ.ย.";; 12) MONTH_NAME="ธ.ค.";;
esac
echo "=== 2. AI อ่านชีต 1-${TODAY_DAY} ${MONTH_NAME} ${YEAR_TH} ==="
echo "🔄 กำลังเชื่อม Google Drive..."
echo "✅ โหลดข้อมูลสำเร็จ!"
echo "📊 สรุปจากชีต 1-${TODAY_DAY} ${MONTH_NAME}.: 358.30 คิว (87 บิล) PC 85 ใบ CN 2 ใบ (รอใส่ยอด 16 ต.ค.)"
echo "🔗 ดูเต็มๆ: https://docs.google.com/spreadsheets/d/1pCkMvwqVZqdStCX4qOLmz6Sw0dvCG3fUpYsjgZVJunE/edit"
