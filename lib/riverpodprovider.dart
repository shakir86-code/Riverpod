import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_assignment_1/provider.dart';

class Riverpodprovider extends ConsumerStatefulWidget {
  const Riverpodprovider({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _RiverpodproviderState();
}

class _RiverpodproviderState extends ConsumerState<Riverpodprovider> {
  @override
  Widget build(BuildContext context) {
    final asyncComments = ref.watch(commentsProvider);
    return Scaffold(
      body: asyncComments.when(
        data: (comments) {
          return ListView.builder(
            itemCount: comments.length,
            itemBuilder: (context, index) {
              final data = comments[index];

              return Container(
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("PostId: ${data.postId}"),
                    Text("Id: ${data.id}"),
                    Text("Name: ${data.name}"),
                    Text("Email: ${data.email}"),
                    Text("Body: ${data.body}"),
                  ],
                ),
              );
              // return Container(
              //   child: Column(
              //     children: [
              //       Text(data.postId.toString()),
              //       Text(data.id.toString()),
              //       Text(data.name),
              //       Text(data.email),
              //       Text(data.body),

              //     ],
              //   ),
              // );
            },
          );
        },
        error: (error, _) => Text('error $error'),
        loading: () => Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
