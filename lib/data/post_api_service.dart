import 'package:chopper/chopper.dart';

part 'post_api_service.chopper.dart';

@ChopperApi(baseUrl: '/posts')
abstract class PostApiService extends ChopperService {
  @Get()
  Future<Response> getposts();
  @Get(path: '/{id}')
  Future<Response> getpost(@Path('id') int id);

  @Post()
  Future<Response> postpost(@Body() Map<String, dynamic> body);

  static PostApiService create() {
    final client =
        ChopperClient(baseUrl: 'https://jsonplaceholder.typicode.com',services: [_$PostApiService()],
    converter:JsonConverter(),

        );
    return _$PostApiService(client);

  }
}
