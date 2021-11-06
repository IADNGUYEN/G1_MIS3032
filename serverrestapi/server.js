const express = require("express")
const app = express()
const port = 3000

app.get("/hello", (req, res) => {
    console.log('/hello is calling')
    res.send({
        "Message" : "3"
    })
})

app.get("/aosomi", (req, res) => {
    console.log('/aosomi is calling')
    const timeElapsed = Date.now();
    const today = new Date(timeElapsed);
    const arr = [
        {
            pid: 1,
            cid: 1,
            amount: 10,
            pname: "Dual Match Cattivo",
            description: "-Size M: dưới 52, Cao dưới 1m60 \n-Size L: dưới 57 - 1m70 \n-Size XL:dưới m75 60kg \n🥝 🍓 Ngập tràn mẫu mới 🍓 🥝 \n🍄 🍄 Nhận THU HỘ ( ship COD ) toàn quốc \n🌸 Hình Shop chụp, đảm bảo mặc lên form đẹp như ảnh \n🌸 Vải đẹp, không co rút , mềm mịn, mặc siêu mát ",
            image: "assets/images/tshirt_pink.png",
            status: true,
            dateCreate: today.toISOString(),
            size: "M",
            price: 99,
        }, 
        {
            pid: 2,
            cid: 1,
            amount: 10,
            pname: "Walenty",
            description: "-Size M: dưới 52, Cao dưới 1m60 \n-Size L: dưới 57 - 1m70 \n-Size XL:dưới m75 60kg \n🥝 🍓 Ngập tràn mẫu mới 🍓 🥝 \n🍄 🍄 Nhận THU HỘ ( ship COD ) toàn quốc \n🌸 Hình Shop chụp, đảm bảo mặc lên form đẹp như ảnh \n🌸 Vải đẹp, không co rút , mềm mịn, mặc siêu mát ",
            image: "assets/images/tshirt_Walenty.jpg",
            dateCreate: today.toISOString(),
            size: "M",
            price: 99,
        },
        {
            pid: 3,
            cid: 1,
            amount: 10,
            pname: "Motown Funk",
            description: "-Size M: dưới 52, Cao dưới 1m60 \n-Size L: dưới 57 - 1m70 \n-Size XL:dưới m75 60kg \n🥝 🍓 Ngập tràn mẫu mới 🍓 🥝 \n🍄 🍄 Nhận THU HỘ ( ship COD ) toàn quốc \n🌸 Hình Shop chụp, đảm bảo mặc lên form đẹp như ảnh \n🌸 Vải đẹp, không co rút , mềm mịn, mặc siêu mát ",
            image: "assets/images/tshirt_fun.jpg",
            dateCreate: today.toISOString(),
            size: "M",
            price: 99,
        },
        {
            pid: 4,
            cid: 1,
            amount: 10,
            pname: "Street Samvrai",
            description: "-Size M: dưới 52, Cao dưới 1m60 \n-Size L: dưới 57 - 1m70 \n-Size XL:dưới m75 60kg \n🥝 🍓 Ngập tràn mẫu mới 🍓 🥝 \n🍄 🍄 Nhận THU HỘ ( ship COD ) toàn quốc \n🌸 Hình Shop chụp, đảm bảo mặc lên form đẹp như ảnh \n🌸 Vải đẹp, không co rút , mềm mịn, mặc siêu mát ",
            image: "assets/images/tshirt_black.jpg",
            dateCreate: today.toISOString(),
            size: "M",
            price: 99,
        },
        {
            pid: 5,
            cid: 1,
            amount: 10,
            pname: "Summer Experimen",
            description: "-Size M: dưới 52, Cao dưới 1m60 \n-Size L: dưới 57 - 1m70 \n-Size XL:dưới m75 60kg \n🥝 🍓 Ngập tràn mẫu mới 🍓 🥝 \n🍄 🍄 Nhận THU HỘ ( ship COD ) toàn quốc \n🌸 Hình Shop chụp, đảm bảo mặc lên form đẹp như ảnh \n🌸 Vải đẹp, không co rút , mềm mịn, mặc siêu mát ",
            image: "assets/images/tshirt_bull.jpg",
            dateCreate: today.toISOString(),
            size: "M",
            price: 99,
        },
        {
            pid: 6,
            cid: 2,
            amount: 10,
            pname: "CROPTOP JUMPER",
            description: "- Chất liệu tuyết mưa dày dặn lên phom tốt, không nhăn, nhàu.\n- Cam kết giặt thoải mái, không bai xù \n- Thông Tin Size: S  -  M  -  L cho người từ 40 - 60kg \nBảng size chart:\n+ Size S: ngực dưới 85\n+ Size M: ngực dưới 90\n+ Size L: ngực dưới 94",
            image: "assets/images/modernshirt_CROPTOPJUMPER.jpg",
            status: true,
            dateCreate: today.toISOString(),
            size: "M",
            price: 169,
        }, 
        {
            pid: 7,
            cid: 2,
            amount: 10,
            pname: "GINGHAM SHIRT",
            description: "- Chất liệu tuyết mưa dày dặn lên phom tốt, không nhăn, nhàu.\n- Cam kết giặt thoải mái, không bai xù \n- Thông Tin Size: S  -  M  -  L cho người từ 40 - 60kg \nBảng size chart:\n+ Size S: ngực dưới 85\n+ Size M: ngực dưới 90\n+ Size L: ngực dưới 94",
            image: "assets/images/modernshirt_GINGHAMSHIRTS.jpg",
            dateCreate: today.toISOString(),
            size: "M",
            price: 169,
        },
        {
            pid: 8,
            cid: 2,
            amount: 10,
            pname: "HANNI",
            description: "- Chất liệu tuyết mưa dày dặn lên phom tốt, không nhăn, nhàu.\n- Cam kết giặt thoải mái, không bai xù \n- Thông Tin Size: S  -  M  -  L cho người từ 40 - 60kg \nBảng size chart:\n+ Size S: ngực dưới 85\n+ Size M: ngực dưới 90\n+ Size L: ngực dưới 94",
            image: "assets/images/modernshirt_HANNI.jpg",
            dateCreate: today.toISOString(),
            size: "M",
            price: 169,
        },
        {
            pid: 9,
            cid: 2,
            amount: 10,
            pname: "SAIRAN",
            description: "- Chất liệu tuyết mưa dày dặn lên phom tốt, không nhăn, nhàu.\n- Cam kết giặt thoải mái, không bai xù \n- Thông Tin Size: S  -  M  -  L cho người từ 40 - 60kg \nBảng size chart:\n+ Size S: ngực dưới 85\n+ Size M: ngực dưới 90\n+ Size L: ngực dưới 94",
            image: "assets/images/modernshirt_SAIRAN.jpg",
            dateCreate: today.toISOString(),
            size: "M",
            price: 169,
        },
        {
            pid: 10,
            cid: 2,
            amount: 10,
            pname: "MONADI",
            description: "- Chất liệu tuyết mưa dày dặn lên phom tốt, không nhăn, nhàu.\n- Cam kết giặt thoải mái, không bai xù \n- Thông Tin Size: S  -  M  -  L cho người từ 40 - 60kg \nBảng size chart:\n+ Size S: ngực dưới 85\n+ Size M: ngực dưới 90\n+ Size L: ngực dưới 94",
            image: "assets/images/modernshirt_MONADI.jpg",
            dateCreate: today.toISOString(),
            size: "M",
            price: 300,
        },
        {
            pid: 11,
            cid: 3,
            amount: 10,
            pname: "Caro",
            description: "- Chất Liệu: Vải Vitex cao cấp\n- Kiểu dáng sang trong lịch sự hot trend, với đường may chắc chắn tỉ mỉ se làm hài lòng khách hàng khó tính nhất\n- Bảng Size:\n+ Size S: 40-45kg, eo < 68, mông <85\n+ Szie  M: 46- 50kg, eo < 72, mông 86-90\n+Size L:51- 55kg, eo 72-75, mông 90-100\n+Size XL:56- 60kg, eo 75-80, mông 100-105",
            image: "assets/images/dress_Caro.jpg",
            status: true,
            dateCreate: today.toISOString(),
            size: "M",
            price: 259,
        }, 
        {
            pid: 12,
            cid: 3,
            amount: 10,
            pname: "Caro 2 túi",
            description: "- Chất Liệu: Vải Vitex cao cấp\n- Kiểu dáng sang trong lịch sự hot trend, với đường may chắc chắn tỉ mỉ se làm hài lòng khách hàng khó tính nhất\n- Bảng Size:\n+ Size S: 40-45kg, eo < 68, mông <85\n+ Szie  M: 46- 50kg, eo < 72, mông 86-90\n+Size L:51- 55kg, eo 72-75, mông 90-100\n+Size XL:56- 60kg, eo 75-80, mông 100-105",
            image: "assets/images/dress_Caro2Tui.jpg",
            dateCreate: today.toISOString(),
            size: "M",
            price: 259,
        },
        {
            pid: 13,
            cid: 3,
            amount: 10,
            pname: "Xếp li",
            description: "- Chất Liệu: Vải Vitex cao cấp\n- Kiểu dáng sang trong lịch sự hot trend, với đường may chắc chắn tỉ mỉ se làm hài lòng khách hàng khó tính nhất\n- Bảng Size:\n+ Size S: 40-45kg, eo < 68, mông <85\n+ Szie  M: 46- 50kg, eo < 72, mông 86-90\n+Size L:51- 55kg, eo 72-75, mông 90-100\n+Size XL:56- 60kg, eo 75-80, mông 100-105",
            image: "assets/images/dress_XepLi.jpg",
            dateCreate: today.toISOString(),
            size: "M",
            price: 259,
        },
        {
            pid: 14,
            cid: 3,
            amount: 10,
            pname: "Xếp li dài",
            description: "- Chất Liệu: Vải Vitex cao cấp\n- Kiểu dáng sang trong lịch sự hot trend, với đường may chắc chắn tỉ mỉ se làm hài lòng khách hàng khó tính nhất\n- Bảng Size:\n+ Size S: 40-45kg, eo < 68, mông <85\n+ Szie  M: 46- 50kg, eo < 72, mông 86-90\n+Size L:51- 55kg, eo 72-75, mông 90-100\n+Size XL:56- 60kg, eo 75-80, mông 100-105",
            image: "assets/images/dress_XepLiDai.jpg",
            dateCreate: today.toISOString(),
            size: "M",
            price: 259,
        },
        {
            pid: 15,
            cid: 3,
            amount: 10,
            pname: "Tutu",
            description: "- Chất Liệu: Vải Vitex cao cấp\n- Kiểu dáng sang trong lịch sự hot trend, với đường may chắc chắn tỉ mỉ se làm hài lòng khách hàng khó tính nhất\n- Bảng Size:\n+ Size S: 40-45kg, eo < 68, mông <85\n+ Szie  M: 46- 50kg, eo < 72, mông 86-90\n+Size L:51- 55kg, eo 72-75, mông 90-100\n+Size XL:56- 60kg, eo 75-80, mông 100-105",
            image: "assets/images/dress_Tutu.jpg",
            dateCreate: today.toISOString(),
            size: "M",
            price: 259,
        },
        {
            pid: 16,
            cid: 4,
            amount: 10,
            pname: "Skinny",
            description: "🔅 TẤT CẢ HÌNH ẢNH ĐỀU DO SHOP TỰ CHỤP\n🔅 HÀNG CÓ SẴN TẠI SHOP\nBẢNG SIZE: NGOÀI CÂN NẶNG CÒN PHỤ THUỘC VÀO SỐ ĐO VÒNG 2,3\nSIZE 26: 43-48KG\nSIZE 27: 48-53KG\nSIZE 28: 53-56KG\nSIZE 29: 56-60KG ",
            image: "assets/images/trousers_Skinny.jpg",
            status: true,
            dateCreate: today.toISOString(),
            size: "M",
            price: 300,
        }, 
        {
            pid: 17,
            cid: 4,
            amount: 10,
            pname: "Loe ngố 9 tấc",
            description: "🔅 TẤT CẢ HÌNH ẢNH ĐỀU DO SHOP TỰ CHỤP\n🔅 HÀNG CÓ SẴN TẠI SHOP\nBẢNG SIZE: NGOÀI CÂN NẶNG CÒN PHỤ THUỘC VÀO SỐ ĐO VÒNG 2,3\nSIZE 26: 43-48KG\nSIZE 27: 48-53KG\nSIZE 28: 53-56KG\nSIZE 29: 56-60KG ",
            image: "assets/images/trousers_Loe ngố 9 tấc.jpg",
            dateCreate: today.toISOString(),
            size: "M",
            price: 300,
        },
        {
            pid: 18,
            cid: 4,
            amount: 10,
            pname: "Boy suông decup",
            description: "🔅 TẤT CẢ HÌNH ẢNH ĐỀU DO SHOP TỰ CHỤP\n🔅 HÀNG CÓ SẴN TẠI SHOP\nBẢNG SIZE: NGOÀI CÂN NẶNG CÒN PHỤ THUỘC VÀO SỐ ĐO VÒNG 2,3\nSIZE 26: 43-48KG\nSIZE 27: 48-53KG\nSIZE 28: 53-56KG\nSIZE 29: 56-60KG ",
            image: "assets/images/trousers_Boy suông decup.jpg",
            dateCreate: today.toISOString(),
            size: "M",
            price: 300,
        },
        {
            pid: 19,
            cid: 4,
            amount: 10,
            pname: "Boy túi vuông",
            description: "🔅 TẤT CẢ HÌNH ẢNH ĐỀU DO SHOP TỰ CHỤP\n🔅 HÀNG CÓ SẴN TẠI SHOP\nBẢNG SIZE: NGOÀI CÂN NẶNG CÒN PHỤ THUỘC VÀO SỐ ĐO VÒNG 2,3\nSIZE 26: 43-48KG\nSIZE 27: 48-53KG\nSIZE 28: 53-56KG\nSIZE 29: 56-60KG ",
            image: "assets/images/trousers_Boy suông túi vuông.jpg",
            dateCreate: today.toISOString(),
            size: "M",
            price: 300,
        },
        {
            pid: 20,
            cid: 4,
            amount: 10,
            pname: "Skinny trơn",
            description: "🔅 TẤT CẢ HÌNH ẢNH ĐỀU DO SHOP TỰ CHỤP\n🔅 HÀNG CÓ SẴN TẠI SHOP\nBẢNG SIZE: NGOÀI CÂN NẶNG CÒN PHỤ THUỘC VÀO SỐ ĐO VÒNG 2,3\nSIZE 26: 43-48KG\nSIZE 27: 48-53KG\nSIZE 28: 53-56KG\nSIZE 29: 56-60KG ",
            image: "assets/images/trousers_Skinny trơn.jpg",
            dateCreate: today.toISOString(),
            size: "M",
            price: 300,
        }

    
    ]
    res.send({arr})
})
// ----
app.get("/tshirt", (req, res) => {
    console.log('/tshirt is calling')
    const timeElapsed = Date.now();
    const today = new Date(timeElapsed);
    const tshirtList = [
        {
            pid: 1,
            cid: 1,
            amount: 10,
            pname: "Dual Match Cattivo",
            description: "-Size M: dưới 52, Cao dưới 1m60 \n-Size L: dưới 57 - 1m70 \n-Size XL:dưới m75 60kg \n🥝 🍓 Ngập tràn mẫu mới 🍓 🥝 \n🍄 🍄 Nhận THU HỘ ( ship COD ) toàn quốc \n🌸 Hình Shop chụp, đảm bảo mặc lên form đẹp như ảnh \n🌸 Vải đẹp, không co rút , mềm mịn, mặc siêu mát ",
            image: "assets/images/tshirt_pink.png",
            status: true,
            dateCreate: today.toISOString(),
            size: "M",
            price: 99,
        }, 
        {
            pid: 2,
            cid: 1,
            amount: 10,
            pname: "Walenty",
            description: "-Size M: dưới 52, Cao dưới 1m60 \n-Size L: dưới 57 - 1m70 \n-Size XL:dưới m75 60kg \n🥝 🍓 Ngập tràn mẫu mới 🍓 🥝 \n🍄 🍄 Nhận THU HỘ ( ship COD ) toàn quốc \n🌸 Hình Shop chụp, đảm bảo mặc lên form đẹp như ảnh \n🌸 Vải đẹp, không co rút , mềm mịn, mặc siêu mát ",
            image: "assets/images/tshirt_Walenty.jpg",
            dateCreate: today.toISOString(),
            size: "M",
            price: 99,
        },
        {
            pid: 3,
            cid: 1,
            amount: 10,
            pname: "Motown Funk",
            description: "-Size M: dưới 52, Cao dưới 1m60 \n-Size L: dưới 57 - 1m70 \n-Size XL:dưới m75 60kg \n🥝 🍓 Ngập tràn mẫu mới 🍓 🥝 \n🍄 🍄 Nhận THU HỘ ( ship COD ) toàn quốc \n🌸 Hình Shop chụp, đảm bảo mặc lên form đẹp như ảnh \n🌸 Vải đẹp, không co rút , mềm mịn, mặc siêu mát ",
            image: "assets/images/tshirt_fun.jpg",
            dateCreate: today.toISOString(),
            size: "M",
            price: 99,
        },
        {
            pid: 4,
            cid: 1,
            amount: 10,
            pname: "Street Samvrai",
            description: "-Size M: dưới 52, Cao dưới 1m60 \n-Size L: dưới 57 - 1m70 \n-Size XL:dưới m75 60kg \n🥝 🍓 Ngập tràn mẫu mới 🍓 🥝 \n🍄 🍄 Nhận THU HỘ ( ship COD ) toàn quốc \n🌸 Hình Shop chụp, đảm bảo mặc lên form đẹp như ảnh \n🌸 Vải đẹp, không co rút , mềm mịn, mặc siêu mát ",
            image: "assets/images/tshirt_black.jpg",
            dateCreate: today.toISOString(),
            size: "M",
            price: 99,
        },
        {
            pid: 5,
            cid: 1,
            amount: 10,
            pname: "Summer Experimen",
            description: "-Size M: dưới 52, Cao dưới 1m60 \n-Size L: dưới 57 - 1m70 \n-Size XL:dưới m75 60kg \n🥝 🍓 Ngập tràn mẫu mới 🍓 🥝 \n🍄 🍄 Nhận THU HỘ ( ship COD ) toàn quốc \n🌸 Hình Shop chụp, đảm bảo mặc lên form đẹp như ảnh \n🌸 Vải đẹp, không co rút , mềm mịn, mặc siêu mát ",
            image: "assets/images/tshirt_bull.jpg",
            dateCreate: today.toISOString(),
            size: "M",
            price: 99,
        }
    
    ]
    res.send({tshirtList})
})


