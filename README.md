# twrp_device_Blackview

ADD to .repo/local_manifests/Elenedeath.xml
```
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
    <remote name="Elenedeath"
            fetch="https://github.com/elenedeath" />
    <project path="device/Blackview" name="twrp_device_Blackview" remote="Elenedeath" revision="android-9.0" />
</manifest>
```

ADD Environment Variables in travis-ci
- name=ALLOW_MISSING_DEPENDENCIES value=true
- name=GitOAUTHToken value='Create one in https://github.com/settings/tokens'
