// *** Include file generated by HIDL Version 1.3 from ws_store.ecm ***
// *** Not to be hand edited (changes will be lost on re-generation) ***

#ifndef ws_store_SCM_INCL
#define ws_store_SCM_INCL

#include "esp.hpp"




interface IConstKVPair : extends IEspStruct
{
	virtual const char * getKey()=0;
	virtual const char * getValue()=0;
};

interface IEspKVPair : extends IConstKVPair
{
	virtual void setKey(const char * val)=0;
	virtual void setValue(const char * val)=0;
	virtual void copy(IConstKVPair &from)=0;
};

interface IClientKVPair : extends IInterface
{
	virtual void setKey(const char * val)=0;
	virtual void setValue(const char * val)=0;
	virtual const char * getKey()=0;
	virtual const char * getValue()=0;
};



interface IConstNamespaceSet : extends IEspStruct
{
	virtual const char * getNamespace()=0;
	virtual IArrayOf<IConstKVPair> & getEntries()=0;
};

interface IEspNamespaceSet : extends IConstNamespaceSet
{
	virtual void setNamespace(const char * val)=0;
	virtual void setEntries(IArrayOf<IEspKVPair> &val)=0;
	virtual void setEntries(IArrayOf<IConstKVPair> &val)=0;
	virtual void copy(IConstNamespaceSet &from)=0;
};

interface IClientNamespaceSet : extends IInterface
{
	virtual void setNamespace(const char * val)=0;
	virtual void setEntries(IArrayOf<IEspKVPair> &val)=0;
	virtual void setEntries(IArrayOf<IConstKVPair> &val)=0;
	virtual const char * getNamespace()=0;
	virtual IArrayOf<IConstKVPair> & getEntries()=0;
};



interface IConstListKeysRequest : extends IEspRequest
{
	virtual const char * getStoreName()=0;
	virtual const char * getNamespace()=0;
	virtual bool getUserSpecific()=0;
};

interface IEspListKeysRequest : extends IConstListKeysRequest
{
	virtual void setStoreName(const char * val)=0;
	virtual void setNamespace(const char * val)=0;
	virtual void setUserSpecific(bool val)=0;
	virtual void copy(IConstListKeysRequest &from)=0;
};

interface IClientListKeysRequest : extends IInterface
{

	virtual IEspClientRpcSettings &rpc() = 0;

	virtual void setStoreName(const char * val)=0;
	virtual void setNamespace(const char * val)=0;
	virtual void setUserSpecific(bool val)=0;
};



interface IConstListKeysResponse : extends IEspResponse
{
	virtual const char * getStoreName()=0;
	virtual const char * getNamespace()=0;
	virtual StringArray & getKeySet()=0;
};

interface IEspListKeysResponse : extends IConstListKeysResponse
{
	virtual void setStoreName(const char * val)=0;
	virtual void setNamespace(const char * val)=0;
	virtual void setKeySet(StringArray &val)=0;
	virtual void copy(IConstListKeysResponse &from)=0;
};

interface IClientListKeysResponse : extends IInterface
{

	virtual int queryClientStatus()=0;
	virtual const char * getStoreName()=0;
	virtual const char * getNamespace()=0;
	virtual StringArray & getKeySet()=0;

	virtual const IMultiException& getExceptions()=0;
};



interface IConstListNamespacesRequest : extends IEspRequest
{
	virtual const char * getStoreName()=0;
	virtual bool getUserSpecific()=0;
};

interface IEspListNamespacesRequest : extends IConstListNamespacesRequest
{
	virtual void setStoreName(const char * val)=0;
	virtual void setUserSpecific(bool val)=0;
	virtual void copy(IConstListNamespacesRequest &from)=0;
};

interface IClientListNamespacesRequest : extends IInterface
{

	virtual IEspClientRpcSettings &rpc() = 0;

	virtual void setStoreName(const char * val)=0;
	virtual void setUserSpecific(bool val)=0;
};



interface IConstListNamespacesResponse : extends IEspResponse
{
	virtual const char * getStoreName()=0;
	virtual StringArray & getNamespaces()=0;
};

interface IEspListNamespacesResponse : extends IConstListNamespacesResponse
{
	virtual void setStoreName(const char * val)=0;
	virtual void setNamespaces(StringArray &val)=0;
	virtual void copy(IConstListNamespacesResponse &from)=0;
};

