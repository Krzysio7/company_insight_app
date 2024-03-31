part of '../companies_page.dart';

class _SearchBar extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final textController = useTextEditingController();

    final onClearTapped = useCallback<VoidCallback>(() {
      textController.text = '';
      context.read<CompaniesBloc>().add(
            const TextChanged(text: ''),
          );
    });

    final onChanged = useCallback<ValueChanged<String>>((text) {
      context.read<CompaniesBloc>().add(
            TextChanged(text: text),
          );
    });

    return TextField(
      controller: textController,
      autocorrect: false,
      onChanged: onChanged,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.search),
        suffixIcon: GestureDetector(
          onTap: onClearTapped,
          child: const Icon(Icons.clear),
        ),
        border: InputBorder.none,
        hintText: context.localization.companies_searchTerm,
      ),
    );
  }
}
