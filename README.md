# SwiftReport

A simple Swift command-line tool that prints the installed versions of **Xcode**, **macOS**, and **Swift** in a compact, readable format.

## Example Output
```
• Xcode 15.4 (15F31d)
• macOS: 14.5
• Apple Swift version 5.10 (swiftlang-5.10.0.13 clang-1500.3.9.4)
```

## Fast Installation

The following first builds the project, then copies the product to /usr/local/bin/swift-report

```
cd swift-report
sudo make install
```

## Manual Installation

Clone the repository and build with Swift:

```bash
git clone https://github.com/your-username/swift-report.git
cd swift-report
swift build -c release
```

Move the binary into your $PATH:

```
mv .build/release/swift-report /usr/local/bin/swift-report
```
