//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

// <<<<<<< feature/rikuya
// #include <file_selector_windows/file_selector_windows.h>
// #include <geolocator_windows/geolocator_windows.h>

// void RegisterPlugins(flutter::PluginRegistry* registry) {
//   FileSelectorWindowsRegisterWithRegistrar(
//       registry->GetRegistrarForPlugin("FileSelectorWindows"));
//   GeolocatorWindowsRegisterWithRegistrar(
//       registry->GetRegistrarForPlugin("GeolocatorWindows"));
// =======
#include <firebase_core/firebase_core_plugin_c_api.h>

void RegisterPlugins(flutter::PluginRegistry* registry) {
  FirebaseCorePluginCApiRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("FirebaseCorePluginCApi"));
}
