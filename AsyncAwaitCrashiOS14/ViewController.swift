//
//  ViewController.swift
//  AsyncAwaitCrashiOS14
//
//  Created by 岩本康孝 on 2022/03/14.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Task {
            await doAsyncTask()
            print("Async task completed")
        }
    }

    func doAsyncTask() async {
        do {
            try await Task.sleep(nanoseconds: 200000000)
        } catch {
            print("Error: \(error)")
        }
    }
}