app.get("/mordenshirt", (req, res) => {
    console.log('/mordenshirt is calling')
    const timeElapsed = Date.now();
    const today = new Date(timeElapsed);
    const mordenShirtList = [
        {
            pid: 6,
            cid: 2,
            amount: 10,
            pname: "CROPTOP JUMPER",
            description: "- Chất liệu tuyết mưa dày dặn lên phom tốt, không nhăn, nhàu.\n- Cam kết giặt thoải mái, không bai xù \n- Thông Tin Size: S  -  M  -  L cho người từ 40 - 60kg \nBảng size chart:\n+ Size S: ngực dưới 85\n+ Size M: ngực dưới 90\n+ Size L: ngực dưới 94",
            image: "assets/images/modernshirt_CROPTOPJUMPER.jpg",
            status: true,
            dateCreate: today.toISOString(),
            size: "M",
            price: 169,
        }, 
        {
            pid: 7,
            cid: 2,
            amount: 10,
            pname: "GINGHAM SHIRT",
            description: "- Chất liệu tuyết mưa dày dặn lên phom tốt, không nhăn, nhàu.\n- Cam kết giặt thoải mái, không bai xù \n- Thông Tin Size: S  -  M  -  L cho người từ 40 - 60kg \nBảng size chart:\n+ Size S: ngực dưới 85\n+ Size M: ngực dưới 90\n+ Size L: ngực dưới 94",
            image: "assets/images/modernshirt_GINGHAMSHIRTS.jpg",
            dateCreate: today.toISOString(),
            size: "M",
            price: 169,
        },
        {
            pid: 8,
            cid: 2,
            amount: 10,
            pname: "HANNI",
            description: "- Chất liệu tuyết mưa dày dặn lên phom tốt, không nhăn, nhàu.\n- Cam kết giặt thoải mái, không bai xù \n- Thông Tin Size: S  -  M  -  L cho người từ 40 - 60kg \nBảng size chart:\n+ Size S: ngực dưới 85\n+ Size M: ngực dưới 90\n+ Size L: ngực dưới 94",
            image: "assets/images/modernshirt_HANNI.jpg",
            dateCreate: today.toISOString(),
            size: "M",
            price: 169,
        },
        {
            pid: 9,
            cid: 2,
            amount: 10,
            pname: "SAIRAN",
            description: "- Chất liệu tuyết mưa dày dặn lên phom tốt, không nhăn, nhàu.\n- Cam kết giặt thoải mái, không bai xù \n- Thông Tin Size: S  -  M  -  L cho người từ 40 - 60kg \nBảng size chart:\n+ Size S: ngực dưới 85\n+ Size M: ngực dưới 90\n+ Size L: ngực dưới 94",
            image: "assets/images/modernshirt_SAIRAN.jpg",
            dateCreate: today.toISOString(),
            size: "M",
            price: 169,
        },
        {
            pid: 10,
            cid: 2,
            amount: 10,
            pname: "MONADI",
            description: "- Chất liệu tuyết mưa dày dặn lên phom tốt, không nhăn, nhàu.\n- Cam kết giặt thoải mái, không bai xù \n- Thông Tin Size: S  -  M  -  L cho người từ 40 - 60kg \nBảng size chart:\n+ Size S: ngực dưới 85\n+ Size M: ngực dưới 90\n+ Size L: ngực dưới 94",
            image: "assets/images/modernshirt_MONADI.jpg",
            dateCreate: today.toISOString(),
            size: "M",
            price: 300,
        }
    
    ]
    res.send({mordenShirtList})
})

