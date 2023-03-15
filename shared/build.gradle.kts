plugins {
    kotlin("multiplatform") version "1.8.10"
    kotlin("native.cocoapods") version "1.8.10"
    id("com.android.library") version "7.4.1"
    id("co.touchlab.faktory.kmmbridge") version "999"
    `maven-publish`
}

group = "co.touchlab.kmmbridge.test.custompackage"
version = "1.0"

repositories {
    mavenLocal()
    google()
    mavenCentral()
}

kotlin {
    android()

    iosX64()
    iosArm64()
    iosSimulatorArm64()

    sourceSets {
        val commonMain by getting
        val commonTest by getting {
            dependencies {
                implementation(kotlin("test"))
            }
        }
        val androidTest by getting {
            dependencies {
                implementation("junit:junit:4.13.2")
            }
        }
    }

    cocoapods {
        homepage = "https://www.example.com"
        summary = "Test"
        ios.deploymentTarget = "13"
        framework {
            isStatic = false
        }
    }
}

android {
    compileSdk = 33
    defaultConfig {
        minSdk = 21
    }
    sourceSets["main"].manifest.srcFile("src/androidMain/AndroidManifest.xml")
}

kmmbridge {
    versionPrefix.set("1.1")
    spm(useCustomPackageFile = true)
    gitTagVersions()
    mavenPublishArtifacts()
}

addGithubPackagesRepository()
