import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }

   // <Add>
   - (void)applicationWillResignActive:(UIApplication *)application{
       self.window.hidden = YES;
   }
   - (void)applicationDidBecomeActive:(UIApplication *)application{
       self.window.hidden = NO;
   }
}
