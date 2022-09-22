# Platform support

Projects which are dependencies of the Cardano node MUST support all of:
- Linux
- MacOS
- Windows (cross-compilation is acceptable, even recommended)

This means that the project must compiled _and_ tested on those platforms.

## Rationale

The Cardano node supports all of these platforms, so all of its upstream dependencies must do so also, otherwise that will block the node.
