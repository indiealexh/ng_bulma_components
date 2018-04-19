import 'package:angular/angular.dart';
import 'package:ng_bulma_components/src/models/nav_bar_item.dart';

@Component(
  selector: 'nav-bar-item',
  templateUrl: 'nav_bar_item_component.html',
  directives: const [coreDirectives],
  providers: const [],
)
class NavBarItemComponent {
  @Input()
  NavBarDropDown navBarItem;

  Map<String, bool> get elementClasses => {
        "navbar-item": true,
        "has-dropdown": true,
        "is-hoverable": true
      };

  @HostBinding('class')
  String get classes {
    String classString = "";
    elementClasses.forEach((cssClass, use) {
      if (use) classString += "$cssClass ";
    });
    return classString;
  }
}
