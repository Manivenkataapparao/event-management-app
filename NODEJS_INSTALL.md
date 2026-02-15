# Node.js Installation Guide for Windows

## 🚀 Step-by-Step Installation

### Step 1: Download Node.js
1. **Open your browser** and go to: https://nodejs.org/
2. You'll see two buttons:
   - **LTS** (Recommended) - Left side, green
   - **Current** (Latest) - Right side
3. **Click the LTS button** (left, green)
4. The download will start automatically

### Step 2: Run the Installer
1. **Open** the downloaded file (usually `node-vXX.X.X-x64.msi`)
2. **Click "Next"** on the Welcome screen
3. **Read and Accept** the license agreement, click "Next"
4. **Choose Installation Location** (default is fine), click "Next"
5. **Custom Setup** screen appears:
   - ✅ Make sure these are checked:
     - Node.js runtime
     - npm package manager
     - Add to PATH (IMPORTANT!)
   - Click "Next"
6. **Tools for Native Modules** screen - click "Next"
7. **Click "Install"** and wait for installation
8. **Click "Finish"**

### Step 3: Restart Your Computer
1. **Close all applications**
2. **Restart your computer**
3. This ensures Node.js path is loaded correctly

### Step 4: Verify Installation

**Open PowerShell and run:**
```powershell
node --version
npm --version
```

**You should see version numbers like:**
```
v18.17.0
9.6.7
```

If you see version numbers → ✅ Node.js is installed correctly!

---

## ❌ If You Still Get "node is not recognized"

### Try This:

1. **Search for "Environment Variables"** in Windows:
   - Press `Win + R`
   - Type: `sysdm.cpl`
   - Press Enter
   - Click "Environment Variables" button

2. **Check PATH variable:**
   - Find "PATH" in System variables
   - Click "Edit"
   - Make sure it contains: `C:\Program Files\nodejs\`
   - If not, add it manually

3. **Restart PowerShell completely**
   - Close all PowerShell windows
   - Open a new one

---

## 🎯 After Node.js is Installed

Go back to the app folder and run:

```powershell
cd C:\Users\srimv\Downloads\event-management-app
.\setup.bat
```

Or manually:

```powershell
cd C:\Users\srimv\Downloads\event-management-app\backend
npm install
npm run dev
```

---

## ✅ If Installation Still Fails

**Try completely uninstalling and reinstalling:**

1. **Go to Control Panel** → Add/Remove Programs
2. **Find "Node.js"** and uninstall it
3. **Restart computer**
4. **Download fresh** from https://nodejs.org/
5. **Install again** (make sure "Add to PATH" is checked)
6. **Restart computer again**

---

**Once Node.js is installed, everything will work! 🚀**
