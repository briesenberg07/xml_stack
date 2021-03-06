# Validating an instance using multiple schemas

I'm working on doing this for `sinopia_maps`, see [map_storage # 13](https://github.com/uwlib-cams/map_storage/issues/13) (including a couple of failed attempts) and [sinopia_maps # 17](https://github.com/uwlib-cams/sinopia_maps/issues/17)
**Desired functionality**
- Store `.xsd` for the `propSet` > `<sinopia>` element separately from the `.xsd` for the `propSet` element at uwlib-cams/sinopia_maps
- Use oXygen autocomplete in the instance(s)


## Resources

- [Bharath thippireddy](https://www.youtube.com/channel/UC3YHhW96LPsAEo45yQSEYIA) > [XML Schema Include And Import](https://youtu.be/6By3Aoimh8Q)
	- Some useful bits:
		- `xsd:include` should be used to include schema files which exist under the same namespace
		- `xsd:import` allows us to use `.xsd` files from other namespaces
		- "when we don't specify `minOccurs` or `maxOccurs` the validator expects that element to occur at least once"
- From an oXygen error message:
	- See [Validation Scenarios](https://www.oxygenxml.com/doc/versions/24.0/ug-editor/topics/validation-scenario.html)
	- See Main Files help (?)