app.get("/dress", (req, res) => {
    console.log('/dress is calling')
    const timeElapsed = Date.now();
    const today = new Date(timeElapsed);
    const dressList = [
        {
            pid: 11,
            cid: 3,
            amount: 10,
            pname: "Caro",
            description: "- Chất Liệu: Vải Vitex cao cấp\n- Kiểu dáng sang trong lịch sự hot trend, với đường may chắc chắn tỉ mỉ se làm hài lòng khách hàng khó tính nhất\n- Bảng Size:\n+ Size S: 40-45kg, eo < 68, mông <85\n+ Szie  M: 46- 50kg, eo < 72, mông 86-90\n+Size L:51- 55kg, eo 72-75, mông 90-100\n+Size XL:56- 60kg, eo 75-80, mông 100-105",
            image: "assets/images/dress_Caro.jpg",
            status: true,
            dateCreate: today.toISOString(),
            size: "M",
            price: 259,
        }, 
        {
            pid: 12,
            cid: 3,
            amount: 10,
            pname: "Caro 2 túi",
            description: "- Chất Liệu: Vải Vitex cao cấp\n- Kiểu dáng sang trong lịch sự hot trend, với đường may chắc chắn tỉ mỉ se làm hài lòng khách hàng khó tính nhất\n- Bảng Size:\n+ Size S: 40-45kg, eo < 68, mông <85\n+ Szie  M: 46- 50kg, eo < 72, mông 86-90\n+Size L:51- 55kg, eo 72-75, mông 90-100\n+Size XL:56- 60kg, eo 75-80, mông 100-105",
            image: "assets/images/dress_Caro2Tui.jpg",
            dateCreate: today.toISOString(),
            size: "M",
            price: 259,
        },
        {
            pid: 13,
            cid: 3,
            amount: 10,
            pname: "Xếp li",
            description: "- Chất Liệu: Vải Vitex cao cấp\n- Kiểu dáng sang trong lịch sự hot trend, với đường may chắc chắn tỉ mỉ se làm hài lòng khách hàng khó tính nhất\n- Bảng Size:\n+ Size S: 40-45kg, eo < 68, mông <85\n+ Szie  M: 46- 50kg, eo < 72, mông 86-90\n+Size L:51- 55kg, eo 72-75, mông 90-100\n+Size XL:56- 60kg, eo 75-80, mông 100-105",
            image: "assets/images/dress_XepLi.jpg",
            dateCreate: today.toISOString(),
            size: "M",
            price: 259,
        },
        {
            pid: 14,
            cid: 3,
            amount: 10,
            pname: "Xếp li dài",
            description: "- Chất Liệu: Vải Vitex cao cấp\n- Kiểu dáng sang trong lịch sự hot trend, với đường may chắc chắn tỉ mỉ se làm hài lòng khách hàng khó tính nhất\n- Bảng Size:\n+ Size S: 40-45kg, eo < 68, mông <85\n+ Szie  M: 46- 50kg, eo < 72, mông 86-90\n+Size L:51- 55kg, eo 72-75, mông 90-100\n+Size XL:56- 60kg, eo 75-80, mông 100-105",
            image: "assets/images/dress_XepLiDai.jpg",
            dateCreate: today.toISOString(),
            size: "M",
            price: 259,
        },
        {
            pid: 15,
            cid: 3,
            amount: 10,
            pname: "Tutu",
            description: "- Chất Liệu: Vải Vitex cao cấp\n- Kiểu dáng sang trong lịch sự hot trend, với đường may chắc chắn tỉ mỉ se làm hài lòng khách hàng khó tính nhất\n- Bảng Size:\n+ Size S: 40-45kg, eo < 68, mông <85\n+ Szie  M: 46- 50kg, eo < 72, mông 86-90\n+Size L:51- 55kg, eo 72-75, mông 90-100\n+Size XL:56- 60kg, eo 75-80, mông 100-105",
            image: "assets/images/dress_Tutu.jpg",
            dateCreate: today.toISOString(),
            size: "M",
            price: 259,
        }
    
    ]
    res.send({dressList})
})

