# 🖱️ Hotkey-Mouse (Premiere Pro Controller)

เปลี่ยนเมาส์ Xtrfy (หรือเมาส์ทั่วไป) ให้กลายเป็น **คอนโทรลเลอร์ตัดต่อสำหรับ Adobe Premiere Pro**  
พร้อม GUI แสดงสถานะ, เสียง Beep แจ้งเตือน, และระบบเปิด–ปิดอัตโนมัติผ่าน Scroll Click 🎬

---

## ✨ คุณสมบัติหลัก
- 🟢 ทำงานเฉพาะเมื่ออยู่ใน **Adobe Premiere Pro**
- ✂️ ปุ่มข้างซ้าย = **Trim (Ctrl + K)**
- 🧹 ปุ่มข้างขวา = **Ripple Delete (Shift + Delete)**
- 🔄 ปุ่ม Scroll Click (กลาง) = **Toggle เปิด/ปิดระบบ**
- 🔊 มีเสียง Beep ทุกครั้งที่กด
- 🪟 มี GUI แสดงสถานะ Enabled / Disabled + ปุ่มเปิดปิดเสียง
- ❌ ปิดสคริปต์ได้ทันทีด้วย **Ctrl + Alt + Q**

---

## ⚙️ การติดตั้ง

1. ติดตั้ง [AutoHotkey v2](https://www.autohotkey.com/download/).
2. ดาวน์โหลดไฟล์ `PremiereController.ahk` จากโปรเจกต์นี้  
3. ดับเบิลคลิกไฟล์เพื่อรัน — จะมี GUI ปรากฏมุมขวาล่างของหน้าจอ

---

## 🧭 วิธีใช้งาน

| การกระทำ | คำสั่งที่ทำงาน | คำอธิบาย |
|-----------|----------------|-----------|
| 🖱️ ปุ่มข้างซ้าย | `Ctrl + K` | ตัดคลิป (Trim) |
| 🖱️ ปุ่มข้างขวา | `Shift + Delete` | ลบพร้อมขยับช่องว่าง (Ripple Delete) |
| 🔘 Scroll Click (กลาง) | Toggle เปิด/ปิดระบบ | เปิดหรือปิดการทำงานทั้งหมด |
| 🔊 ปุ่ม `Sound: ON/OFF` | เปิด/ปิดเสียง Beep | ควบคุมเสียงขณะกด Trim / Ripple |
| 🪟 ปุ่ม `Enabled/Disabled` | เปิด/ปิดระบบผ่าน GUI | ใช้แทน Scroll Click ได้ |
| 🎹 `Ctrl + Alt + Q` | ปิดสคริปต์ทั้งหมด | ออกจากระบบ Hotkey-Mouse |

---

## 🪟 หน้าตา GUI
- อยู่มุมขวาล่างของหน้าจอ
- สีพื้นเทาเข้ม (`#232323`)
- ปุ่มสีเขียว/แดงแสดงสถานะ Enabled / Disabled
- ปุ่มเปิด–ปิดเสียง Beep (Sound: ON/OFF)
- แสดง Tooltip แจ้งเตือนเมื่อสลับโหมด

---

## 🧩 โครงสร้างโปรเจกต์
```bash
Hotkey-Mouse/
│
├── PremiereController.ahk   # สคริปต์หลัก (AutoHotkey)
├── README.md                # คู่มือการใช้งาน
└── assets/                  # (ถ้ามี icon หรือเสียงเพิ่มเติม)
