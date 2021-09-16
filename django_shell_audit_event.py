from elacarte.common.models import AuditEvent
AuditEvent.objects.filter().latest('restaurant')