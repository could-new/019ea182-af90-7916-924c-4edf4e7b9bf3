import 'package:flutter/material.dart';

void main() {
  runApp(const AtsResumeApp());
}

class AtsResumeApp extends StatelessWidget {
  const AtsResumeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ATS Resume',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: Colors.black,
          onPrimary: Colors.white,
          surface: Colors.white,
          onSurface: Colors.black,
        ),
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const ResumeScreen(),
      },
    );
  }
}

class ResumeScreen extends StatelessWidget {
  const ResumeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ATS-Friendly Resume'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 800),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _HeaderSection(),
                SizedBox(height: 24),
                _SummarySection(),
                SizedBox(height: 24),
                _ExperienceSection(),
                SizedBox(height: 24),
                _EducationSection(),
                SizedBox(height: 24),
                _SkillsSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _HeaderSection extends StatelessWidget {
  const _HeaderSection();

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SelectableText(
          'JOHN DOE',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
          ),
        ),
        SizedBox(height: 8),
        SelectableText(
          'San Francisco, CA • (555) 123-4567 • john.doe@email.com • linkedin.com/in/johndoe',
          style: TextStyle(fontSize: 14),
          textAlign: TextAlign.center,
        ),
        Divider(thickness: 1.5, color: Colors.black),
      ],
    );
  }
}

class _SummarySection extends StatelessWidget {
  const _SummarySection();

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SelectableText(
          'PROFESSIONAL SUMMARY',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Divider(thickness: 1, color: Colors.black54),
        SizedBox(height: 8),
        SelectableText(
          'Results-oriented Software Engineer with 5+ years of experience developing scalable web and mobile applications. Proven ability to optimize performance, lead cross-functional teams, and deliver robust software solutions on time.',
          style: TextStyle(fontSize: 14, height: 1.5),
        ),
      ],
    );
  }
}

class _ExperienceSection extends StatelessWidget {
  const _ExperienceSection();

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SelectableText(
          'WORK EXPERIENCE',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Divider(thickness: 1, color: Colors.black54),
        SizedBox(height: 8),
        _JobEntry(
          title: 'Senior Software Engineer',
          company: 'Tech Solutions Inc.',
          location: 'San Francisco, CA',
          date: 'Jan 2021 – Present',
          bullets: [
            'Architected and implemented a high-throughput microservices backend using Node.js and Docker, improving system reliability by 35%.',
            'Mentored a team of 4 junior developers, increasing team velocity and reducing code review turnaround time.',
            'Optimized database queries in PostgreSQL, reducing average response time by 200ms.',
          ],
        ),
        SizedBox(height: 16),
        _JobEntry(
          title: 'Software Engineer',
          company: 'WebDev Corp',
          location: 'San Jose, CA',
          date: 'Jun 2018 – Dec 2020',
          bullets: [
            'Developed responsive single-page applications using React and Redux.',
            'Collaborated with design and product teams to implement user-friendly interfaces.',
            'Created comprehensive unit and integration tests using Jest, achieving 90% code coverage.',
          ],
        ),
      ],
    );
  }
}

class _JobEntry extends StatelessWidget {
  final String title;
  final String company;
  final String location;
  final String date;
  final List<String> bullets;

  const _JobEntry({
    required this.title,
    required this.company,
    required this.location,
    required this.date,
    required this.bullets,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SelectableText(
                title,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
            ),
            SelectableText(
              date,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SelectableText(
                company,
                style: const TextStyle(fontStyle: FontStyle.italic, fontSize: 14),
              ),
            ),
            SelectableText(
              location,
              style: const TextStyle(fontStyle: FontStyle.italic, fontSize: 14),
            ),
          ],
        ),
        const SizedBox(height: 8),
        ...bullets.map((bullet) => Padding(
              padding: const EdgeInsets.only(bottom: 4.0, left: 16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SelectableText('• ', style: TextStyle(fontSize: 14)),
                  Expanded(
                    child: SelectableText(
                      bullet,
                      style: const TextStyle(fontSize: 14, height: 1.5),
                    ),
                  ),
                ],
              ),
            )),
      ],
    );
  }
}

class _EducationSection extends StatelessWidget {
  const _EducationSection();

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SelectableText(
          'EDUCATION',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Divider(thickness: 1, color: Colors.black54),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SelectableText(
                'Bachelor of Science in Computer Science',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
            ),
            SelectableText(
              'May 2018',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SelectableText(
                'University of California, Berkeley',
                style: TextStyle(fontStyle: FontStyle.italic, fontSize: 14),
              ),
            ),
            SelectableText(
              'Berkeley, CA',
              style: TextStyle(fontStyle: FontStyle.italic, fontSize: 14),
            ),
          ],
        ),
      ],
    );
  }
}

class _SkillsSection extends StatelessWidget {
  const _SkillsSection();

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SelectableText(
          'SKILLS',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Divider(thickness: 1, color: Colors.black54),
        SizedBox(height: 8),
        SelectableText(
          'Languages: Dart, JavaScript, TypeScript, Python, SQL\n'
          'Frameworks: Flutter, React, Node.js, Express\n'
          'Tools: Git, Docker, AWS, Firebase, CI/CD',
          style: TextStyle(fontSize: 14, height: 1.5),
        ),
      ],
    );
  }
}
