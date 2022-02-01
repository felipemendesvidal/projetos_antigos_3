<?php
/**
 * As configurações básicas do WordPress
 *
 * O script de criação wp-config.php usa esse arquivo durante a instalação.
 * Você não precisa usar o site, você pode copiar este arquivo
 * para "wp-config.php" e preencher os valores.
 *
 * Este arquivo contém as seguintes configurações:
 *
 * * Configurações do MySQL
 * * Chaves secretas
 * * Prefixo do banco de dados
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/pt-br:Editando_wp-config.php
 *
 * @package WordPress
 */

// ** Configurações do MySQL - Você pode pegar estas informações com o serviço de hospedagem ** //
/** O nome do banco de dados do WordPress */
define( 'DB_NAME', 'almeidasantos' );

/** Usuário do banco de dados MySQL */
define( 'DB_USER', 'almeidasantos' );

/** Senha do banco de dados MySQL */
define( 'DB_PASSWORD', 'Blog2019@' );

/** Nome do host do MySQL */
define( 'DB_HOST', 'almeidasantos.mysql.uhserver.com' );

/** Charset do banco de dados a ser usado na criação das tabelas. */
define( 'DB_CHARSET', 'utf8mb4' );

/** O tipo de Collate do banco de dados. Não altere isso se tiver dúvidas. */
define('DB_COLLATE', '');

/**#@+
 * Chaves únicas de autenticação e salts.
 *
 * Altere cada chave para um frase única!
 * Você pode gerá-las
 * usando o {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org
 * secret-key service}
 * Você pode alterá-las a qualquer momento para invalidar quaisquer
 * cookies existentes. Isto irá forçar todos os
 * usuários a fazerem login novamente.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '8!%9Fx$q23#FHTtS*E_uI(H-f.(&mD^xZ1|7ai$ki u_gxini) V:hj:H](VoR6|' );
define( 'SECURE_AUTH_KEY',  'r=_*J]F6IWr#&4w}=e%fDmx`EQiu)|atv$9k+ dv1;,J7-0(ukJJNh::o#V-i]3m' );
define( 'LOGGED_IN_KEY',    'Mey<PC&)qDMb$*[tdDgKtBZkWVZtcb@@w$;4PG& <v(jUyq/9@dFTW%L|<g%jn_6' );
define( 'NONCE_KEY',        '|Kv/cyGW hzDo ilp9qi3zCx=1mqq6y&~|/f}g[VxV:!M2?l5(dIg,E8qH(SL`@l' );
define( 'AUTH_SALT',        'd4y)$v**nKjI[!WW,xqs+PyfDeLQ5SaTIS1Vc46psYF+nfr%|STYDu^Bp<zCwk~i' );
define( 'SECURE_AUTH_SALT', 'zjikUN0EtDQ4z()F|SLyB>8**_@{5Hxe(7lgkvRh6vD1$>!fcnv5*_Od*SDU_r{g' );
define( 'LOGGED_IN_SALT',   'I.d$kp*z+{>i1X%UA]+q+%pzue^mV-$&CJo^iu(wltH<KXt568Ufd({CQAVn50v,' );
define( 'NONCE_SALT',       '3X]D&5/rFg`XYpE_0JO]gD4cjZ2!U8;gQ>HM2X3GrIIB9)+Yq(iwpnQ6.z@Z|9xo' );

/**#@-*/

/**
 * Prefixo da tabela do banco de dados do WordPress.
 *
 * Você pode ter várias instalações em um único banco de dados se você der
 * um prefixo único para cada um. Somente números, letras e sublinhados!
 */
$table_prefix = 'wp_';

/**
 * Para desenvolvedores: Modo de debug do WordPress.
 *
 * Altere isto para true para ativar a exibição de avisos
 * durante o desenvolvimento. É altamente recomendável que os
 * desenvolvedores de plugins e temas usem o WP_DEBUG
 * em seus ambientes de desenvolvimento.
 *
 * Para informações sobre outras constantes que podem ser utilizadas
 * para depuração, visite o Codex.
 *
 * @link https://codex.wordpress.org/pt-br:Depura%C3%A7%C3%A3o_no_WordPress
 */
define('WP_DEBUG', false);

/* Isto é tudo, pode parar de editar! :) */

/** Caminho absoluto para o diretório WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Configura as variáveis e arquivos do WordPress. */
require_once(ABSPATH . 'wp-settings.php');
