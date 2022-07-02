import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BudgetCategories extends StatelessWidget {
  const BudgetCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        _TextContainer(),
        _CategoriesList(),
        _AddNewCategory(),
      ],
    );
  }
}

class _TextContainer extends StatelessWidget {
  const _TextContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 0.9.sw,
      height: 70.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.white,
        ),
      ),
      child: const Center(
        child: Text('Your budgets are on track'),
      ),
    );
  }
}

class _CategoriesList extends StatelessWidget {
  const _CategoriesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 0.9.sw,
      height: 0.3.sh,
      padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
      child: const Placeholder(
        child: Center(child: Text('Categories list')),
      ),
    );
  }
}

class _AddNewCategory extends StatelessWidget {
  const _AddNewCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 0.9.sw,
      height: 80.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          style: BorderStyle.solid,
          color: Colors.white,
        ),
      ),
      child: Center(
        child: ListTile(
          onTap: () {},
          title: const Text('Add new category'),
          trailing: const Icon(Icons.add_rounded),
        ),
      ),
    );
  }
}
