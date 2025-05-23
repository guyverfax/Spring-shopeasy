# 🛒 Shopeasy - Spring Boot 購物網站專案

# 📌 專案目的
本專案為一個以 Spring Boot 為核心架構，結合 Thymeleaf 前端模板引擎所開發的線上購物網站，主要目的是：

🧑‍💻 學習與實作 Spring Boot 分層架構（Controller / Service / Repository / Model）<br>

🛠️ 整合 Thymeleaf，實作前後端互動與表單處理<br>

🗂️ 實作完整資料表設計（user, catalog, product, cart, orders, order_item）<br>

🔐 實作用戶登入註冊與兩步驟驗證（Google Authenticator TOTP）<br>

🛍️ 支援購物車、訂單建立與明細紀錄<br>

📊 實作報表視覺化（Chart.js + jQuery）<br>

🧑‍💼 前台 / 後台管理分離設計（一般用戶與管理員功能區分）<br>

🖼️ 圖片上傳與圖片預覽功能整合<br>

# 🛍️ Shopeasy 專案介紹
Shopeasy 是一個基於 Spring Boot + Thymeleaf 的線上購物網站，支援會員註冊、登入、商品管理、購物車、訂單管理、二階段驗證與報表統計等功能。

# 🧱 系統架構
本專案採用典型的 Spring Boot 三層架構（Controller、Service、Repository）與 Thymeleaf 前端模板整合，並搭配以下技術：
![image](images/技術架構總覽表.jpg)

## 📁 專案分層架構
src/main/java/com/example/shopeasy/ <br>
├── config/           # 配置類（如 WebConfig） <br>
├── controller/       # 控制層 - 處理 HTTP 請求與頁面導向 <br>
├── dto/              # DTO 層 - 資料傳輸物件（如 CartDTO）<br>
├── model/            # 資料模型 - 對應資料庫的 Entity <br>
├── repository/       # 資料存取層 - JPA Repository <br>
├── service/          # 服務層 - 商業邏輯處理 <br>
└── util/             # 工具類 - 如 Google Auth 驗證工具 <br>

src/main/resources/ <br>
├── static/           # 靜態資源（CSS、JS、圖片）<br>
├── templates/        # Thymeleaf 模板 HTML <br>
└── application.properties  # 系統設定檔 <br>

# 🔐 主要功能模組
會員管理:	註冊、登入、登出、二階段驗證、個人資訊修改 <br>
商品管理:	商品新增、編輯、上傳圖片、前後台瀏覽 <br>
購物車功能:	加入/移除商品、結帳功能 <br>
訂單模組:	建立訂單、訂單明細查詢 <br>
管理後台:	管理會員、訂單、商品、分類、報表、分析圖表 <br>

# 🗃 資料庫設計（MySQL）
![image](images/資料庫設計.png)

# 🔄 程式流程設計（Flow Design）
以下將以幾個核心功能為例，說明前後端的互動流程與設計邏輯。<br>
## 🔐 使用者註冊與登入流程
[使用者] → (填寫表單) → /auth/register <br>
               ↓<br>
         [UserController]<br>
               ↓<br>
      [UserService.register()]<br>
               ↓<br>
        驗證帳號、密碼格式!<br>
              ↓<br>
     存入資料庫 (UserRepository)<br>
               ↓<br>
    回傳註冊成功 → 導向登入頁面<br>

[使用者] → /auth/login.html → 提交帳密登入 <br>
               ↓<br>
       若帳密正確 → 判斷是否設定二階段驗證<br>
               ↓<br>
   若有設定：導向 /auth/verify-totp.html → 輸入驗證碼<br>
               ↓<br>
      [TOTPUtil.validateCode()] → <br>
      成功 → 登入成功<br>

## 🛒 加入購物車流程
[使用者] → 點選「加入購物車」<br>
               ↓<br>
       /cart/add?productId=XXX<br>
               ↓<br>
         [CartController.addToCart()]<br>
               ↓<br>
        呼叫 CartService 將商品加入購物車<br>
               ↓<br>
      返回購物車頁面（cart.html）顯示商品列表<br>

## 🧾 建立訂單流程
[使用者] → 點擊「結帳」按鈕<br>
               ↓<br>
           /order/checkout<br>
               ↓<br>
        [OrderController.checkout()]<br>
               ↓<br>
  → OrderService.createOrder(user, cart)<br>
       ↓                      ↓<br>
   檢查庫存             建立 Order 與 OrderItem 實體<br>
       ↓                      ↓<br>
    扣除庫存          儲存訂單至資料庫 (OrderRepository)<br>
               ↓<br>
           回傳訂單成功頁面<br>

## 📦 管理後台 - 商品新增流程
[Admin] → adminproduct.html → 上傳商品資料 + 圖片<br>
               ↓<br>
        [AdminProductController.addProduct()]<br>
               ↓<br>
     呼叫 ProductService 儲存圖片與商品資訊<br>
               ↓<br>
        → <br>儲存圖片至資料夾<br>
        → <br>存入 product 資料表<br>
               ↓<br>
        回傳成功 → 更新商品列表<br>

# 🖥️ 使用介面介紹-前台
## 🏠前台主頁
![My Image](images/001-首頁.jpg)

## 📝前台主頁-註冊
![My Image](images/001-前台-註冊01.jpg)
![My Image](images/001-前台-註冊02.jpg)
![My Image](images/001-前台-註冊03.jpg)
![My Image](images/001-前台-註冊04.jpg)
![My Image](images/001-前台-註冊05.jpg)
![My Image](images/001-前台-註冊06.jpg)

## 📝前台主頁-登入
![My Image](images/001-前台-登入01.jpg)
![My Image](images/001-前台-登入02.jpg)

## 📝前台主頁-商品列表
![My Image](images/001-前台-商品列表01.jpg)

## 📝前台主頁-購物說明
![My Image](images/001-前台-購物01.jpg)
![My Image](images/001-前台-購物02.jpg)
![My Image](images/001-前台-購物03.jpg)
![My Image](images/001-前台-購物04.jpg)
![My Image](images/001-前台-購物05.jpg)
![My Image](images/001-前台-購物06.jpg)
![My Image](images/001-前台-購物07.jpg)
![My Image](images/001-前台-購物08.jpg)
![My Image](images/001-前台-購物09.jpg)
![My Image](images/001-前台-購物10.jpg)

## 📝前台主頁-個人訂單管理
![My Image](images/001-前台-訂單管理01.jpg)
![My Image](images/001-前台-訂單管理02.jpg)

## 🏠後台主頁
![My Image](images/002-後台-登入01.jpg)
![My Image](images/002-後台-管理功能01.jpg)

## 📦後台主頁-目錄管理
![My Image](images/002-後台-目錄管理01.jpg)

## 📦後台主頁-產品管理
![My Image](images/002-後台-產品管理01.jpg)

## 📦後台主頁-使用者管理
![My Image](images/002-後台-使用者管理01.jpg)

## 📦後台主頁-訂單管理
![My Image](images/002-後台-訂單管理01.jpg)

## 📦後台主頁-數據報表
![My Image](images/002-後台-數據報表01.jpg)

## 📦後台主頁-分析圖表
![My Image](images/002-後台-分析圖表01.jpg)

# 以上是專案說明