interface IClientListNamespacesResponse : extends IInterface
{

	virtual int queryClientStatus()=0;
	virtual const char * getStoreName()=0;
	virtual StringArray & getNamespaces()=0;

	virtual const IMultiException& getExceptions()=0;
};



interface IConstDeleteNamespaceRequest : extends IEspRequest
{
	virtual const char * getStoreName()=0;
	virtual const char * getNamespace()=0;
	virtual bool getUserSpecific()=0;
	virtual const char * getTargetUser()=0;
};

interface IEspDeleteNamespaceRequest : extends IConstDeleteNamespaceRequest
{
	virtual void setStoreName(const char * val)=0;
	virtual void setNamespace(const char * val)=0;
	virtual void setUserSpecific(bool val)=0;
	virtual void setTargetUser(const char * val)=0;
	virtual void copy(IConstDeleteNamespaceRequest &from)=0;
};

interface IClientDeleteNamespaceRequest : extends IInterface
{

	virtual IEspClientRpcSettings &rpc() = 0;

	virtual void setStoreName(const char * val)=0;
	virtual void setNamespace(const char * val)=0;
	virtual void setUserSpecific(bool val)=0;
	virtual void setTargetUser(const char * val)=0;
};



interface IConstDeleteNamespaceResponse : extends IEspResponse
{
	virtual bool getSuccess()=0;
};

interface IEspDeleteNamespaceResponse : extends IConstDeleteNamespaceResponse
{
	virtual void setSuccess(bool val)=0;
	virtual void copy(IConstDeleteNamespaceResponse &from)=0;
};

interface IClientDeleteNamespaceResponse : extends IInterface
{

	virtual int queryClientStatus()=0;
	virtual bool getSuccess()=0;

	virtual const IMultiException& getExceptions()=0;
};



interface IConstDeleteRequest : extends IEspRequest
{
	virtual const char * getStoreName()=0;
	virtual const char * getNamespace()=0;
	virtual const char * getKey()=0;
	virtual bool getUserSpecific()=0;
	virtual const char * getTargetUser()=0;
};

interface IEspDeleteRequest : extends IConstDeleteRequest
{
	virtual void setStoreName(const char * val)=0;
	virtual void setNamespace(const char * val)=0;
	virtual void setKey(const char * val)=0;
	virtual void setUserSpecific(bool val)=0;
	virtual void setTargetUser(const char * val)=0;
	virtual void copy(IConstDeleteRequest &from)=0;
};

interface IClientDeleteRequest : extends IInterface
{

	virtual IEspClientRpcSettings &rpc() = 0;

	virtual void setStoreName(const char * val)=0;
	virtual void setNamespace(const char * val)=0;
	virtual void setKey(const char * val)=0;
	virtual void setUserSpecific(bool val)=0;
	virtual void setTargetUser(const char * val)=0;
};



interface IConstDeleteResponse : extends IEspResponse
{
	virtual bool getSuccess()=0;
};

interface IEspDeleteResponse : extends IConstDeleteResponse
{
	virtual void setSuccess(bool val)=0;
	virtual void copy(IConstDeleteResponse &from)=0;
};

interface IClientDeleteResponse : extends IInterface
{

	virtual int queryClientStatus()=0;
	virtual bool getSuccess()=0;

	virtual const IMultiException& getExceptions()=0;
};



interface IConstFetchRequest : extends IEspRequest
{
	virtual const char * getStoreName()=0;
	virtual const char * getNamespace()=0;
	virtual const char * getKey()=0;
	virtual bool getUserSpecific()=0;
};

interface IEspFetchRequest : extends IConstFetchRequest
{
	virtual void setStoreName(const char * val)=0;
	virtual void setNamespace(const char * val)=0;
	virtual void setKey(const char * val)=0;
	virtual void setUserSpecific(bool val)=0;
	virtual void copy(IConstFetchRequest &from)=0;
};

interface IClientFetchRequest : extends IInterface
{

	virtual IEspClientRpcSettings &rpc() = 0;

	virtual void setStoreName(const char * val)=0;
	virtual void setNamespace(const char * val)=0;
	virtual void setKey(const char * val)=0;
	virtual void setUserSpecific(bool val)=0;
};



