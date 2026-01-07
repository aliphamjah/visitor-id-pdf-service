# Visitor PDF Card Generator

## 🚀 Project Overview

Visitor PDF Card Generator is a microservice-based Cloudflare Workers solution for dynamically generating visitor cards with integrated QR Code.

### Key Features
- ✅ Automatic visitor card generation
- 🔒 Full CORS support
- 📄 High-quality PDF output
- 🔍 Integrated QR Code
- 🌐 Cloudflare Workers compatible

## 📦 Technologies Used

- **Runtime**: Cloudflare Workers
- **PDF Generation**: `pdf-lib`
- **QR Code**: `qrcode-generator`
- **Language**: JavaScript (ES Module)

## 🛠 Prerequisites

- Node.js 16+
- Cloudflare Wrangler CLI
- Cloudflare Account

## 🔧 Installation
```bash
# Clone repository
git clone https://github.com/username/visitor-pdf-service.git

# Navigate to project directory
cd visitor-pdf-service

# Install dependencies
npm install

# Login to Cloudflare
npx wrangler login
```

## 🚀 Usage

### Local Development
```bash
# Run development server
npm run dev

# Build project
npm run build

# Deploy to Cloudflare
npm run deploy
```

### API Endpoint

**URL**: `/generate-visitor-card`

**Query Parameters**:
- `name`: Visitor name (required)
- `visitorNumber`: Visitor number (required)
- `company`: Company name (optional, default: "Company")
- `date`: Visit date (optional, default: current date)

**Example Request**:
```
https://your-worker.subdomain.workers.dev/generate-visitor-card?name=John%20Doe&visitorNumber=VIS-001&company=Google&date=20-12-2025
```

## 🔍 How It Works

1. Receive visitor parameters
2. Generate QR Code
3. Create PDF document
4. Design card with professional layout
5. Produce print-ready PDF file

## 🛡️ Security

- Input validation
- Filename sanitization
- CORS support
- Use of official libraries

## 📋 Configuration

### `wrangler.toml`
```toml
name = "visitor-pdf-service"
main = "index.js"
compatibility_date = "2024-01-01"
```

### `package.json`
Refer to dependencies and scripts in the repository

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/ABC`)
3. Commit changes (`git commit -m 'Add feature ABC'`)
4. Push to branch (`git push origin feature/ABC`)
5. Create Pull Request

## 📝 License

This project is licensed under [CHOOSE LICENSE, e.g., MIT License]

## 🐛 Issue Reporting

Please report issues in GitHub Issues.

## 📞 Contact

- Name: Alip Hamjah
- Email: aliphamjah@gmail.com
- LinkedIn: [\[LinkedIn Profile\]](https://www.linkedin.com/in/aliphamjah)
