#ifdef EXTENSIVE_META

#include "Meta_Maps.h"

#include <glbinding/gl/bitfield.h>


using namespace gl; // ToDo: multiple APIs?

namespace glbinding
{

{{#bitfieldsByGroup.groups}}
const std::unordered_map<{{name}}, std::string> Meta_StringsBy{{name}} =
{
{{#items}}
    { {{name}}::{{item.identifier}}, "{{item.name}}" }{{^last}},{{/last}}
{{/items}}
};

{{/bitfieldsByGroup.groups}}
} // namespace glbinding

#endif // EXTENSIVE_META
