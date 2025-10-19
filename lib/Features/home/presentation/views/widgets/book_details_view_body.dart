import 'package:bookly_app/Features/home/presentation/views/widgets/book_details_section.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/similar_books_setion.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/custom_buttom.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                BookDetailsSection(),
                Expanded(
                  child: const SizedBox(
                    height: 50,
                  ),
                ),
                SimilarBooksSection(),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
