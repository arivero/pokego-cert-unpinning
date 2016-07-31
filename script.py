import traceback
from mitmproxy.models import decoded 

def request(context, flow):
 try:
  if "/auth" in flow.request.url:
   with decoded(flow.request):
    if not "com.nianticlabs.pokemongo" in flow.request.content: return
    a=flow.request.content.split("&")
    for i in range(len(a)):
     if "client_sig" in a[i]: 
      a[i]="client_sig="+"321187995bc7cdc2b5fc91b11a96e2baa8602c62"
     if "callerSig" in a[i]:
      a[i]="callerSig="+"321187995bc7cdc2b5fc91b11a96e2baa8602c62"
    flow.request.content="&".join(a)
 except Exception:
  traceback.print_exc()

