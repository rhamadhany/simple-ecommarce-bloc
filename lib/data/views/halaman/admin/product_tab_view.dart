import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_ecommarce_bloc/data/blocs/product_bloc.dart';
import 'package:simple_ecommarce_bloc/data/models/list_product/list_product_state.dart';
import 'package:simple_ecommarce_bloc/data/views/halaman/admin/product_admin_view.dart';
import 'package:simple_ecommarce_bloc/data/views/halaman/home/product_home_view.dart';

class ProductTabView extends StatefulWidget {
  const ProductTabView({super.key});

  @override
  State<ProductTabView> createState() => _ProductTabViewState();
}

class _ProductTabViewState extends State<ProductTabView>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc, ListProductState>(
      builder: (context, state) {
        return Directionality(
          textDirection: TextDirection.ltr,
          child: Scaffold(
            body: TabBarView(
              controller: tabController,
              children: [ProductHomeView(), ProductAdminView()],
            ),
            bottomNavigationBar: TabBar(
              controller: tabController,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(icon: Icon(Icons.shop), text: 'Shopping'),
                Tab(icon: Icon(Icons.admin_panel_settings), text: 'Admin'),
              ],
            ),
          ),
        );
      },
    );
  }
}
