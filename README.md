# Event Management App - Quick Start

## 🚀 Quick Setup (5 minutes)

### Backend Setup
```bash
cd backend
npm install
npm run dev
# Server runs on http://localhost:5000
```

### Frontend Setup (new terminal)
```bash
cd frontend
npm install
npm start
# App opens on http://localhost:3000
```

### MongoDB Setup
```bash
# Option 1: Local MongoDB (Windows)
mongod

# Option 2: MongoDB Atlas (Cloud)
# Update MONGODB_URI in backend/.env with your connection string
```

### Seed Sample Data
```bash
cd backend
node seed.js
```

---

## 📋 Features Checklist

- ✅ User Registration & Login
- ✅ JWT Token Authentication
- ✅ Event Browsing with Pagination
- ✅ Event Search (Text Search)
- ✅ Event Filtering (Date, Location, Category)
- ✅ Event Registration
- ✅ Registration Cancellation
- ✅ User Dashboard
- ✅ Upcoming Events
- ✅ Past Event History
- ✅ Responsive Design

---

## 🔑 Key Files

**Backend:**
- `server.js` - Express app entry point
- `routes/authRoutes.js` - Authentication endpoints
- `routes/eventRoutes.js` - Event management endpoints
- `routes/userRoutes.js` - User profile endpoints
- `models/User.js` - User schema
- `models/Event.js` - Event schema

**Frontend:**
- `src/App.js` - Main React component
- `src/context/AuthContext.js` - Authentication state
- `src/components/EventListing.js` - Events list and search
- `src/components/EventDetail.js` - Event details and registration
- `src/components/Dashboard.js` - User dashboard

---

## 🧪 Test Credentials

After running `seed.js`, register a new user:
- Email: test@example.com
- Password: test123456

---

## 📚 Documentation

- [SETUP.md](./SETUP.md) - Detailed setup guide
- [API.md](./API.md) - API endpoint documentation

---

## 🛠️ Troubleshooting

**Backend won't start:**
- Check if port 5000 is available
- Verify MongoDB connection string

**Frontend errors:**
- Clear node_modules and reinstall: `rm -rf node_modules && npm install`
- Check if backend is running on port 5000

---

## 📱 Application Screens

1. **Login/Register** - `/login` `/register`
2. **Event Listing** - `/events` (main page with search/filter)
3. **Event Details** - `/events/:id` (register here)
4. **Dashboard** - `/dashboard` (requires login)

---

## 🎯 Next Steps

1. Run backend and frontend
2. Register a new account
3. Browse events
4. Register for an event
5. Check dashboard
6. Customize and deploy!

---

Happy Event Managing! 🎉
