class DataService {
 String fetchData() {
    return "something";
 }
} // возвращает строку

class Injector {
 static final Injector _singleton = Injector._internal();

 factory Injector() {
    return _singleton;
 }

 Injector._internal();

 DataService get dataService => DataService();
} // закрытый класс для внедрения, содержит метод для предоставления экземпляра DataService

void main() {
 var dataService = Injector().dataService;
 print(dataService.fetchData());
} // получаем экземпляр dataService через ijector 