interface IConstFetchResponse : extends IEspResponse
{
	virtual const char * getValue()=0;
};

interface IEspFetchResponse : extends IConstFetchResponse
{
	virtual void setValue(const char * val)=0;
	virtual void copy(IConstFetchResponse &from)=0;
};

interface IClientFetchResponse : extends IInterface
{

	virtual int queryClientStatus()=0;
	virtual const char * getValue()=0;

	virtual const IMultiException& getExceptions()=0;
};



interface IConstFetchAllRequest : extends IEspRequest
{
	virtual const char * getStoreName()=0;
	virtual const char * getNamespace()=0;
	virtual bool getUserSpecific()=0;
};

interface IEspFetchAllRequest : extends IConstFetchAllRequest
{
	virtual void setStoreName(const char * val)=0;
	virtual void setNamespace(const char * val)=0;
	virtual void setUserSpecific(bool val)=0;
	virtual void copy(IConstFetchAllRequest &from)=0;
};

interface IClientFetchAllRequest : extends IInterface
{

	virtual IEspClientRpcSettings &rpc() = 0;

	virtual void setStoreName(const char * val)=0;
	virtual void setNamespace(const char * val)=0;
	virtual void setUserSpecific(bool val)=0;
};



interface IConstFetchKeyMDRequest : extends IEspRequest
{
	virtual const char * getStoreName()=0;
	virtual const char * getNamespace()=0;
	virtual const char * getKey()=0;
	virtual bool getUserSpecific()=0;
};

interface IEspFetchKeyMDRequest : extends IConstFetchKeyMDRequest
{
	virtual void setStoreName(const char * val)=0;
	virtual void setNamespace(const char * val)=0;
	virtual void setKey(const char * val)=0;
	virtual void setUserSpecific(bool val)=0;
	virtual void copy(IConstFetchKeyMDRequest &from)=0;
};

interface IClientFetchKeyMDRequest : extends IInterface
{

	virtual IEspClientRpcSettings &rpc() = 0;

	virtual void setStoreName(const char * val)=0;
	virtual void setNamespace(const char * val)=0;
	virtual void setKey(const char * val)=0;
	virtual void setUserSpecific(bool val)=0;
};



interface IConstFetchKeyMDResponse : extends IEspResponse
{
	virtual const char * getStoreName()=0;
	virtual const char * getNamespace()=0;
	virtual const char * getKey()=0;
	virtual IArrayOf<IConstKVPair> & getPairs()=0;
};

interface IEspFetchKeyMDResponse : extends IConstFetchKeyMDResponse
{
	virtual void setStoreName(const char * val)=0;
	virtual void setNamespace(const char * val)=0;
	virtual void setKey(const char * val)=0;
	virtual void setPairs(IArrayOf<IEspKVPair> &val)=0;
	virtual void setPairs(IArrayOf<IConstKVPair> &val)=0;
	virtual void copy(IConstFetchKeyMDResponse &from)=0;
};

interface IClientFetchKeyMDResponse : extends IInterface
{

	virtual int queryClientStatus()=0;
	virtual const char * getStoreName()=0;
	virtual const char * getNamespace()=0;
	virtual const char * getKey()=0;
	virtual IArrayOf<IConstKVPair> & getPairs()=0;

	virtual const IMultiException& getExceptions()=0;
};



interface IConstFetchAllResponse : extends IEspResponse
{
	virtual const char * getNamespace()=0;
	virtual IArrayOf<IConstKVPair> & getPairs()=0;
};

interface IEspFetchAllResponse : extends IConstFetchAllResponse
{
	virtual void setNamespace(const char * val)=0;
	virtual void setPairs(IArrayOf<IEspKVPair> &val)=0;
	virtual void setPairs(IArrayOf<IConstKVPair> &val)=0;
	virtual void copy(IConstFetchAllResponse &from)=0;
};

interface IClientFetchAllResponse : extends IInterface
{

	virtual int queryClientStatus()=0;
	virtual const char * getNamespace()=0;
	virtual IArrayOf<IConstKVPair> & getPairs()=0;

	virtual const IMultiException& getExceptions()=0;
};



