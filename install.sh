
### **File 2: `install.sh`** (One-command installer)
```bash
#!/bin/bash
# ========================================================
# 🚀 FIREBASE VPS - ONE COMMAND INSTALLER
# ========================================================
# Run this single command in Firebase Cloud Shell
# ========================================================

set -e

echo ""
echo "╔══════════════════════════════════════════════════════════════╗"
echo "║                                                              ║"
echo "║    █████╗ ██╗     ██████╗ ██╗███╗   ██╗                     ║"
echo "║   ██╔══██╗██║     ██╔══██╗██║████╗  ██║                     ║"
echo "║   ███████║██║     ██████╔╝██║██╔██╗ ██║                     ║"
echo "║   ██╔══██║██║     ██╔══██╗██║██║╚██╗██║                     ║"
echo "║   ██║  ██║███████╗██████╔╝██║██║ ╚████║                     ║"
echo "║   ╚═╝  ╚═╝╚══════╝╚═════╝ ╚═╝╚═╝  ╚═══╝                     ║"
echo "║                                                              ║"
echo "║           F I R E B A S E   V P S   I N S T A L L E R        ║"
echo "╚══════════════════════════════════════════════════════════════╝"
echo ""
echo "📦 Installing Firebase QEMU VPS System..."
echo ""

# Create directory
mkdir -p ~/.firebase-vps-install
cd ~/.firebase-vps-install

# Download main script
echo "⬇️  Downloading VPS manager..."
curl -s -o firebase-vps.sh https://raw.githubusercontent.com/Albin123725/Firebase/main/firebase-vps.sh

# Make executable
chmod +x firebase-vps.sh

# Move to home directory
mv firebase-vps.sh ~/vps.sh

# Create alias
echo "alias vps='~/vps.sh'" >> ~/.bashrc

# Install dependencies
echo "🔧 Installing QEMU and dependencies..."
sudo apt-get update
sudo apt-get install -y qemu-system-x86 qemu-utils cloud-image-utils wget curl

# Cleanup
cd ~
rm -rf ~/.firebase-vps-install

echo ""
echo "✅ INSTALLATION COMPLETE!"
echo ""
echo "══════════════════════════════════════════════════════════════"
echo ""
echo "🚀 To start using Firebase VPS:"
echo ""
echo "  1. Run the VPS manager:"
echo "     $ ~/vps.sh"
echo "     or"
echo "     $ vps  (after reopening shell)"
echo ""
echo "  2. Or use direct commands:"
echo "     $ ~/vps.sh create    # Create new VPS"
echo "     $ ~/vps.sh list      # List all VPS"
echo ""
echo "📚 Documentation: https://github.com/Albin123725/Firebase"
echo ""
echo "══════════════════════════════════════════════════════════════"
echo ""
echo "💡 Tip: Your VPS will be saved in ~/.firebase-qemu-vps/"
echo "       They persist across Firebase sessions!"
echo ""
