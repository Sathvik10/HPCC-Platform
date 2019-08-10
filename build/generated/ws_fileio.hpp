// *** Include file generated by HIDL Version 1.3 from ws_fileio.ecm ***
// *** Not to be hand edited (changes will be lost on re-generation) ***

#ifndef ws_fileio_SCM_INCL
#define ws_fileio_SCM_INCL

#include "esp.hpp"



#include "xslprocessor.hpp" 

interface IConstCreateFileRequest : extends IEspRequest
{
	virtual const char * getDestDropZone()=0;
	virtual const char * getDestRelativePath()=0;
	virtual bool getOverwrite()=0;
};

interface IEspCreateFileRequest : extends IConstCreateFileRequest
{
	virtual void setDestDropZone(const char * val)=0;
	virtual void setDestRelativePath(const char * val)=0;
	virtual void setOverwrite(bool val)=0;
	virtual void copy(IConstCreateFileRequest &from)=0;
};

interface IClientCreateFileRequest : extends IInterface
{

	virtual IEspClientRpcSettings &rpc() = 0;

	virtual void setDestDropZone(const char * val)=0;
	virtual void setDestRelativePath(const char * val)=0;
	virtual void setOverwrite(bool val)=0;
};



interface IConstCreateFileResponse : extends IEspResponse
{
	virtual const char * getDestDropZone()=0;
	virtual const char * getDestRelativePath()=0;
	virtual bool getOverwrite_isNull()=0;
	virtual bool getOverwrite()=0;
	virtual const char * getResult()=0;
};

interface IEspCreateFileResponse : extends IConstCreateFileResponse
{
	virtual void setDestDropZone(const char * val)=0;
	virtual void setDestRelativePath(const char * val)=0;
	virtual void setOverwrite_null()=0;
	virtual void setOverwrite(bool val)=0;
	virtual void setResult(const char * val)=0;
	virtual void copy(IConstCreateFileResponse &from)=0;
};

interface IClientCreateFileResponse : extends IInterface
{

	virtual int queryClientStatus()=0;
	virtual const char * getDestDropZone()=0;
	virtual const char * getDestRelativePath()=0;
	virtual bool getOverwrite_isNull()=0;
	virtual bool getOverwrite()=0;
	virtual const char * getResult()=0;

	virtual const IMultiException& getExceptions()=0;
};



interface IConstWriteFileDataRequest : extends IEspRequest
{
	virtual const MemoryBuffer & getData()=0;
	virtual const char * getDestDropZone()=0;
	virtual const char * getDestRelativePath()=0;
	virtual __int64 getOffset()=0;
	virtual bool getAppend()=0;
};

interface IEspWriteFileDataRequest : extends IConstWriteFileDataRequest
{
	virtual void setData(const MemoryBuffer & val)=0;
	virtual void setDestDropZone(const char * val)=0;
	virtual void setDestRelativePath(const char * val)=0;
	virtual void setOffset(__int64 val)=0;
	virtual void setAppend(bool val)=0;
	virtual void copy(IConstWriteFileDataRequest &from)=0;
};

interface IClientWriteFileDataRequest : extends IInterface
{

	virtual IEspClientRpcSettings &rpc() = 0;

	virtual void setData(const MemoryBuffer & val)=0;
	virtual void setDestDropZone(const char * val)=0;
	virtual void setDestRelativePath(const char * val)=0;
	virtual void setOffset(__int64 val)=0;
	virtual void setAppend(bool val)=0;
};



interface IConstWriteFileDataResponse : extends IEspResponse
{
	virtual const char * getDestDropZone()=0;
	virtual const char * getDestRelativePath()=0;
	virtual bool getOffset_isNull()=0;
	virtual __int64 getOffset()=0;
	virtual bool getAppend_isNull()=0;
	virtual bool getAppend()=0;
	virtual const char * getResult()=0;
};

interface IEspWriteFileDataResponse : extends IConstWriteFileDataResponse
{
	virtual void setDestDropZone(const char * val)=0;
	virtual void setDestRelativePath(const char * val)=0;
	virtual void setOffset_null()=0;
	virtual void setOffset(__int64 val)=0;
	virtual void setAppend_null()=0;
	virtual void setAppend(bool val)=0;
	virtual void setResult(const char * val)=0;
	virtual void copy(IConstWriteFileDataResponse &from)=0;
};

interface IClientWriteFileDataResponse : extends IInterface
{

	virtual int queryClientStatus()=0;
	virtual const char * getDestDropZone()=0;
	virtual const char * getDestRelativePath()=0;
	virtual bool getOffset_isNull()=0;
	virtual __int64 getOffset()=0;
	virtual bool getAppend_isNull()=0;
	virtual bool getAppend()=0;
	virtual const char * getResult()=0;

