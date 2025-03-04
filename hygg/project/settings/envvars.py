from hygg.core.utils.collections import deep_update
from hygg.core.utils.settings import get_settings_from_environment

deep_update(globals(), get_settings_from_environment(ENVVAR_SETTINGS_PREFIX))   # type: ignore
