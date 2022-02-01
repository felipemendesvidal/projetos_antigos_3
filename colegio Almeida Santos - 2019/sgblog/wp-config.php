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
define( 'DB_NAME', 'segundoblog' );

/** Usuário do banco de dados MySQL */
define( 'DB_USER', 'almeidasantos1' );

/** Senha do banco de dados MySQL */
define( 'DB_PASSWORD', 'Blog2019@' );

/** Nome do host do MySQL */
define( 'DB_HOST', 'segundoblog.mysql.uhserver.com' );

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
define( 'AUTH_KEY',         '*vS`t4DB{N?ciRtdD@ =T$kAh9e!# E:(G0JZ(SV7C|]&@B)i*A/oxHV4mG#]Ms,' );
define( 'SECURE_AUTH_KEY',  'rKmfXjaR&` xGM%[mG{WdYh%-vAUM*dQN6!.Q$^-^XEVve{bRLmaw[rEs ZZHn7J' );
define( 'LOGGED_IN_KEY',    '&LyXUb[.#lFYF3;Q%~Y09v.Xy[)Ehs17z0aewfq(vIM[_0U=X=Nu|:m9b{W !X3b' );
define( 'NONCE_KEY',        'n4{A5>1C|#-L.`]X:+Gb..r]zr*3|^Md?*D9p3h8y)O),W@/hj#ILC5sj<9+uA)D' );
define( 'AUTH_SALT',        'GX.OOL-*Bc*ijB8,yC9L`<t%il{-$<@2 m :sH1p2sSRwGwJx>csX#05JgTp]tE$' );
define( 'SECURE_AUTH_SALT', '9:>AV)F]>sHKjh]6!}s4{nv$N]z`~%-!!.u/uUYDjgDh@-w%:PW-G@Qc,8/FWZ;t' );
define( 'LOGGED_IN_SALT',   '/V`7@Tq./t1?iz>[.cro0Nf=wJ.gne3p`-wN.Dq/x?u(.02@OR*y3MNGwf-}&Tu&' );
define( 'NONCE_SALT',       '_{P3uzan=.Df!3FQoW&wMRY:EUkijXV0x} [4QF]{(L<VLK&#2Fybu2P<1Gcq^ZS' );

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
