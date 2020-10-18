import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class Configuracion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SettingsList(
      sections: [
        SettingsSection(
          title: 'Configuración de Seguridad',
          tiles: [
            SettingsTile(
              title: 'Cambiar Contraseña',
              leading: Icon(Icons.lock),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
            SettingsTile.switchTile(
              title: 'Lector de Huellas',
              subtitle: 'Activado',
              leading: Icon(Icons.fingerprint),
              switchValue: true,
              onToggle: (bool value) {},
            ),
          ],
        ),
        SettingsSection(
          title: 'Configuración de Notificaciones',
          tiles: [
            SettingsTile(
              title: 'Notificaciones',
              subtitle: 'Activadas',
              leading: Icon(Icons.notification_important),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
          ],
        ),
        SettingsSection(
          title: 'Configuraciónes generales',
          tiles: [
            SettingsTile(
              title: 'Idioma',
              subtitle: 'Español - República Dominicana',
              leading: Icon(Icons.language),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
            SettingsTile.switchTile(
              title: 'Modo Oscuro',
              subtitle: 'Desactivado',
              leading: Icon(Icons.lightbulb_outline),
              switchValue: false,
              onToggle: (bool value) {},
            ),
            SettingsTile(
              title: 'Fuentes',
              subtitle: 'Able Font',
              leading: Icon(Icons.language),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
          ],
        )
      ],
    );
  }
}
