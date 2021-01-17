#include <stdint.h>
#include <stdbool.h>
#include <wchar.h>

#ifndef EFI_H
#define EFI_H

typedef void *EFI_PVOID;
typedef void *EFI_HANDLE;

#ifdef __i386__
#define MESSAGE L"i386\r\n"
typedef uint32_t UINTN;
#endif
#ifdef __amd64__
#define MESSAGE L"x86_64\r\n"
typedef uint64_t UINTN;
#endif

typedef UINTN EFI_STATUS;

#define EFIERR(a) (a | ~(((EFI_STATUS)-1) >> 1))
#define EFI_ERROR(a) (a & ~(((EFI_STATUS)-1) >> 1))

#define EFI_NOT_READY EFIERR(6)

typedef struct {
  uint64_t Signature;
  uint32_t Revision;
  uint32_t HeaderSize;
  uint32_t CRC32;
  uint32_t Reserved;
} EFI_TABLE_HEADER;

typedef struct {
  uint32_t MaxMode;
  uint32_t Mode;
  uint32_t Attribute;
  uint32_t CursorColumn;
  uint32_t CursorRow;
  uint8_t CursorVisible;
} SIMPLE_TEXT_OUTPUT_MODE;

typedef EFI_STATUS (*EFI_TEXT_CLEAR_SCREEN)(void *This);
typedef EFI_STATUS (*EFI_TEXT_ENABLE_CURSOR)(void *This, uint8_t Visible);
typedef EFI_STATUS (*EFI_TEXT_SET_ATTRIBUTE)(void *This, UINTN Attribute);
typedef EFI_STATUS (*EFI_TEXT_STRING)(void *This, const wchar_t *String);

typedef EFI_STATUS (*EFI_TEXT_QUERY_MODE)(
    void *This,
    UINTN ModeNumber,
    UINTN *Columns,
    UINTN *Rows);

typedef EFI_STATUS (*EFI_TEXT_SET_CURSOR_POSITION)(
    void *This,
    UINTN Column,
    UINTN Row);

typedef struct {
  EFI_PVOID Reset;
  EFI_TEXT_STRING OutputString;
  EFI_PVOID TestString;
  EFI_TEXT_QUERY_MODE QueryMode;
  EFI_PVOID SetMode;
  EFI_TEXT_SET_ATTRIBUTE SetAttribute;
  EFI_TEXT_CLEAR_SCREEN ClearScreen;
  EFI_TEXT_SET_CURSOR_POSITION SetCursorPosition;
  EFI_TEXT_ENABLE_CURSOR EnableCursor;
  SIMPLE_TEXT_OUTPUT_MODE *Mode;
} EFI_SIMPLE_TEXT_OUTPUT_PROTOCOL;

typedef struct {
  wchar_t ScanCode;
  wchar_t UnicodeChar;
} EFI_INPUT_KEY;

typedef EFI_STATUS (*EFI_INPUT_RESET)(void *This, bool ExtendedVerification);
typedef EFI_STATUS (*EFI_INPUT_READ_KEY)(void *This, EFI_INPUT_KEY *Key);

typedef struct {
  EFI_INPUT_RESET Reset;
  EFI_INPUT_READ_KEY ReadKeyStroke;
  EFI_PVOID WaitForKey;
} EFI_SIMPLE_TEXT_INPUT_PROTOCOL;

typedef struct {
  EFI_TABLE_HEADER Hdr;
  EFI_PVOID FirmwareVendor;
  uint32_t FirmwareRevision;
  EFI_PVOID ConsoleInHandle;
  EFI_SIMPLE_TEXT_INPUT_PROTOCOL *ConIn;
  EFI_PVOID ConsoleOutHandle;
  EFI_SIMPLE_TEXT_OUTPUT_PROTOCOL *ConOut;
  EFI_PVOID StandardErrorHandle;
  EFI_SIMPLE_TEXT_OUTPUT_PROTOCOL *StdErr;
  void *RuntimeServices;
  void *BootServices;
  UINTN NumberOfTableEntries;
  void *ConfigurationTable;
} EFI_SYSTEM_TABLE;

#endif
