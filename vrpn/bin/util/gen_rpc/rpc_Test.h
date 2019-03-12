#ifndef RPC_TEST_H
#define RPC_TEST_H
//Warning: this file automatically generated using the command line
// /Users/licho/Downloads/vrpn/util/gen_rpc/gen_vrpn_rpc.pl -h /Users/licho/Downloads/vrpn/util/gen_rpc/rpc_Test.vrpndef
//DO NOT EDIT! Edit the source file instead.

/*===3rdtech===
  Copyright (c) 2001 by 3rdTech, Inc.
  All Rights Reserved.

  This file may not be distributed without the permission of 
  3rdTech, Inc. 
  ===3rdtech===*/

#include <vrpn_Connection.h>

#define NAME_LENGTH 16



class rpc_Test 
{
  public:

    rpc_Test (vrpn_Connection * = NULL);
      // Constructor.
    virtual ~rpc_Test (void);
      // Destructor. HP compiler doesn't like it with '= 0;'

    vrpn_int32 d_Empty_type;
    vrpn_int32 d_Simple_type;
    vrpn_int32 d_CharArray_type;
    vrpn_int32 d_IntArray_type;
    vrpn_int32 d_WindowLineData_type;
    vrpn_int32 d_ReportScanDatasets_type;


// encode_Empty not needed - empty message.
// decode_Empty not needed - empty message.
  char * encode_Simple (
      int * len,
      vrpn_int32 num,
      vrpn_float32 P,
      vrpn_float32 setpoint
  );
  int decode_Simple (
      const char ** buffer,
      vrpn_int32 (*num),
      vrpn_float32 (*P),
      vrpn_float32 (*setpoint)
  );
  char * encode_CharArray (
      int * len,
      vrpn_int32 cnt,
      char nm[NAME_LENGTH],
      char *nm2,
      char doublenm[4][NAME_LENGTH],
      char **triplenm[4]
  );
  int decode_CharArray (
      const char ** buffer,
      vrpn_int32 (*cnt),
      char (*nm)[NAME_LENGTH],
      char *(*nm2),
      char (*doublenm)[4][NAME_LENGTH],
      char **(*triplenm)[4]
  );
  char * encode_IntArray (
      int * len,
      vrpn_int32 cnt,
      vrpn_int32 *shortstuff,
      vrpn_int32 constdouble[6][4],
      vrpn_int32 *triple[4][NAME_LENGTH]
  );
  int decode_IntArray (
      const char ** buffer,
      vrpn_int32 (*cnt),
      vrpn_int32 *(*shortstuff),
      vrpn_int32 (*constdouble)[6][4],
      vrpn_int32 *(*triple)[4][NAME_LENGTH]
  );
  char * encode_WindowLineData (
      int * len,
      vrpn_int32 reports,
      vrpn_int32 fields,
      vrpn_float32 **data
  );
  int decode_WindowLineData (
      const char ** buffer,
      vrpn_int32 (*reports),
      vrpn_int32 (*fields),
      vrpn_float32 **(*data)
  );
  char * encode_ReportScanDatasets_header (
      int * len,
      char ** mptr, int* mlen,
      vrpn_int32 count
  );
  char * encode_ReportScanDatasets_body (
      int * len, char * msgbuf, char ** mptr, int *mlen, 
      char name[64],
      char units[64],
      vrpn_float32 offset,
      vrpn_float32 scale
  );
  int decode_ReportScanDatasets_header (
      const char ** buffer,
      vrpn_int32 (*count)
  );
  int decode_ReportScanDatasets_body (
      const char ** buffer,
      char (*name)[64],
      char (*units)[64],
      vrpn_float32 (*offset),
      vrpn_float32 (*scale)
  );
};
#endif // RPC_TEST_H
