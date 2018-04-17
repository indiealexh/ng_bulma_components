import 'package:angular/angular.dart';
import 'package:ng_bulma_components/ng_bulma_components.dart';

// ignore: uri_has_not_been_generated
import 'main.template.dart' as ng;

@Component(
  selector: 'my-app',
  styleUrls: const ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: const [NavBarComponent],
  providers: const [],
)
class AppComponent {
  // Nothing here yet. All logic is in TodoListComponent.
  List<NavBarItem> navBarItems = [
    new NavBarItem("Home"),
    new NavBarItem("List", subItems: [new NavBarItem("subItem1")])
  ];
}

void main() => runApp(ng.AppComponentNgFactory);
