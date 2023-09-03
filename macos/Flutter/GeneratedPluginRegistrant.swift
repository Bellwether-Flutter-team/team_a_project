//
//  Generated file. Do not edit.
//

import FlutterMacOS
import Foundation

// <<<<<<< feature/rikuya
// import file_selector_macos
// import geolocator_apple

// func RegisterGeneratedPlugins(registry: FlutterPluginRegistry) {
//   FileSelectorPlugin.register(with: registry.registrar(forPlugin: "FileSelectorPlugin"))
//   GeolocatorPlugin.register(with: registry.registrar(forPlugin: "GeolocatorPlugin"))
// =======
import firebase_core

func RegisterGeneratedPlugins(registry: FlutterPluginRegistry) {
  FLTFirebaseCorePlugin.register(with: registry.registrar(forPlugin: "FLTFirebaseCorePlugin"))

}