interface IConstSetRequest : extends IEspRequest
{
	virtual const char * getStoreName()=0;
	virtual const char * getNamespace()=0;
	virtual const char * getKey()=0;
	virtual const char * getValue()=0;
	virtual bool getUserSpecific()=0;
};

interface IEspSetRequest : extends IConstSetRequest
{
	virtual void setStoreName(const char * val)=0;
	virtual void setNamespace(const char * val)=0;
	virtual void setKey(const char * val)=0;
	virtual void setValue(const char * val)=0;
	virtual void setUserSpecific(bool val)=0;
	virtual void copy(IConstSetRequest &from)=0;
};

interface IClientSetRequest : extends IInterface
{

	virtual IEspClientRpcSettings &rpc() = 0;

	virtual void setStoreName(const char * val)=0;
	virtual void setNamespace(const char * val)=0;
	virtual void setKey(const char * val)=0;
	virtual void setValue(const char * val)=0;
	virtual void setUserSpecific(bool val)=0;
};



interface IConstSetResponse : extends IEspResponse
{
	virtual bool getSuccess()=0;
};

interface IEspSetResponse : extends IConstSetResponse
{
	virtual void setSuccess(bool val)=0;
	virtual void copy(IConstSetResponse &from)=0;
};

interface IClientSetResponse : extends IInterface
{

	virtual int queryClientStatus()=0;
	virtual bool getSuccess()=0;

	virtual const IMultiException& getExceptions()=0;
};



interface IConstCreateStoreRequest : extends IEspRequest
{
	virtual const char * getName()=0;
	virtual const char * getType()=0;
	virtual const char * getDescription()=0;
	virtual bool getUserSpecific()=0;
};

interface IEspCreateStoreRequest : extends IConstCreateStoreRequest
{
	virtual void setName(const char * val)=0;
	virtual void setType(const char * val)=0;
	virtual void setDescription(const char * val)=0;
	virtual void setUserSpecific(bool val)=0;
	virtual void copy(IConstCreateStoreRequest &from)=0;
};

interface IClientCreateStoreRequest : extends IInterface
{

	virtual IEspClientRpcSettings &rpc() = 0;

	virtual void setName(const char * val)=0;
	virtual void setType(const char * val)=0;
	virtual void setDescription(const char * val)=0;
	virtual void setUserSpecific(bool val)=0;
};



interface IConstCreateStoreResponse : extends IEspResponse
{
	virtual const char * getName()=0;
	virtual const char * getType()=0;
	virtual const char * getDescription()=0;
	virtual const char * getOwner()=0;
};

interface IEspCreateStoreResponse : extends IConstCreateStoreResponse
{
	virtual void setName(const char * val)=0;
	virtual void setType(const char * val)=0;
	virtual void setDescription(const char * val)=0;
	virtual void setOwner(const char * val)=0;
	virtual void copy(IConstCreateStoreResponse &from)=0;
};

interface IClientCreateStoreResponse : extends IInterface
{

	virtual int queryClientStatus()=0;
	virtual const char * getName()=0;
	virtual const char * getType()=0;
	virtual const char * getDescription()=0;
	virtual const char * getOwner()=0;

	virtual const IMultiException& getExceptions()=0;
};



interface IConstwsstorePingRequest : extends IEspRequest
{
};

interface IEspwsstorePingRequest : extends IConstwsstorePingRequest
{
	virtual void copy(IConstwsstorePingRequest &from)=0;
};

interface IClientwsstorePingRequest : extends IInterface
{

	virtual IEspClientRpcSettings &rpc() = 0;

};

interface IConstwsstorePingResponse : extends IEspResponse
{
};

interface IEspwsstorePingResponse : extends IConstwsstorePingResponse
{
	virtual void copy(IConstwsstorePingResponse &from)=0;
};

interface IClientwsstorePingResponse : extends IInterface
{

	virtual int queryClientStatus()=0;
};

