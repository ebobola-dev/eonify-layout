# Верстка макета [Eonify - Mobile App Authentication Page (Community)](https://www.figma.com/community/file/1163692789489036820) by [@templatecookie](https://www.figma.com/@templatecookie) на Flutter
#### Немного о многом

- 7 экранов макета -> 3 экрана в приложении (Splash, Auth, Reset Password)
- Страницы Sign Up / Sign In реализованы на одном экране(Auth), переключение на Sign In просто сркрывает текстовое поле ввода для имени, а также меняет некоторые кнопки и надписи
- Экран Reset Password реализован как PageView с 3 дочерними виджетами (этапами восстановления пароля)
- На текстовых полях с паролем присутсвует кнопка для скрытия содержимого поля

#### Скриншоты
<img src="/assets/screenshots/splash_screen_loading.jpg" alt="splash_screen_loading" width="200"/> <img src="/assets/screenshots/splash_screen1.jpg" alt="splash_screen1" width="200"/> <img src="/assets/screenshots/splash_screen2.jpg" alt="splash_screen2" width="200"/>

<img src="/assets/screenshots/sign_up_screen.jpg" alt="sign_up_screen" width="200"/> <img src="/assets/screenshots/sign_up_interaction.jpg" alt="sign_up_interaction" width="200"/> <img src="/assets/screenshots/sign_in_screen.jpg" alt="sign_in_screen" width="200"/>

<img src="/assets/screenshots/forget_password.jpg" alt="forget_password" width="200"/> <img src="/assets/screenshots/enter_otp.jpg" alt="enter_otp" width="200"/> <img src="/assets/screenshots/reset_password.jpg" alt="reset_password" width="200"/>

<img src="/assets/screenshots/enter_otp_interaction.jpg" alt="enter_otp_interaction" width="200"/> <img src="/assets/screenshots/reset_password_interaction.jpg" alt="reset_password_interaction" width="200"/> <img src="/assets/screenshots/reset_password_interaction2.jpg" alt="reset_password_interaction2" width="200"/>

#### Взаимодействие
<img src="/assets/screenshots/splash.gif" alt="splash gif" width="200"/> <img src="/assets/screenshots/sign_up_in_toggle.gif" alt="sign up in toggle gif" width="200"/> <img src="/assets/screenshots/password_visibility_toggle.gif" alt="password visibility toggle gif" width="200"/>

<img src="/assets/screenshots/reset_password.gif" alt="reset_password gif" width="200"/> <img src="/assets/screenshots/reset_password_interaction.gif" alt="reset_password_interaction gif" width="200"/> <img src="/assets/screenshots/submitting.gif" alt="submitting gif" width="200"/>


#### Используемые библиотеки
- [**flutter_svg**](https://pub.dev/packages/flutter_svg)