	virtual const IMultiException& getExceptions()=0;
};



interface IConstReadFileDataRequest : extends IEspRequest
{
	virtual const char * getDestDropZone()=0;
	virtual const char * getDestRelativePath()=0;
	virtual __int64 getOffset()=0;
	virtual __int64 getDataSize()=0;
};

interface IEspReadFileDataRequest : extends IConstReadFileDataRequest
{
	virtual void setDestDropZone(const char * val)=0;
	virtual void setDestRelativePath(const char * val)=0;
	virtual void setOffset(__int64 val)=0;
	virtual void setDataSize(__int64 val)=0;
	virtual void copy(IConstReadFileDataRequest &from)=0;
};

interface IClientReadFileDataRequest : extends IInterface
{

	virtual IEspClientRpcSettings &rpc() = 0;

	virtual void setDestDropZone(const char * val)=0;
	virtual void setDestRelativePath(const char * val)=0;
	virtual void setOffset(__int64 val)=0;
	virtual void setDataSize(__int64 val)=0;
};



interface IConstReadFileDataResponse : extends IEspResponse
{
	virtual const MemoryBuffer & getData()=0;
	virtual const char * getDestDropZone()=0;
	virtual const char * getDestRelativePath()=0;
	virtual bool getOffset_isNull()=0;
	virtual __int64 getOffset()=0;
	virtual bool getDataSize_isNull()=0;
	virtual __int64 getDataSize()=0;
	virtual const char * getResult()=0;
};

interface IEspReadFileDataResponse : extends IConstReadFileDataResponse
{
	virtual void setData(const MemoryBuffer & val)=0;
	virtual void setDestDropZone(const char * val)=0;
	virtual void setDestRelativePath(const char * val)=0;
	virtual void setOffset_null()=0;
	virtual void setOffset(__int64 val)=0;
	virtual void setDataSize_null()=0;
	virtual void setDataSize(__int64 val)=0;
	virtual void setResult(const char * val)=0;
	virtual void copy(IConstReadFileDataResponse &from)=0;
};

interface IClientReadFileDataResponse : extends IInterface
{

	virtual int queryClientStatus()=0;
	virtual const MemoryBuffer & getData()=0;
	virtual const char * getDestDropZone()=0;
	virtual const char * getDestRelativePath()=0;
	virtual bool getOffset_isNull()=0;
	virtual __int64 getOffset()=0;
	virtual bool getDataSize_isNull()=0;
	virtual __int64 getDataSize()=0;
	virtual const char * getResult()=0;

	virtual const IMultiException& getExceptions()=0;
};




interface IConstWsFileIOPingRequest : extends IEspRequest
{
};

interface IEspWsFileIOPingRequest : extends IConstWsFileIOPingRequest
{
	virtual void copy(IConstWsFileIOPingRequest &from)=0;
};

interface IClientWsFileIOPingRequest : extends IInterface
{

	virtual IEspClientRpcSettings &rpc() = 0;

};

interface IConstWsFileIOPingResponse : extends IEspResponse
{
};

interface IEspWsFileIOPingResponse : extends IConstWsFileIOPingResponse
{
	virtual void copy(IConstWsFileIOPingResponse &from)=0;
};

interface IClientWsFileIOPingResponse : extends IInterface
{

	virtual int queryClientStatus()=0;
};

interface IEspWsFileIO : extends IEspService
{
	virtual bool onCreateFile(IEspContext &context, IEspCreateFileRequest &req, IEspCreateFileResponse &resp)=0;
	virtual bool onPing(IEspContext &context, IEspWsFileIOPingRequest &req, IEspWsFileIOPingResponse &resp)=0;
	virtual bool onReadFileData(IEspContext &context, IEspReadFileDataRequest &req, IEspReadFileDataResponse &resp)=0;
	virtual bool onWriteFileData(IEspContext &context, IEspWriteFileDataRequest &req, IEspWriteFileDataResponse &resp)=0;
};

interface IClientWsFileIOEvents : extends IInterface
{
	virtual int onCreateFileComplete(IClientCreateFileResponse *resp,IInterface* state)=0;
	virtual int onCreateFileError(IClientCreateFileResponse *resp,IInterface* state)=0;
	virtual int onPingComplete(IClientWsFileIOPingResponse *resp,IInterface* state)=0;
	virtual int onPingError(IClientWsFileIOPingResponse *resp,IInterface* state)=0;
	virtual int onReadFileDataComplete(IClientReadFileDataResponse *resp,IInterface* state)=0;
	virtual int onReadFileDataError(IClientReadFileDataResponse *resp,IInterface* state)=0;
	virtual int onWriteFileDataComplete(IClientWriteFileDataResponse *resp,IInterface* state)=0;
	virtual int onWriteFileDataError(IClientWriteFileDataResponse *resp,IInterface* state)=0;
};