interface IEspwsstore : extends IEspService
{
	virtual bool onCreateStore(IEspContext &context, IEspCreateStoreRequest &req, IEspCreateStoreResponse &resp)=0;
	virtual bool onDelete(IEspContext &context, IEspDeleteRequest &req, IEspDeleteResponse &resp)=0;
	virtual bool onDeleteNamespace(IEspContext &context, IEspDeleteNamespaceRequest &req, IEspDeleteNamespaceResponse &resp)=0;
	virtual bool onFetch(IEspContext &context, IEspFetchRequest &req, IEspFetchResponse &resp)=0;
	virtual bool onFetchAll(IEspContext &context, IEspFetchAllRequest &req, IEspFetchAllResponse &resp)=0;
	virtual bool onFetchKeyMetadata(IEspContext &context, IEspFetchKeyMDRequest &req, IEspFetchKeyMDResponse &resp)=0;
	virtual bool onListKeys(IEspContext &context, IEspListKeysRequest &req, IEspListKeysResponse &resp)=0;
	virtual bool onListNamespaces(IEspContext &context, IEspListNamespacesRequest &req, IEspListNamespacesResponse &resp)=0;
	virtual bool onPing(IEspContext &context, IEspwsstorePingRequest &req, IEspwsstorePingResponse &resp)=0;
	virtual bool onSet(IEspContext &context, IEspSetRequest &req, IEspSetResponse &resp)=0;
};

interface IClientwsstoreEvents : extends IInterface
{
	virtual int onCreateStoreComplete(IClientCreateStoreResponse *resp,IInterface* state)=0;
	virtual int onCreateStoreError(IClientCreateStoreResponse *resp,IInterface* state)=0;
	virtual int onDeleteComplete(IClientDeleteResponse *resp,IInterface* state)=0;
	virtual int onDeleteError(IClientDeleteResponse *resp,IInterface* state)=0;
	virtual int onDeleteNamespaceComplete(IClientDeleteNamespaceResponse *resp,IInterface* state)=0;
	virtual int onDeleteNamespaceError(IClientDeleteNamespaceResponse *resp,IInterface* state)=0;
	virtual int onFetchComplete(IClientFetchResponse *resp,IInterface* state)=0;
	virtual int onFetchError(IClientFetchResponse *resp,IInterface* state)=0;
	virtual int onFetchAllComplete(IClientFetchAllResponse *resp,IInterface* state)=0;
	virtual int onFetchAllError(IClientFetchAllResponse *resp,IInterface* state)=0;
	virtual int onFetchKeyMetadataComplete(IClientFetchKeyMDResponse *resp,IInterface* state)=0;
	virtual int onFetchKeyMetadataError(IClientFetchKeyMDResponse *resp,IInterface* state)=0;
	virtual int onListKeysComplete(IClientListKeysResponse *resp,IInterface* state)=0;
	virtual int onListKeysError(IClientListKeysResponse *resp,IInterface* state)=0;
	virtual int onListNamespacesComplete(IClientListNamespacesResponse *resp,IInterface* state)=0;
	virtual int onListNamespacesError(IClientListNamespacesResponse *resp,IInterface* state)=0;
	virtual int onPingComplete(IClientwsstorePingResponse *resp,IInterface* state)=0;
	virtual int onPingError(IClientwsstorePingResponse *resp,IInterface* state)=0;
	virtual int onSetComplete(IClientSetResponse *resp,IInterface* state)=0;
	virtual int onSetError(IClientSetResponse *resp,IInterface* state)=0;
};

interface IClientwsstore : extends IInterface
{
	virtual void setProxyAddress(const char *address)=0;
	virtual void addServiceUrl(const char *url)=0;
	virtual void removeServiceUrl(const char *url)=0;
	virtual void setUsernameToken(const char *userName,const char *passWord,const char *realm)=0;
	virtual void setAction(const char *action)=0;

	virtual IClientCreateStoreRequest * createCreateStoreRequest()=0;
	virtual IClientCreateStoreResponse * CreateStore(IClientCreateStoreRequest *request)=0;
	virtual void async_CreateStore(IClientCreateStoreRequest *request, IClientwsstoreEvents *events,IInterface* state=0)=0;

	virtual IClientDeleteRequest * createDeleteRequest()=0;
	virtual IClientDeleteResponse * Delete(IClientDeleteRequest *request)=0;
	virtual void async_Delete(IClientDeleteRequest *request, IClientwsstoreEvents *events,IInterface* state=0)=0;

	virtual IClientDeleteNamespaceRequest * createDeleteNamespaceRequest()=0;
	virtual IClientDeleteNamespaceResponse * DeleteNamespace(IClientDeleteNamespaceRequest *request)=0;
	virtual void async_DeleteNamespace(IClientDeleteNamespaceRequest *request, IClientwsstoreEvents *events,IInterface* state=0)=0;

