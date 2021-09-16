from main.apk import APK

apkf = APK("presto_app-release (1).apk")

print(apkf.get_androidversion_code())
print(apkf.get_androidversion_name())
print apkf.get_files()