interface IClientWsFileIO : extends IInterface
{
	virtual void setProxyAddress(const char *address)=0;
	virtual void addServiceUrl(const char *url)=0;
	virtual void removeServiceUrl(const char *url)=0;
	virtual void setUsernameToken(const char *userName,const char *passWord,const char *realm)=0;
	virtual void setAction(const char *action)=0;

	virtual IClientCreateFileRequest * createCreateFileRequest()=0;
	virtual IClientCreateFileResponse * CreateFile(IClientCreateFileRequest *request)=0;
	virtual void async_CreateFile(IClientCreateFileRequest *request, IClientWsFileIOEvents *events,IInterface* state=0)=0;

	virtual IClientWsFileIOPingRequest * createPingRequest()=0;
	virtual IClientWsFileIOPingResponse * Ping(IClientWsFileIOPingRequest *request)=0;
	virtual void async_Ping(IClientWsFileIOPingRequest *request, IClientWsFileIOEvents *events,IInterface* state=0)=0;

	virtual IClientReadFileDataRequest * createReadFileDataRequest()=0;
	virtual IClientReadFileDataResponse * ReadFileData(IClientReadFileDataRequest *request)=0;
	virtual void async_ReadFileData(IClientReadFileDataRequest *request, IClientWsFileIOEvents *events,IInterface* state=0)=0;

	virtual IClientWriteFileDataRequest * createWriteFileDataRequest()=0;
	virtual IClientWriteFileDataResponse * WriteFileData(IClientWriteFileDataRequest *request)=0;
	virtual void async_WriteFileData(IClientWriteFileDataRequest *request, IClientWsFileIOEvents *events,IInterface* state=0)=0;


	virtual IClientCreateFileResponse *CreateFileFn(const char * DestDropZone_, const char * DestRelativePath_, bool Overwrite_)=0;

	virtual IClientWsFileIOPingResponse *PingFn()=0;

	virtual IClientReadFileDataResponse *ReadFileDataFn(const char * DestDropZone_, const char * DestRelativePath_, __int64 Offset_, __int64 DataSize_)=0;

	virtual IClientWriteFileDataResponse *WriteFileDataFn(const MemoryBuffer & Data_, const char * DestDropZone_, const char * DestRelativePath_, __int64 Offset_, bool Append_)=0;
};



#ifndef WsFileIO_API
#define WsFileIO_API
#endif //WsFileIO_API



extern "C" WsFileIO_API IClientWsFileIO * createWsFileIOClient();



extern "C"  IEspCreateFileRequest *createCreateFileRequest(const char *serv=NULL);
extern "C"  IClientCreateFileRequest *createClientCreateFileRequest(const char *serv=NULL);
extern "C"  IEspCreateFileResponse *createCreateFileResponse(const char *serv=NULL);
extern "C"  IClientCreateFileResponse *createClientCreateFileResponse(const char *serv=NULL);
extern "C"  IEspWriteFileDataRequest *createWriteFileDataRequest(const char *serv=NULL);
extern "C"  IClientWriteFileDataRequest *createClientWriteFileDataRequest(const char *serv=NULL);
extern "C"  IEspWriteFileDataResponse *createWriteFileDataResponse(const char *serv=NULL);
extern "C"  IClientWriteFileDataResponse *createClientWriteFileDataResponse(const char *serv=NULL);
extern "C"  IEspReadFileDataRequest *createReadFileDataRequest(const char *serv=NULL);
extern "C"  IClientReadFileDataRequest *createClientReadFileDataRequest(const char *serv=NULL);
extern "C"  IEspReadFileDataResponse *createReadFileDataResponse(const char *serv=NULL);
extern "C"  IClientReadFileDataResponse *createClientReadFileDataResponse(const char *serv=NULL);
extern "C"  IEspWsFileIOPingRequest *createWsFileIOPingRequest(const char *serv=NULL);
extern "C"  IClientWsFileIOPingRequest *createClientWsFileIOPingRequest(const char *serv=NULL);
extern "C"  IEspWsFileIOPingResponse *createWsFileIOPingResponse(const char *serv=NULL);
extern "C"  IClientWsFileIOPingResponse *createClientWsFileIOPingResponse(const char *serv=NULL);

#endif // _ws_fileio_SCM_INCL
//end