	virtual IClientFetchRequest * createFetchRequest()=0;
	virtual IClientFetchResponse * Fetch(IClientFetchRequest *request)=0;
	virtual void async_Fetch(IClientFetchRequest *request, IClientwsstoreEvents *events,IInterface* state=0)=0;

	virtual IClientFetchAllRequest * createFetchAllRequest()=0;
	virtual IClientFetchAllResponse * FetchAll(IClientFetchAllRequest *request)=0;
	virtual void async_FetchAll(IClientFetchAllRequest *request, IClientwsstoreEvents *events,IInterface* state=0)=0;

	virtual IClientFetchKeyMDRequest * createFetchKeyMetadataRequest()=0;
	virtual IClientFetchKeyMDResponse * FetchKeyMetadata(IClientFetchKeyMDRequest *request)=0;
	virtual void async_FetchKeyMetadata(IClientFetchKeyMDRequest *request, IClientwsstoreEvents *events,IInterface* state=0)=0;

	virtual IClientListKeysRequest * createListKeysRequest()=0;
	virtual IClientListKeysResponse * ListKeys(IClientListKeysRequest *request)=0;
	virtual void async_ListKeys(IClientListKeysRequest *request, IClientwsstoreEvents *events,IInterface* state=0)=0;

	virtual IClientListNamespacesRequest * createListNamespacesRequest()=0;
	virtual IClientListNamespacesResponse * ListNamespaces(IClientListNamespacesRequest *request)=0;
	virtual void async_ListNamespaces(IClientListNamespacesRequest *request, IClientwsstoreEvents *events,IInterface* state=0)=0;

	virtual IClientwsstorePingRequest * createPingRequest()=0;
	virtual IClientwsstorePingResponse * Ping(IClientwsstorePingRequest *request)=0;
	virtual void async_Ping(IClientwsstorePingRequest *request, IClientwsstoreEvents *events,IInterface* state=0)=0;

	virtual IClientSetRequest * createSetRequest()=0;
	virtual IClientSetResponse * Set(IClientSetRequest *request)=0;
	virtual void async_Set(IClientSetRequest *request, IClientwsstoreEvents *events,IInterface* state=0)=0;


	virtual IClientCreateStoreResponse *CreateStoreFn(const char * Name_, const char * Type_, const char * Description_, bool UserSpecific_)=0;

	virtual IClientDeleteResponse *DeleteFn(const char * StoreName_, const char * Namespace_, const char * Key_, bool UserSpecific_, const char * TargetUser_)=0;

	virtual IClientDeleteNamespaceResponse *DeleteNamespaceFn(const char * StoreName_, const char * Namespace_, bool UserSpecific_, const char * TargetUser_)=0;

	virtual IClientFetchResponse *FetchFn(const char * StoreName_, const char * Namespace_, const char * Key_, bool UserSpecific_)=0;

	virtual IClientFetchAllResponse *FetchAllFn(const char * StoreName_, const char * Namespace_, bool UserSpecific_)=0;

	virtual IClientFetchKeyMDResponse *FetchKeyMetadataFn(const char * StoreName_, const char * Namespace_, const char * Key_, bool UserSpecific_)=0;

	virtual IClientListKeysResponse *ListKeysFn(const char * StoreName_, const char * Namespace_, bool UserSpecific_)=0;

	virtual IClientListNamespacesResponse *ListNamespacesFn(const char * StoreName_, bool UserSpecific_)=0;

	virtual IClientwsstorePingResponse *PingFn()=0;

	virtual IClientSetResponse *SetFn(const char * StoreName_, const char * Namespace_, const char * Key_, const char * Value_, bool UserSpecific_)=0;
};



#ifndef wsstore_API
#define wsstore_API
#endif //wsstore_API



extern "C" wsstore_API IClientwsstore * createwsstoreClient();


