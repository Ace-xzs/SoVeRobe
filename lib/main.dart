import 'package:flutter/material.dart';

void main() {
  runApp(const SoVeRobeApp());
}

const _ink = Color(0xFF292923);
const _paper = Color(0xFFF8F6F0);
const _clay = Color(0xFFBA5B49);
const _sage = Color(0xFF747B61);

class SoVeRobeApp extends StatelessWidget {
  const SoVeRobeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SoVeRobe',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: _paper,
        colorScheme: ColorScheme.fromSeed(seedColor: _clay, surface: _paper),
        fontFamily: 'Georgia',
      ),
      home: const WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(25, 16, 25, 24),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight - 40,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const _BrandHeader(),
                    const SizedBox(height: 35),
                    Text(
                      'Find your next\nfavorite look.',
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        color: _ink,
                        fontSize: 43,
                        height: 1.08,
                        letterSpacing: -2.2,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'A little inspiration for the way you wear it.',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: _ink.withValues(alpha: 0.65),
                        fontSize: 14,
                        letterSpacing: 0.1,
                      ),
                    ),
                    const SizedBox(height: 15),
                    const _StyleCollage(),
                    const SizedBox(height: 12),
                    Text(
                      'Save what speaks to you. Make it your own.',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: _ink.withValues(alpha: 0.68),
                        fontSize: 14,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      height: 56,
                      child: FilledButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute<void>(
                              builder: (_) => const ExploreScreen(),
                            ),
                          );
                        },
                        style: FilledButton.styleFrom(
                          backgroundColor: _ink,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Start exploring',
                              style: TextStyle(
                                fontFamily: 'Georgia',
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(width: 10),
                            Icon(Icons.arrow_forward_rounded, size: 19),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 17),
                    Center(
                      child: Text(
                        'YOUR STYLE, YOUR STORY',
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          color: _ink.withValues(alpha: 0.48),
                          letterSpacing: 2.2,
                          fontSize: 9,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _BrandHeader extends StatelessWidget {
  const _BrandHeader();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 38,
          height: 38,
          decoration: BoxDecoration(
            color: _clay,
            borderRadius: BorderRadius.circular(13),
          ),
          child: const Icon(
            Icons.push_pin_rounded,
            color: Colors.white,
            size: 21,
          ),
        ),
        const SizedBox(width: 10),
        Text(
          'SoVeRobe',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            color: _ink,
            fontSize: 19,
            fontWeight: FontWeight.w700,
            letterSpacing: -0.8,
          ),
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 7),
          decoration: BoxDecoration(
            border: Border.all(color: _ink.withValues(alpha: 0.14)),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            'STYLE JOURNAL',
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
              color: _ink.withValues(alpha: 0.7),
              letterSpacing: 1.3,
              fontSize: 8,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}

class _StyleCollage extends StatelessWidget {
  const _StyleCollage();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 286,
      width: double.infinity,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            left: 3,
            top: 26,
            width: 183,
            height: 213,
            child: Transform.rotate(
              angle: -0.055,
              child: const _EditorialCard(
                image: 'https://images.unsplash.com/photo-1539109136881-3be0616acf4b?auto=format&fit=crop&w=650&q=85',
                fallback: Color(0xFFD9C9B5),
                label: 'easy layers',
              ),
            ),
          ),
          Positioned(
            right: 3,
            top: 6,
            width: 153,
            height: 194,
            child: Transform.rotate(
              angle: 0.06,
              child: const _EditorialCard(
                image: 'https://images.unsplash.com/photo-1529139574466-a303027c1d8b?auto=format&fit=crop&w=600&q=85',
                fallback: Color(0xFFCBC8B7),
                label: 'city notes',
              ),
            ),
          ),
          Positioned(
            right: 25,
            bottom: 3,
            width: 166,
            height: 111,
            child: Transform.rotate(
              angle: -0.035,
              child: const _EditorialCard(
                image: 'https://images.unsplash.com/photo-1490481651871-ab68de25d43d?auto=format&fit=crop&w=600&q=85',
                fallback: Color(0xFFE7D9C6),
                label: 'soft neutrals',
                compact: true,
              ),
            ),
          ),
          Positioned(
            left: 24,
            bottom: 13,
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: const Color(0xFFE9E8DB),
                shape: BoxShape.circle,
                border: Border.all(color: _paper, width: 4),
              ),
              child: const Icon(Icons.favorite_rounded, color: _sage, size: 19),
            ),
          ),
        ],
      ),
    );
  }
}

