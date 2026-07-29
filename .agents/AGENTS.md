# Workspace Rules for iziVK (Android ADB Installation)

## ADB Update & Data Retention Rule
- **NEVER** run `adb uninstall` or execute any command that wipes application data/sessions.
- **ALWAYS** perform updates using `adb install -r -d --no-incremental <path-to-apk>` to preserve user sessions, login state, and app data.
