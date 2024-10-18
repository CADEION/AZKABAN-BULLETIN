part of 'categories_imports.dart';

@RoutePage()
class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: 'Categories'.text.size(24.sp).white.make().centered(),
        backgroundColor: MyColors.primaryColor,
      ),
      body: ListView.separated(
        itemCount: 6,
        itemBuilder: (context,index){
          return Card(
            child: ListTile(
              leading: '${index+1}'.text.size(16.sp).make(),
              title: 'Enter'.text.size(16.sp).make(),
              trailing: SizedBox(
                width: 100.w,
                child: Row(
                  children: [
                    IconButton(onPressed: (){}, icon: const Icon(FeatherIcons.edit,color: Colors.teal,)),
                    IconButton(onPressed: (){}, icon: const Icon(FeatherIcons.trash2,color: Colors.red)),
                  ],
                ),
              ),
            ),
          );
        }, separatorBuilder: (BuildContext context, int index) { return const SizedBox(height: 20,); },),
    );
  }
}