app.get("/trousers", (req, res) => {
    console.log('/trousers is calling')
    const timeElapsed = Date.now();
    const today = new Date(timeElapsed);
    const trousersList = [
        {
            pid: 16,
            cid: 4,
            amount: 10,
            pname: "Skinny",
            description: "🔅 TẤT CẢ HÌNH ẢNH ĐỀU DO SHOP TỰ CHỤP\n🔅 HÀNG CÓ SẴN TẠI SHOP\nBẢNG SIZE: NGOÀI CÂN NẶNG CÒN PHỤ THUỘC VÀO SỐ ĐO VÒNG 2,3\nSIZE 26: 43-48KG\nSIZE 27: 48-53KG\nSIZE 28: 53-56KG\nSIZE 29: 56-60KG ",
            image: "assets/images/trousers_Skinny.jpg",
            status: true,
            dateCreate: today.toISOString(),
            size: "M",
            price: 300,
        }, 
        {
            pid: 17,
            cid: 4,
            amount: 10,
            pname: "Loe ngố 9 tấc",
            description: "🔅 TẤT CẢ HÌNH ẢNH ĐỀU DO SHOP TỰ CHỤP\n🔅 HÀNG CÓ SẴN TẠI SHOP\nBẢNG SIZE: NGOÀI CÂN NẶNG CÒN PHỤ THUỘC VÀO SỐ ĐO VÒNG 2,3\nSIZE 26: 43-48KG\nSIZE 27: 48-53KG\nSIZE 28: 53-56KG\nSIZE 29: 56-60KG ",
            image: "assets/images/trousers_Loe ngố 9 tấc.jpg",
            dateCreate: today.toISOString(),
            size: "M",
            price: 300,
        },
        {
            pid: 18,
            cid: 4,
            amount: 10,
            pname: "Boy suông decup",
            description: "🔅 TẤT CẢ HÌNH ẢNH ĐỀU DO SHOP TỰ CHỤP\n🔅 HÀNG CÓ SẴN TẠI SHOP\nBẢNG SIZE: NGOÀI CÂN NẶNG CÒN PHỤ THUỘC VÀO SỐ ĐO VÒNG 2,3\nSIZE 26: 43-48KG\nSIZE 27: 48-53KG\nSIZE 28: 53-56KG\nSIZE 29: 56-60KG ",
            image: "assets/images/trousers_Boy suông decup.jpg",
            dateCreate: today.toISOString(),
            size: "M",
            price: 300,
        },
        {
            pid: 19,
            cid: 4,
            amount: 10,
            pname: "Boy túi vuông",
            description: "🔅 TẤT CẢ HÌNH ẢNH ĐỀU DO SHOP TỰ CHỤP\n🔅 HÀNG CÓ SẴN TẠI SHOP\nBẢNG SIZE: NGOÀI CÂN NẶNG CÒN PHỤ THUỘC VÀO SỐ ĐO VÒNG 2,3\nSIZE 26: 43-48KG\nSIZE 27: 48-53KG\nSIZE 28: 53-56KG\nSIZE 29: 56-60KG ",
            image: "assets/images/trousers_Boy suông túi vuông.jpg",
            dateCreate: today.toISOString(),
            size: "M",
            price: 300,
        },
        {
            pid: 20,
            cid: 4,
            amount: 10,
            pname: "Skinny trơn",
            description: "🔅 TẤT CẢ HÌNH ẢNH ĐỀU DO SHOP TỰ CHỤP\n🔅 HÀNG CÓ SẴN TẠI SHOP\nBẢNG SIZE: NGOÀI CÂN NẶNG CÒN PHỤ THUỘC VÀO SỐ ĐO VÒNG 2,3\nSIZE 26: 43-48KG\nSIZE 27: 48-53KG\nSIZE 28: 53-56KG\nSIZE 29: 56-60KG ",
            image: "assets/images/trousers_Skinny trơn.jpg",
            dateCreate: today.toISOString(),
            size: "M",
            price: 300,
        }
    
    ]
    res.send({trousersList})
})

