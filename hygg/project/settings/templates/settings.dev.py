# mypy: ignore-errors

DEBUG = True
SECRET_KEY = 'django-insecure-_g)pnv-_oyba^+=!%o=w)obu7x63#2)5kyn5n!h5^xcho%gs6r'
LOGGING['formatters']['colored'] = {
    '()': 'colorlog.ColoredFormatter',
    'format': '%(log_color)s%(asctime)s %(levelname)s %(name)s %(bold_white)s%(message)s',
}
LOGGING['loggers']['core']['level'] = 'DEBUG'
LOGGING['handlers']['console']['level'] = 'DEBUG'
LOGGING['handlers']['console']['formatter'] = 'colored'
