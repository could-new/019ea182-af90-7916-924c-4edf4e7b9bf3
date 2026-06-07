import 'package:flutter/material.dart';

void main() {
  runApp(const AtsResumeApp());
}

class AtsResumeApp extends StatelessWidget {
  const AtsResumeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ATS Resume Template',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: Colors.blueGrey,
          onPrimary: Colors.white,
          surface: Colors.white,
          onSurface: Colors.black87,
        ),
        scaffoldBackgroundColor: const Color(0xFFF5F5F5),
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
        title: const Text('Resume - Brian J.'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
        elevation: 1,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1000),
              child: Card(
                elevation: 3,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      if (constraints.maxWidth < 600) {
                        return const _MobileLayout();
                      } else {
                        return const _DesktopLayout();
                      }
                    },
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _MobileLayout extends StatelessWidget {
  const _MobileLayout();

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _HeaderSection(),
        SizedBox(height: 32),
        _ContactSection(),
        SizedBox(height: 32),
        _SkillsSection(),
        SizedBox(height: 32),
        _SummarySection(),
        SizedBox(height: 32),
        _ExperienceSection(),
        SizedBox(height: 32),
        _EducationSection(),
      ],
    );
  }
}

class _DesktopLayout extends StatelessWidget {
  const _DesktopLayout();

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _HeaderSection(),
              SizedBox(height: 32),
              _SummarySection(),
              SizedBox(height: 32),
              _ExperienceSection(),
              SizedBox(height: 32),
              _EducationSection(),
            ],
          ),
        ),
        SizedBox(width: 48),
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _ContactSection(),
              SizedBox(height: 32),
              _SkillsSection(),
              SizedBox(height: 32),
              _CertificationsSection(),
              SizedBox(height: 32),
              _LanguagesSection(),
            ],
          ),
        ),
      ],
    );
  }
}

class _HeaderSection extends StatelessWidget {
  const _HeaderSection();

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SelectableText(
          'BRIAN J. MAIN',
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
            color: Colors.blueGrey,
          ),
        ),
        SizedBox(height: 8),
        SelectableText(
          'SENIOR SOFTWARE ENGINEER',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.5,
            color: Colors.black54,
          ),
        ),
        SizedBox(height: 16),
        Divider(thickness: 2, color: Colors.blueGrey),
      ],
    );
  }
}

class _ContactSection extends StatelessWidget {
  const _ContactSection();

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _SectionHeader('CONTACT'),
        SizedBox(height: 16),
        _IconText(icon: Icons.email, text: 'brian.j.main@email.com'),
        SizedBox(height: 8),
        _IconText(icon: Icons.phone, text: '+1 (555) 123-4567'),
        SizedBox(height: 8),
        _IconText(icon: Icons.location_on, text: 'Seattle, WA, USA'),
        SizedBox(height: 8),
        _IconText(icon: Icons.link, text: 'linkedin.com/in/brianjmain'),
        SizedBox(height: 8),
        _IconText(icon: Icons.code, text: 'github.com/brianjmain'),
      ],
    );
  }
}

class _IconText extends StatelessWidget {
  final IconData icon;
  final String text;

  const _IconText({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(icon, size: 18, color: Colors.blueGrey),
        const SizedBox(width: 12),
        Expanded(
          child: SelectableText(
            text,
            style: const TextStyle(fontSize: 14, color: Colors.black87),
          ),
        ),
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
        _SectionHeader('PROFILE'),
        SizedBox(height: 16),
        SelectableText(
          'Innovative and results-driven Senior Software Engineer with over 8 years of experience in designing, developing, and deploying high-performance applications. Proficient in modern web and mobile frameworks, with a strong background in building scalable microservices and leading Agile teams to deliver successful products.',
          style: TextStyle(fontSize: 14, height: 1.6, color: Colors.black87),
        ),
      ],
    );
  }
}

class _SkillsSection extends StatelessWidget {
  const _SkillsSection();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const _SectionHeader('SKILLS'),
        const SizedBox(height: 16),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [
            'Flutter', 'Dart', 'React', 'TypeScript', 'Node.js',
            'Python', 'AWS', 'Docker', 'Kubernetes', 'CI/CD',
            'PostgreSQL', 'GraphQL', 'System Architecture'
          ].map((skill) => _SkillChip(skill)).toList(),
        ),
      ],
    );
  }
}

class _SkillChip extends StatelessWidget {
  final String label;

