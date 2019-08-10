// *** Source file generated by HIDL Version 1.3 from ws_config.ecm ***
// *** Not to be hand edited (changes will be lost on re-generation) ***

#ifndef ws_config_EX_ESPGEN_INCLUDED
#define ws_config_EX_ESPGEN_INCLUDED

#pragma warning( disable : 4786)

//JLib
#include "jliball.hpp"

//SCM Interfaces
#include "esp.hpp"
#include "soapesp.hpp"
#include "ws_config.hpp"
//ESP Bindings
#include "SOAP/Platform/soapmessage.hpp"
#include "SOAP/Platform/soapmacro.hpp"
#include "SOAP/Platform/soapservice.hpp"
#include "SOAP/Platform/soapparam.hpp"
#include "SOAP/client/soapclient.hpp"


namespace ws_config
{

class CConfigAccessRequest : public CSoapRequestBinding,
   implements IEspConfigAccessRequest,
   implements IClientConfigAccessRequest
{
protected:

	void *m_eventSink = nullptr;

	IInterface* m_RequestState = nullptr;
	StringBuffer m_serviceName;
	StringBuffer m_methodName;
	StringBuffer m_msgName;

	long soap_reqid = 0;
	Mutex m_mutex;
public:
	IMPLEMENT_IINTERFACE;

	CConfigAccessRequest(const char *serviceName, const char *bcompat);

	CConfigAccessRequest(const char *serviceName, IRpcMessageBinding *init=NULL);
	CConfigAccessRequest(const char *serviceName, IRpcMessage* rpcmsg);
	CConfigAccessRequest(IEspContext* ctx, const char *serviceName, IProperties *params, MapStrToBuf *attachments);
	IEspClientRpcSettings &rpc(){return *static_cast<IEspClientRpcSettings*>(this);}


	virtual const char *getNsURI(){return NULL;}

	virtual const char *getNsPrefix(){return NULL;}

	virtual const char *getRootName(){return m_msgName.str();}

	void setMsgName(const char *msgname)
	{
		m_msgName.set(msgname);
	}

	static const char *queryXsdElementName()
	{
		return "ConfigAccessRequest";
	}

	static StringBuffer &getXsdDefinition(IEspContext &context, CHttpRequest* request, StringBuffer &schema, BoolHash&added, const char *xns="xsd", const char *wsns="tns", unsigned flags=1)
	{
		return getXsdDefinition(context, request, queryXsdElementName(), schema, added, xns, wsns, flags);
	}
	static StringBuffer &getXsdDefinition(IEspContext &context, CHttpRequest* request, const char *msgTypeName, StringBuffer &schema, BoolHash&added, const char *xns="xsd", const char *wsns="tns", unsigned flags=1);
	static void getMapInfo(IMapInfo& info);
	static void getMapInfo(IMapInfo& info, BoolHash& added);
	static StringBuffer &getHtmlForm(IEspContext &context, CHttpRequest* request, const char *serv, const char *method, StringBuffer &form, bool includeFormTag=true, const char *prefix=NULL);
	static bool hasCustomHttpContent()
	{
		return false;
	}
	StringBuffer &serializeHtml(IEspContext &context, const char *serv, const char *method, StringBuffer &html);

	void serialize(IRpcMessage& rpc_resp);

	void copy(CConfigAccessRequest &from);

	void copy(IConstConfigAccessRequest &ifrom);

	void serializeContent(IEspContext* ctx, StringBuffer& buffer, IProperties **pprops=NULL);

	void serializeAttributes(IEspContext* ctx, StringBuffer& s);

	void getAttributes(IProperties &attributes);

	static void serializer(IEspContext* ctx, IConstConfigAccessRequest &ifrom, StringBuffer& buffer, bool keepRootTag=true);
	void setEventSink(void * val){m_eventSink=val;}
	void * getEventSink(){return m_eventSink;}
	void setState(IInterface * val){m_RequestState = val;}
	IInterface * queryState(){return m_RequestState;}
	void setMethod(const char * method){m_methodName.set(method);}
	const char * getMethod(){return m_methodName.str();}

	void setReqId(unsigned val){soap_reqid=val;}
	unsigned getReqId(){return soap_reqid;}

	void lock(){m_mutex.lock();}
	void unlock(){m_mutex.unlock();}


	bool unserialize(IRpcMessage& rpc_request, const char *tagname, const char *basepath);

	bool unserialize(IEspContext* ctx, CSoapValue& soapval);

	bool unserialize(IEspContext* ctx, IProperties& params, MapStrToBuf *attachments, const char *basepath=NULL);

};

class CConfigAccessResponse : public CSoapResponseBinding,
   implements IEspConfigAccessResponse,
   implements IClientConfigAccessResponse
{
protected:
	SoapParam<int> m_AccessLevel;

	void *m_eventSink = nullptr;

	IInterface* m_RequestState = nullptr;
	StringBuffer m_serviceName;
	StringBuffer m_methodName;
	StringBuffer m_msgName;

	long soap_reqid = 0;
	Mutex m_mutex;
public:
	IMPLEMENT_IINTERFACE;

	CConfigAccessResponse(const char *serviceName, const char *bcompat);

	CConfigAccessResponse(const char *serviceName, IRpcMessageBinding *init=NULL);
	CConfigAccessResponse(const char *serviceName, IRpcMessage* rpcmsg);
	CConfigAccessResponse(IEspContext* ctx, const char *serviceName, IProperties *params, MapStrToBuf *attachments);
	virtual const char *getNsURI(){return NULL;}

	virtual const char *getNsPrefix(){return NULL;}

	virtual const char *getRootName(){return m_msgName.str();}

	void setMsgName(const char *msgname)
	{
		m_msgName.set(msgname);
	}

	static const char *queryXsdElementName()
	{
		return "ConfigAccessResponse";
	}

	static StringBuffer &getXsdDefinition(IEspContext &context, CHttpRequest* request, StringBuffer &schema, BoolHash&added, const char *xns="xsd", const char *wsns="tns", unsigned flags=1)
	{
		return getXsdDefinition(context, request, queryXsdElementName(), schema, added, xns, wsns, flags);
	}
	static StringBuffer &getXsdDefinition(IEspContext &context, CHttpRequest* request, const char *msgTypeName, StringBuffer &schema, BoolHash&added, const char *xns="xsd", const char *wsns="tns", unsigned flags=1);
	static void getMapInfo(IMapInfo& info);
	static void getMapInfo(IMapInfo& info, BoolHash& added);
	static StringBuffer &getHtmlForm(IEspContext &context, CHttpRequest* request, const char *serv, const char *method, StringBuffer &form, bool includeFormTag=true, const char *prefix=NULL);
	static bool hasCustomHttpContent()
	{
		return false;
	}
	StringBuffer &serializeHtml(IEspContext &context, const char *serv, const char *method, StringBuffer &html);

	void serialize(IRpcMessage& rpc_resp);

	void copy(CConfigAccessResponse &from);

	void copy(IConstConfigAccessResponse &ifrom);

	void serializeContent(IEspContext* ctx, StringBuffer& buffer, IProperties **pprops=NULL);

	void serializeAttributes(IEspContext* ctx, StringBuffer& s);

	void getAttributes(IProperties &attributes);

	static void serializer(IEspContext* ctx, IConstConfigAccessResponse &ifrom, StringBuffer& buffer, bool keepRootTag=true);
	void setEventSink(void * val){m_eventSink=val;}
	void * getEventSink(){return m_eventSink;}
	void setState(IInterface * val){m_RequestState = val;}
	IInterface * queryState(){return m_RequestState;}
	void setMethod(const char * method){m_methodName.set(method);}
	const char * getMethod(){return m_methodName.str();}

	void setReqId(unsigned val){soap_reqid=val;}
	unsigned getReqId(){return soap_reqid;}

	void lock(){m_mutex.lock();}
	void unlock(){m_mutex.unlock();}


	bool unserialize(IRpcMessage& rpc_request, const char *tagname, const char *basepath);

	bool unserialize(IEspContext* ctx, CSoapValue& soapval);

	bool unserialize(IEspContext* ctx, IProperties& params, MapStrToBuf *attachments, const char *basepath=NULL);

	virtual void setRedirectUrl(const char *url)
	{ CSoapResponseBinding::setRedirectUrl(url); }

	virtual const IMultiException& getExceptions()
	{ return CSoapResponseBinding::getExceptions(); }

	virtual int queryClientStatus()
	{ return CSoapResponseBinding::getRpcState(); }

	virtual void noteException(IException& e)
	{  CSoapResponseBinding::noteException(e); }

	int getAccessLevel();
	void setAccessLevel(int val);
};

class Cws_configPingRequest : public CSoapRequestBinding,
   implements IEspws_configPingRequest,
   implements IClientws_configPingRequest
{
protected:

	void *m_eventSink = nullptr;

	IInterface* m_RequestState = nullptr;
	StringBuffer m_serviceName;
	StringBuffer m_methodName;
	StringBuffer m_msgName;

	long soap_reqid = 0;
	Mutex m_mutex;
public:
	IMPLEMENT_IINTERFACE;

	Cws_configPingRequest(const char *serviceName, const char *bcompat);

	Cws_configPingRequest(const char *serviceName, IRpcMessageBinding *init=NULL);
	Cws_configPingRequest(const char *serviceName, IRpcMessage* rpcmsg);
	Cws_configPingRequest(IEspContext* ctx, const char *serviceName, IProperties *params, MapStrToBuf *attachments);
	IEspClientRpcSettings &rpc(){return *static_cast<IEspClientRpcSettings*>(this);}


	virtual const char *getNsURI(){return NULL;}

	virtual const char *getNsPrefix(){return NULL;}

	virtual const char *getRootName(){return m_msgName.str();}

	void setMsgName(const char *msgname)
	{
		m_msgName.set(msgname);
	}

	static const char *queryXsdElementName()
	{
		return "ws_configPingRequest";
	}

	static StringBuffer &getXsdDefinition(IEspContext &context, CHttpRequest* request, StringBuffer &schema, BoolHash&added, const char *xns="xsd", const char *wsns="tns", unsigned flags=1)
	{
		return getXsdDefinition(context, request, queryXsdElementName(), schema, added, xns, wsns, flags);
	}
	static StringBuffer &getXsdDefinition(IEspContext &context, CHttpRequest* request, const char *msgTypeName, StringBuffer &schema, BoolHash&added, const char *xns="xsd", const char *wsns="tns", unsigned flags=1);
	static void getMapInfo(IMapInfo& info);
	static void getMapInfo(IMapInfo& info, BoolHash& added);
	static StringBuffer &getHtmlForm(IEspContext &context, CHttpRequest* request, const char *serv, const char *method, StringBuffer &form, bool includeFormTag=true, const char *prefix=NULL);
	static bool hasCustomHttpContent()
	{
		return false;
	}
	StringBuffer &serializeHtml(IEspContext &context, const char *serv, const char *method, StringBuffer &html);

	void serialize(IRpcMessage& rpc_resp);

	void copy(Cws_configPingRequest &from);

	void copy(IConstws_configPingRequest &ifrom);

	void serializeContent(IEspContext* ctx, StringBuffer& buffer, IProperties **pprops=NULL);

	void serializeAttributes(IEspContext* ctx, StringBuffer& s);

	void getAttributes(IProperties &attributes);

	static void serializer(IEspContext* ctx, IConstws_configPingRequest &ifrom, StringBuffer& buffer, bool keepRootTag=true);
	void setEventSink(void * val){m_eventSink=val;}
	void * getEventSink(){return m_eventSink;}
	void setState(IInterface * val){m_RequestState = val;}
	IInterface * queryState(){return m_RequestState;}
	void setMethod(const char * method){m_methodName.set(method);}
	const char * getMethod(){return m_methodName.str();}

	void setReqId(unsigned val){soap_reqid=val;}
	unsigned getReqId(){return soap_reqid;}

	void lock(){m_mutex.lock();}
	void unlock(){m_mutex.unlock();}


	bool unserialize(IRpcMessage& rpc_request, const char *tagname, const char *basepath);

	bool unserialize(IEspContext* ctx, CSoapValue& soapval);

	bool unserialize(IEspContext* ctx, IProperties& params, MapStrToBuf *attachments, const char *basepath=NULL);

};

class Cws_configPingResponse : public CSoapResponseBinding,
   implements IEspws_configPingResponse,
   implements IClientws_configPingResponse
{
protected:

	void *m_eventSink = nullptr;

	IInterface* m_RequestState = nullptr;
	StringBuffer m_serviceName;
	StringBuffer m_methodName;
	StringBuffer m_msgName;

	long soap_reqid = 0;
	Mutex m_mutex;
public:
	IMPLEMENT_IINTERFACE;

	Cws_configPingResponse(const char *serviceName, const char *bcompat);

	Cws_configPingResponse(const char *serviceName, IRpcMessageBinding *init=NULL);
	Cws_configPingResponse(const char *serviceName, IRpcMessage* rpcmsg);
	Cws_configPingResponse(IEspContext* ctx, const char *serviceName, IProperties *params, MapStrToBuf *attachments);
	virtual const char *getNsURI(){return NULL;}

	virtual const char *getNsPrefix(){return NULL;}

	virtual const char *getRootName(){return m_msgName.str();}

	void setMsgName(const char *msgname)
	{
		m_msgName.set(msgname);
	}

	static const char *queryXsdElementName()
	{
		return "ws_configPingResponse";
	}

	static StringBuffer &getXsdDefinition(IEspContext &context, CHttpRequest* request, StringBuffer &schema, BoolHash&added, const char *xns="xsd", const char *wsns="tns", unsigned flags=1)
	{
		return getXsdDefinition(context, request, queryXsdElementName(), schema, added, xns, wsns, flags);
	}
	static StringBuffer &getXsdDefinition(IEspContext &context, CHttpRequest* request, const char *msgTypeName, StringBuffer &schema, BoolHash&added, const char *xns="xsd", const char *wsns="tns", unsigned flags=1);
	static void getMapInfo(IMapInfo& info);
	static void getMapInfo(IMapInfo& info, BoolHash& added);
	static StringBuffer &getHtmlForm(IEspContext &context, CHttpRequest* request, const char *serv, const char *method, StringBuffer &form, bool includeFormTag=true, const char *prefix=NULL);
	static bool hasCustomHttpContent()
	{
		return false;
	}
	StringBuffer &serializeHtml(IEspContext &context, const char *serv, const char *method, StringBuffer &html);

	void serialize(IRpcMessage& rpc_resp);

	void copy(Cws_configPingResponse &from);

	void copy(IConstws_configPingResponse &ifrom);

	void serializeContent(IEspContext* ctx, StringBuffer& buffer, IProperties **pprops=NULL);

	void serializeAttributes(IEspContext* ctx, StringBuffer& s);

	void getAttributes(IProperties &attributes);

	static void serializer(IEspContext* ctx, IConstws_configPingResponse &ifrom, StringBuffer& buffer, bool keepRootTag=true);
	void setEventSink(void * val){m_eventSink=val;}
	void * getEventSink(){return m_eventSink;}
	void setState(IInterface * val){m_RequestState = val;}
	IInterface * queryState(){return m_RequestState;}
	void setMethod(const char * method){m_methodName.set(method);}
	const char * getMethod(){return m_methodName.str();}

	void setReqId(unsigned val){soap_reqid=val;}
	unsigned getReqId(){return soap_reqid;}

	void lock(){m_mutex.lock();}
	void unlock(){m_mutex.unlock();}


	bool unserialize(IRpcMessage& rpc_request, const char *tagname, const char *basepath);

	bool unserialize(IEspContext* ctx, CSoapValue& soapval);

	bool unserialize(IEspContext* ctx, IProperties& params, MapStrToBuf *attachments, const char *basepath=NULL);

	virtual void setRedirectUrl(const char *url)
	{ CSoapResponseBinding::setRedirectUrl(url); }

	virtual const IMultiException& getExceptions()
	{ return CSoapResponseBinding::getExceptions(); }

	virtual int queryClientStatus()
	{ return CSoapResponseBinding::getRpcState(); }

	virtual void noteException(IException& e)
	{  CSoapResponseBinding::noteException(e); }

};

class Cws_config : public CInterface,
	implements IEspws_config
{
private:
	IEspContainer* m_container;
public:
	IMPLEMENT_IINTERFACE;

	Cws_config(){}
	virtual ~Cws_config(){}
	virtual void init(IPropertyTree *cfg, const char *process, const char *service)
	{
	}
	virtual bool init(const char * service, const char * type, IPropertyTree * cfg, const char * process)
	{
		return true;
	}
	virtual void setContainer(IEspContainer *c)
	{
		m_container = c;
	}
	virtual IEspContainer *queryContainer()
	{
		return m_container;
	}
	virtual const char* getServiceType(){return "ws_config";}

	virtual bool unsubscribeServiceFromDali(){return false;}

	virtual bool subscribeServiceToDali(){return false;}

	virtual bool detachServiceFromDali(){return false;}

	virtual bool attachServiceToDali(){return false;}

	virtual bool canDetachFromDali(){return false;}

	//bool onGetConfigAccess(IEspContext &context, IEspConfigAccessRequest &req, IEspConfigAccessResponse &resp)
	//{
		//return false;
	//}
	bool onPing(IEspContext &context, IEspws_configPingRequest &req, IEspws_configPingResponse &resp)
	{
		return true;
	}
};





class Cws_configSoapBinding : public CHttpSoapBinding
{
public:
	Cws_configSoapBinding(http_soap_log_level level=hsl_none);
	Cws_configSoapBinding(IPropertyTree* cfg, const char *bindname=NULL, const char *procname=NULL, http_soap_log_level level=hsl_none);
	virtual void init_strings();
	virtual unsigned getCacheMethodCount(){return m_cacheMethodCount;}
	virtual int processRequest(IRpcMessage* rpc_call, IRpcMessage* rpc_response);
	int getXsdDefinition(IEspContext &context, CHttpRequest* request, StringBuffer &content, const char *service, const char *method, bool mda);
	virtual int getMethodHtmlForm(IEspContext &context, CHttpRequest* request, const char *serv, const char *method, StringBuffer &page, bool bIncludeFormTag);
	int getQualifiedNames(IEspContext& ctx, MethodInfoArray & methods);
	StringBuffer & getServiceName(StringBuffer &resp);
	bool isValidServiceName(IEspContext &context, const char *name);
	bool qualifyMethodName(IEspContext &context, const char *methname, StringBuffer *methQName);
	bool qualifyServiceName(IEspContext &context, const char *servname, const char *methname, StringBuffer &servQName, StringBuffer *methQName);
	virtual int onGetFile(IEspContext &context, CHttpRequest* request, CHttpResponse* response, const char *pathex);
	virtual int onGetForm(IEspContext &context, CHttpRequest* request, CHttpResponse* response, const char *service, const char *method);
	virtual int onGetXForm(IEspContext &context, CHttpRequest* request, CHttpResponse* response, const char *service, const char *method);
	virtual int onGetService(IEspContext &context, CHttpRequest* request, CHttpResponse* response, const char *service, const char *method, const char *pathex);
	virtual IRpcRequestBinding *createReqBinding(IEspContext &context, IHttpMessage* request, const char *service, const char *method);
	virtual int onGetInstantQuery(IEspContext &context, CHttpRequest* request, CHttpResponse* response, const char *service, const char *method);
	void setXslProcessor(IInterface *xslp){}
	unsigned m_cacheMethodCount = 0;
};



class CClientws_config : public CInterface,
	implements IClientws_config
{
protected:
	StringBuffer soap_proxy;
	StringBuffer soap_url;
	StringBuffer soap_userid;
	StringBuffer soap_password;
	StringBuffer soap_realm;
	StringBuffer soap_action;
	long soap_reqid = 0;

public:
	IMPLEMENT_IINTERFACE;

	CClientws_config()
	{
		soap_reqid=0;
			soap_action.append("ws_config");
	}
	virtual ~CClientws_config(){}
	virtual void setProxyAddress(const char *address)
	{
		soap_proxy.set(address);
	}
	virtual void addServiceUrl(const char *url)
	{
		soap_url.set(url);
	}
	virtual void removeServiceUrl(const char *url)
	{
	}
	virtual void setUsernameToken(const char *userid,const char *password,const char *realm)
	{
		 soap_userid.set(userid);
		 soap_password.set(password);
		 soap_realm.set(realm);
	}
	virtual void setAction(const char *action)
	{
		soap_action.set(action);
	}

	virtual IClientConfigAccessRequest * createGetConfigAccessRequest();
	virtual IClientConfigAccessResponse * GetConfigAccess(IClientConfigAccessRequest *request);
	virtual void async_GetConfigAccess(IClientConfigAccessRequest *request, IClientws_configEvents *events,IInterface* state=0);

	virtual IClientConfigAccessResponse *GetConfigAccessFn();

	virtual IClientws_configPingRequest * createPingRequest();
	virtual IClientws_configPingResponse * Ping(IClientws_configPingRequest *request);
	virtual void async_Ping(IClientws_configPingRequest *request, IClientws_configEvents *events,IInterface* state=0);

	virtual IClientws_configPingResponse *PingFn();
	static int transferThunkEvent(void *data);
#ifdef _WIN32
	static void espWorkerThread(void* data);
#else
	static void *espWorkerThread(void *data);
#endif
};



}
using namespace ws_config;

#endif //ws_config_ESPGEN_INCLUDED