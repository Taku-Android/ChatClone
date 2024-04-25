
import '../../../../utils/image_path.dart';

class LandingData {
  static List<String> icons = [
    ImagePath.example,
    ImagePath.capabilities,
    ImagePath.limitations,
  ];

  static List<List<String>> sections = [
    [
      'Explain quantum computing in simple terms',
      'Got any creative ideas for a 10 year old’s birthday?',
      'How do I make an HTTP request in Javascript?',
    ],
    [
      'Remembers what user said earlier in the conversation',
      'Allows user to provide follow-up corrections',
      'Trained to decline inappropriate requests',
    ],
    [
      'May occasionally generate incorrect information',
      'May occasionally produce harmful instructions or biased content',
      'Limited knowledge of world and events after 2021',
    ],
  ];
  List<String> examples = [
    'Explain quantum computing in simple terms',
    'Got any creative ideas for a 10 year old’s birthday?',
    'How do I make an HTTP request in Javascript?',
  ];
  List<String> capabilities = [
    'Remembers what user said earlier in the conversation',
    'Allows user to provide follow-up corrections',
    'Trained to decline inappropriate requests',
  ];
  List<String> limitations = [
    'May occasionally generate incorrect information',
    'May occasionally produce harmful instructions or biased content',
    'Limited knowledge of world and events after 2021',
  ];

  static List<String> titles = [
    'Examples',
    'Capabilities',
    'Limitations',
  ];
}
