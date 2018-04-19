import 'package:angular/angular.dart';
import 'package:ng_bulma_components/src/models/nav_bar_item.dart';
import 'package:ng_bulma_components/src/nav_bar/nav_bar_item_component.dart';

@Component(
  selector: 'nav-bar',
  templateUrl: 'nav_bar_component.html',
  directives: const [coreDirectives, NavBarItemComponent],
  providers: const [],
)
class NavBarComponent {

  bool _navBarMenuOpen = false;

  bool get navBarMenuIsOpen => _navBarMenuOpen;

  void toggleNavBarMenu() {
    _navBarMenuOpen = !_navBarMenuOpen;
  }


  @Input()
  List<NavBarItem> startMenuItems;

  @Input()
  List<NavBarItem> endMenuItems;

}
