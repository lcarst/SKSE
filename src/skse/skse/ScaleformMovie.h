#pragma once

#include "skse/ScaleformTypes.h"

class GFxValue;
class GFxMovieRoot;

// 2850?
class GFxMovieView : GRefCountBase
{
public:
	GFxMovieView();
	~GFxMovieView();

	virtual UInt32	Unk_01(void);
	virtual UInt32	Unk_02(void);
	virtual UInt32	Unk_03(void);
	virtual void	GotoFrame(UInt32 idx);
	virtual bool	GotoLabeledFrame(const char * label, UInt32 unk);
	virtual void	SetPause(UInt32 pause);
	virtual UInt32	GetPause(void);
	virtual void	Unk_08(UInt32 unk);
	virtual UInt32	Unk_09(void);
	virtual bool	Unk_0A(void);
	virtual void	CreateString(GFxValue * value, const char * str);
	virtual void	CreateWideString(GFxValue * value, const wchar_t * str);
	virtual void	CreateObject(GFxValue * value, const char * className, GFxValue * args, UInt32 numArgs);
	virtual void	CreateArray(GFxValue * value);
	virtual void	CreateFunction(GFxValue * value, void * callback, void * refcon);
	virtual void	SetVariable(const char * name, GFxValue * value, UInt32 flags);
	virtual void	GetVariable(GFxValue * value, const char * name);
	virtual bool	SetArray(UInt32 type, const char * name, UInt32 offset, void * buf, UInt32 len, UInt32 flags);
	virtual bool	ResizeArray(const char * name, UInt32 len, UInt32 flags);
	virtual UInt32	GetArrayLen(const char * name);
	virtual bool	GetArray(UInt32 type, const char * name, UInt32 offset, void * buf, UInt32 len);
	virtual bool	Invoke(const char * name, GFxValue * result, const char * fmt, ...);
	virtual bool	Invoke(const char * name, GFxValue * result, GFxValue * args, UInt32 numArgs);
	virtual bool	Invoke_v(const char * name, GFxValue * result, const char * fmt, va_list args);
	// more
};