class _EditorialCard extends StatelessWidget {
  const _EditorialCard({
    required this.image,
    required this.fallback,
    required this.label,
    this.compact = false,
  });

  final String image;
  final Color fallback;
  final String label;
  final bool compact;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(19),
        boxShadow: [
          BoxShadow(
            color: _ink.withValues(alpha: 0.13),
            blurRadius: 20,
            offset: const Offset(0, 9),
          ),
        ],
      ),
      padding: const EdgeInsets.all(6),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(14),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.network(
              image,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => ColoredBox(
                color: fallback,
                child: Icon(
                  Icons.checkroom_rounded,
                  color: _ink.withValues(alpha: 0.35),
                  size: 44,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                margin: EdgeInsets.all(compact ? 7 : 9),
                padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.92),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  label,
                  style: const TextStyle(
                    color: _ink,
                    fontFamily: 'Georgia',
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  static const _categories = ['For you', 'Outfits', 'Minimal', 'Vintage'];
  static const _looks = [
    (
      'Weekend in the city',
      'https://images.unsplash.com/photo-1529139574466-a303027c1d8b?auto=format&fit=crop&w=700&q=85',
      Color(0xFFCBC8B7),
      234.0,
    ),
    (
      'The art of layering',
      'https://images.unsplash.com/photo-1539109136881-3be0616acf4b?auto=format&fit=crop&w=700&q=85',
      Color(0xFFD9C9B5),
      185.0,
    ),
    (
      'Soft neutrals',
      'https://images.unsplash.com/photo-1490481651871-ab68de25d43d?auto=format&fit=crop&w=700&q=85',
      Color(0xFFE7D9C6),
      192.0,
    ),
    (
      'A little vintage',
      'https://images.unsplash.com/photo-1515886657613-9f3515b0c78f?auto=format&fit=crop&w=700&q=85',
      Color(0xFFDED1C1),
      240.0,
    ),
    (
      'Everyday, elevated',
      'https://images.unsplash.com/photo-1525507119028-ed4c629a60a3?auto=format&fit=crop&w=700&q=85',
      Color(0xFFC9C3B2),
      208.0,
    ),
    (
      'A fresh perspective',
      'https://images.unsplash.com/photo-1483985988355-763728e1935b?auto=format&fit=crop&w=700&q=85',
      Color(0xFFE2D2C4),
      176.0,
    ),
  ];

  int _selectedCategory = 0;
  final Set<String> _savedLooks = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.fromLTRB(22, 16, 22, 0),
              sliver: SliverToBoxAdapter(
                child: Row(
                  children: [
                    Container(
                      width: 37,
                      height: 37,
                      decoration: BoxDecoration(
                        color: _clay,
                        borderRadius: BorderRadius.circular(13),
                      ),
                      child: const Icon(
                        Icons.push_pin_rounded,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      'SoVeRobe',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: _ink,
                        fontSize: 19,
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.8,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      tooltip: 'Your profile',
                      icon: const Icon(Icons.person_outline_rounded),
                      style: IconButton.styleFrom(
                        backgroundColor: const Color(0xFFEDEAE1),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.fromLTRB(22, 23, 22, 0),
              sliver: SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Find your kind of style.',
                      style: Theme.of(context).textTheme.headlineSmall
                          ?.copyWith(
                            color: _ink,
                            fontSize: 27,
                            fontWeight: FontWeight.w600,
                            letterSpacing: -1,
                          ),
                    ),
                    const SizedBox(height: 16),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Search outfits, colors, ideas...',
                        hintStyle: TextStyle(
                          color: _ink.withValues(alpha: 0.5),
                          fontSize: 13,
                        ),
                        prefixIcon: const Icon(Icons.search_rounded, size: 21),
                        filled: true,
                        fillColor: const Color(0xFFEDEAE1),
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 15,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 18),
                    SizedBox(
                      height: 39,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: _categories.length,
                        separatorBuilder: (_, _) => const SizedBox(width: 8),
                        itemBuilder: (context, index) {
                          final selected = index == _selectedCategory;
                          return ChoiceChip(
                            label: Text(_categories[index]),
                            selected: selected,
                            onSelected: (_) {
                              setState(() => _selectedCategory = index);
                            },
                            showCheckmark: false,
                            labelStyle: TextStyle(
                              color: selected ? Colors.white : _ink,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                            backgroundColor: const Color(0xFFEDEAE1),
                            selectedColor: _ink,
                            side: BorderSide.none,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 22),
                    Row(
                      children: [
                        Text(
                          _selectedCategory == 0
                              ? 'Made for your mood'
                              : '${_categories[_selectedCategory]} inspiration',
                          style: Theme.of(context).textTheme.titleMedium
                              ?.copyWith(
                                color: _ink,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                        const Spacer(),
                        Text(
                          'FRESH FINDS',
                          style: Theme.of(context).textTheme.labelSmall
                              ?.copyWith(
                                color: _sage,
                                letterSpacing: 1.2,
                                fontSize: 9,
                                fontWeight: FontWeight.w700,
                              ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 13),
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.fromLTRB(22, 0, 22, 24),
              sliver: SliverList.builder(
                itemCount: (_looks.length / 2).ceil(),
                itemBuilder: (context, row) {
                  final first = _looks[row * 2];
                  final second = _looks[row * 2 + 1];
                  return Padding(
                    padding: EdgeInsets.only(
                      bottom: row == (_looks.length / 2).ceil() - 1 ? 0 : 17,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(child: _buildLookTile(first)),
                        const SizedBox(width: 12),
                        Expanded(child: _buildLookTile(second)),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: _paper,
        indicatorColor: const Color(0xFFE8E4D9),
        selectedIndex: 0,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.explore_outlined),
            selectedIcon: Icon(Icons.explore_rounded),
            label: 'Explore',
          ),
          NavigationDestination(
            icon: Icon(Icons.bookmark_border_rounded),
            selectedIcon: Icon(Icons.bookmark_rounded),
            label: 'Saved',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline_rounded),
            selectedIcon: Icon(Icons.person_rounded),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget _buildLookTile((String, String, Color, double) look) {
    return _LookTile(
      title: look.$1,
      image: look.$2,
      fallback: look.$3,
      imageHeight: look.$4,
      saved: _savedLooks.contains(look.$1),
      onSave: () {
        setState(() {
          if (!_savedLooks.add(look.$1)) {
            _savedLooks.remove(look.$1);
          }
        });
      },
    );
  }
}

class _LookTile extends StatelessWidget {
  const _LookTile({
    required this.title,
    required this.image,
    required this.fallback,
    required this.imageHeight,
    required this.saved,
    required this.onSave,
  });

  final String title;
  final String image;
  final Color fallback;
  final double imageHeight;
  final bool saved;
  final VoidCallback onSave;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: imageHeight,
          child: Stack(
            fit: StackFit.expand,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(17),
                child: Image.network(
                  image,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => ColoredBox(
                    color: fallback,
                    child: Icon(
                      Icons.checkroom_rounded,
                      color: _ink.withValues(alpha: 0.34),
                      size: 42,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Material(
                    color: Colors.white.withValues(alpha: 0.93),
                    shape: const CircleBorder(),
                    child: IconButton(
                      onPressed: onSave,
                      tooltip: saved ? 'Remove saved look' : 'Save this look',
                      visualDensity: VisualDensity.compact,
                      constraints: const BoxConstraints.tightFor(
                        width: 35,
                        height: 35,
                      ),
                      padding: EdgeInsets.zero,
                      icon: Icon(
                        saved
                            ? Icons.bookmark_rounded
                            : Icons.bookmark_border_rounded,
                        color: saved ? _clay : _ink,
                        size: 19,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 7),
        Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: _ink,
            fontFamily: 'Georgia',
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
