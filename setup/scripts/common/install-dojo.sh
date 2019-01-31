# DefectDojo install 'library' to handle installing DefectDojo across multiple install targets
# 

# Case statement on OS - move OS specific install code into separate included files
install_dojo() {
	OS_LIBS="$SETUP_BASE/scripts/os"
	echo "=============================================================================="
	echo "  Starting the install of Defect Dojo"
	echo "=============================================================================="
	echo ""
	case $INSTALL_OS in
	    "linux-gnu")
	    echo "  Linux install target"
	    . "$OS_LIBS/linux.sh"
	    install_linux
	    ;;
	    "darwin")
	    echo "Mac OS X install target"
	    echo "  TBD: Install for Mac OS X"
	    ;;
	    *)
	    echo "    Error: Unsupported OS"
	    exit 1
	    ;;
	esac
}
