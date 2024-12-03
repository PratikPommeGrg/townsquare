//svg data here...
const baseSVGPath = 'assets/svg/';

// svgs (light mode)
final kAppLogoIconSvg = _getSvgBasePath('app_logo.svg');
final kCalendarLightIconSvg = _getSvgBasePath('calendar_light_mode.svg');
final kMapLightIconSvg = _getSvgBasePath('map_light_mode.svg');
final kStarLightIconSvg = _getSvgBasePath('star_light_mode.svg');
final kUsersLightIconSvg = _getSvgBasePath('users_light_mode.svg');
final kPlusLightIconSvg = _getSvgBasePath('plus_light_mode.svg');
final kBellIconSvg = _getSvgBasePath('bell.svg');
final kSearchIconSvg = _getSvgBasePath('search.svg');
final kSlidersIconSvg = _getSvgBasePath('sliders.svg');
final kMapPinIconSvg = _getSvgBasePath('map_pin.svg');
final kUserIconSvg = _getSvgBasePath('user.svg');

//svgs (dark mode)
final kCalendarDarkIconSvg = _getSvgBasePath('calendar_dark_mode.svg');
final kMapDarkIconSvg = _getSvgBasePath('map_dark_mode.svg');
final kStarDarkIconSvg = _getSvgBasePath('star_dark_mode.svg');
final kUsersDarkIconSvg = _getSvgBasePath('users_dark_mode.svg');
final kPlusDarkIconSvg = _getSvgBasePath('plus_dark_mode.svg');

//svg function here...
String _getSvgBasePath(String name) {
  return baseSVGPath + name;
}
