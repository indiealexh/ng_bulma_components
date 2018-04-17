import 'package:angular/angular.dart';

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

@Component(
  selector: 'nav-bar-item',
  templateUrl: 'nav_bar_item_component.html',
  directives: const [coreDirectives],
  providers: const [],
)
class NavBarItemComponent {
  @Input()
  NavBarItem navBarItem;

  bool get isDropDownMenu => (navBarItem.subItems.length > 0);
}

class NavBarItem {

  final String text;
  String url = null;
  List<NavBarItem> subItems = [];

  NavBarItem(this.text, {String url, List<NavBarItem> subItems});
}