app.get("/profile", (req, res) => {
    console.log('/profile is calling')
    const Default = [
        {
            id: 1,
            name: "Ngọc Hoàng",
            gender: "Nam",
            birthday: "2000-11-10",
            phoneNumber: "0366184431",
            email: "hoang@gmail.com",
            address: "123 Ngũ Hành Sơn, Đà Nẵng"
        },
        {
            id: 2,
            name: "Phan Đài",
            gender: "Nữ",
            birthday: "2000-08-21",
            phoneNumber: "0924589634",
            email: "hello456@gmail.com",
            address: "456 Ngũ Hành Sơn, Đà Nẵng"
        },
    ]
    res.send({Default})
})

app.get("/profile/1", (req, res) => {
    console.log('/profile/1 is calling')
    const timeElapsed = Date.now();
    const today = new Date(timeElapsed);
    const arr = [
        {
            id: 1,
            name: "Mỹ Hạnh",
            gender: "Nữ",
            birthday: "2000-10-20",
            phoneNumber: "0968531584",
            email: "hello123@gmail.com",
            address: "123 Ngũ Hành Sơn, Đà Nẵng"
        }
    
    ]
    res.send({arr})
})

app.get("/profile/2", (req, res) => {
    console.log('/profile/2 is calling')
    const timeElapsed = Date.now();
    const today = new Date(timeElapsed);
    const arr = [
        {
            id: 2,
            name: "Đài",
            gender: "Nữ",
            birthday: "2000-08-18",
            phoneNumber: "0968531584",
            email: "my123@gmail.com",
            address: "456 Ngũ Hành Sơn, Đà Nẵng"
        }
    
    ]
    res.send({arr})
})

app.listen(port, () => {console.log(`Server is running at port ${port}`)})