extern "C"  IEspKVPair *createKVPair(const char *serv=NULL, const char *msgname=NULL);
extern "C"  IClientKVPair *createClientKVPair(const char *serv=NULL, const char *msgname=NULL);
extern "C"  IEspNamespaceSet *createNamespaceSet(const char *serv=NULL, const char *msgname=NULL);
extern "C"  IClientNamespaceSet *createClientNamespaceSet(const char *serv=NULL, const char *msgname=NULL);
extern "C"  IEspListKeysRequest *createListKeysRequest(const char *serv=NULL);
extern "C"  IClientListKeysRequest *createClientListKeysRequest(const char *serv=NULL);
extern "C"  IEspListKeysResponse *createListKeysResponse(const char *serv=NULL);
extern "C"  IClientListKeysResponse *createClientListKeysResponse(const char *serv=NULL);
extern "C"  IEspListNamespacesRequest *createListNamespacesRequest(const char *serv=NULL);
extern "C"  IClientListNamespacesRequest *createClientListNamespacesRequest(const char *serv=NULL);
extern "C"  IEspListNamespacesResponse *createListNamespacesResponse(const char *serv=NULL);
extern "C"  IClientListNamespacesResponse *createClientListNamespacesResponse(const char *serv=NULL);
extern "C"  IEspDeleteNamespaceRequest *createDeleteNamespaceRequest(const char *serv=NULL);
extern "C"  IClientDeleteNamespaceRequest *createClientDeleteNamespaceRequest(const char *serv=NULL);
extern "C"  IEspDeleteNamespaceResponse *createDeleteNamespaceResponse(const char *serv=NULL);
extern "C"  IClientDeleteNamespaceResponse *createClientDeleteNamespaceResponse(const char *serv=NULL);
extern "C"  IEspDeleteRequest *createDeleteRequest(const char *serv=NULL);
extern "C"  IClientDeleteRequest *createClientDeleteRequest(const char *serv=NULL);
extern "C"  IEspDeleteResponse *createDeleteResponse(const char *serv=NULL);
extern "C"  IClientDeleteResponse *createClientDeleteResponse(const char *serv=NULL);
extern "C"  IEspFetchRequest *createFetchRequest(const char *serv=NULL);
extern "C"  IClientFetchRequest *createClientFetchRequest(const char *serv=NULL);
extern "C"  IEspFetchResponse *createFetchResponse(const char *serv=NULL);
extern "C"  IClientFetchResponse *createClientFetchResponse(const char *serv=NULL);
extern "C"  IEspFetchAllRequest *createFetchAllRequest(const char *serv=NULL);
extern "C"  IClientFetchAllRequest *createClientFetchAllRequest(const char *serv=NULL);
extern "C"  IEspFetchKeyMDRequest *createFetchKeyMDRequest(const char *serv=NULL);
extern "C"  IClientFetchKeyMDRequest *createClientFetchKeyMDRequest(const char *serv=NULL);
extern "C"  IEspFetchKeyMDResponse *createFetchKeyMDResponse(const char *serv=NULL);
extern "C"  IClientFetchKeyMDResponse *createClientFetchKeyMDResponse(const char *serv=NULL);
extern "C"  IEspFetchAllResponse *createFetchAllResponse(const char *serv=NULL);
extern "C"  IClientFetchAllResponse *createClientFetchAllResponse(const char *serv=NULL);
extern "C"  IEspSetRequest *createSetRequest(const char *serv=NULL);
extern "C"  IClientSetRequest *createClientSetRequest(const char *serv=NULL);
extern "C"  IEspSetResponse *createSetResponse(const char *serv=NULL);
extern "C"  IClientSetResponse *createClientSetResponse(const char *serv=NULL);
extern "C"  IEspCreateStoreRequest *createCreateStoreRequest(const char *serv=NULL);
extern "C"  IClientCreateStoreRequest *createClientCreateStoreRequest(const char *serv=NULL);
extern "C"  IEspCreateStoreResponse *createCreateStoreResponse(const char *serv=NULL);
extern "C"  IClientCreateStoreResponse *createClientCreateStoreResponse(const char *serv=NULL);
extern "C"  IEspwsstorePingRequest *createwsstorePingRequest(const char *serv=NULL);
extern "C"  IClientwsstorePingRequest *createClientwsstorePingRequest(const char *serv=NULL);
extern "C"  IEspwsstorePingResponse *createwsstorePingResponse(const char *serv=NULL);
extern "C"  IClientwsstorePingResponse *createClientwsstorePingResponse(const char *serv=NULL);

#endif // _ws_store_SCM_INCL
//end
