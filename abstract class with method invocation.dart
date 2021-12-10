void main()async{
var startupvarible=await startup.initialize();
print("main finished");

}


abstract class startup{
 static Future<void> initialize()async {


   await Future.delayed(Duration(seconds: 4));
    print("initialization completed");
  }


}