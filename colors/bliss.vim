lua << EOF
package.loaded['bliss'] = nil
package.loaded['bliss.util'] = nil
package.loaded['bliss.colors'] = nil
package.loaded['bliss.theme'] = nil
package.loaded['bliss.functions'] = nil

require('bliss').set()
EOF
