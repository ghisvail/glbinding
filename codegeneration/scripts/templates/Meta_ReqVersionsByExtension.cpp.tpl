
#include "Meta_Maps.h"

#include <glbinding/gl/extension.h>
#include <glbinding/Version.h>


using namespace gl;

namespace glbinding
{

const std::unordered_map<GLextension, Version> Meta_ReqVersionsByExtension =
{
{{#extensionsIncore.items}}{{#item.incore}}    { GLextension::{{item.identifier}}, { {{item.incoreMajor}}, {{item.incoreMinor}} } }{{^last}},{{/last}}
{{/item.incore}}{{/extensionsIncore.items}}};

} // namespace glbinding
