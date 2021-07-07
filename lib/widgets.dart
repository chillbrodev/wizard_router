import 'package:flutter/material.dart';

class WizardPage extends StatelessWidget {
  const WizardPage({
    Key? key,
    required this.name,
    this.onBack,
    this.onNext,
    this.leading,
  }) : super(key: key);

  final String name;
  final VoidCallback? onBack;
  final VoidCallback? onNext;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name)),
      body: Center(child: Text('This is the $name page...')),
      bottomNavigationBar: Row(
        children: [
          if (leading != null) leading!,
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ButtonBar(
              children: [
                OutlinedButton(
                  onPressed: onBack,
                  child: const Text('Back'),
                ),
                OutlinedButton(
                  onPressed: onNext,
                  child: const Text('Continue'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}