  const _SkillChip(this.label);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.blueGrey.withOpacity(0.1),
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: Colors.blueGrey.withOpacity(0.3)),
      ),
      child: SelectableText(
        label,
        style: const TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w500,
          color: Colors.blueGrey,
        ),
      ),
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
        _SectionHeader('WORK EXPERIENCE'),
        SizedBox(height: 16),
        _JobEntry(
          title: 'Senior Software Engineer',
          company: 'Tech Innovators LLC',
          date: 'Jan 2021 – Present',
          location: 'Seattle, WA',
          bullets: [
            'Architected and led the development of a real-time analytics dashboard using React and Node.js, serving 10k+ daily active users.',
            'Migrated legacy monolithic services to a containerized microservices architecture on AWS EKS, reducing deployment times by 40%.',
            'Mentored a team of 5 engineers, establishing best practices for code reviews, testing, and CI/CD pipelines.',
          ],
        ),
        SizedBox(height: 24),
        _JobEntry(
          title: 'Software Engineer',
          company: 'Global Software Solutions',
          date: 'Jun 2017 – Dec 2020',
          location: 'San Francisco, CA',
          bullets: [
            'Developed cross-platform mobile applications using Flutter, reducing time-to-market by 30% compared to native development.',
            'Integrated RESTful APIs and optimized state management with Riverpod to enhance application performance.',
            'Collaborated closely with product managers and designers to iterate on UX features based on user feedback.',
          ],
        ),
      ],
    );
  }
}

class _JobEntry extends StatelessWidget {
  final String title;
  final String company;
  final String date;
  final String location;
  final List<String> bullets;

  const _JobEntry({
    required this.title,
    required this.company,
    required this.date,
    required this.location,
    required this.bullets,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SelectableText(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 4),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SelectableText(
                company,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.blueGrey,
                ),
              ),
            ),
            SelectableText(
              date,
              style: const TextStyle(
                fontSize: 14,
                fontStyle: FontStyle.italic,
                color: Colors.black54,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        ...bullets.map((bullet) => Padding(
              padding: const EdgeInsets.only(bottom: 6.0, left: 12.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('•', style: TextStyle(fontSize: 14, color: Colors.blueGrey)),
                  const SizedBox(width: 8),
                  Expanded(
                    child: SelectableText(
                      bullet,
                      style: const TextStyle(fontSize: 14, height: 1.5, color: Colors.black87),
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
        _SectionHeader('EDUCATION'),
        SizedBox(height: 16),
        _EducationEntry(
          degree: 'Master of Science in Computer Science',
          school: 'University of Washington',
          date: '2015 – 2017',
        ),
        SizedBox(height: 16),
        _EducationEntry(
          degree: 'Bachelor of Science in Software Engineering',
          school: 'State University',
          date: '2011 – 2015',
        ),
      ],
    );
  }
}

class _EducationEntry extends StatelessWidget {
  final String degree;
  final String school;
  final String date;

  const _EducationEntry({
    required this.degree,
    required this.school,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SelectableText(
          degree,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 4),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SelectableText(
              school,
              style: const TextStyle(fontSize: 14, color: Colors.blueGrey),
            ),
            SelectableText(
              date,
              style: const TextStyle(fontSize: 14, fontStyle: FontStyle.italic, color: Colors.black54),
            ),
          ],
        ),
      ],
    );
  }
}

class _CertificationsSection extends StatelessWidget {
  const _CertificationsSection();

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _SectionHeader('CERTIFICATIONS'),
        SizedBox(height: 16),
        _CertEntry('AWS Certified Solutions Architect'),
        SizedBox(height: 8),
        _CertEntry('Google Cloud Professional Developer'),
        SizedBox(height: 8),
        _CertEntry('Certified Kubernetes Administrator (CKA)'),
      ],
    );
  }
}

class _CertEntry extends StatelessWidget {
  final String title;

  const _CertEntry(this.title);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Icon(Icons.verified, size: 16, color: Colors.blueGrey),
        const SizedBox(width: 8),
        Expanded(
          child: SelectableText(
            title,
            style: const TextStyle(fontSize: 14, color: Colors.black87),
          ),
        ),
      ],
    );
  }
}

class _LanguagesSection extends StatelessWidget {
  const _LanguagesSection();

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _SectionHeader('LANGUAGES'),
        SizedBox(height: 16),
        SelectableText('English (Native)', style: TextStyle(fontSize: 14)),
        SizedBox(height: 4),
        SelectableText('Spanish (Professional)', style: TextStyle(fontSize: 14)),
      ],
    );
  }
}

class _SectionHeader extends StatelessWidget {
  final String title;

  const _SectionHeader(this.title);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SelectableText(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
            color: Colors.blueGrey,
          ),
        ),
        const SizedBox(height: 4),
        Container(
          height: 3,
          width: 40,
          color: Colors.blueGrey,
        ),
      ],
    );
  }
}
