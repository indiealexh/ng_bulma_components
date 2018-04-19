abstract class NavBarItem {

  final String text;
  final String url;

  NavBarItem(this.text, {this.url = null});

  String get type {
    if(this is NavBarLink) return "link";
    if(this is NavBarDropDown) return "dropDown";
    return "none";
  }

}



class NavBarLink extends NavBarItem {

  NavBarLink(String text, {String url = null}) : super(text, url: url);
}

class NavBarDropDown extends NavBarItem {

  final List<NavBarLink> subItems;

  NavBarDropDown(String text, this.subItems, {String url = null}) : super(text, url: url);
}
