//Warning: this file automatically generated using the command line
// /Users/licho/Downloads/vrpn/util/gen_rpc/gen_vrpn_rpc.pl /Users/licho/Downloads/vrpn/util/gen_rpc/rpc_Test_Remote.hdef
//DO NOT EDIT! Edit the source file instead.
#ifndef NM_TEST_REMOTE_H
#define NM_TEST_REMOTE_H
/*===3rdtech===
  Copyright (c) 2001 by 3rdTech, Inc.
  All Rights Reserved.
  This file may not be distributed without the permission of 
  3rdTech, Inc. 
  ===3rdtech===*/
//Message definitions from file rpc_Test.vrpndef
#include <vrpn_Connection.h>
#include "rpc_Test.h"
class rpc_Test_Remote : protected rpc_Test 
{
private:
    vrpn_Connection * d_connection;
public:
    rpc_Test_Remote(vrpn_Connection *);
    ~rpc_Test_Remote();
    //virtual int mainloop();
  void RcvEmpty (
  );
  void RcvSimple (
      vrpn_int32 num,
      vrpn_float32 P,
      vrpn_float32 setpoint
  );
  void RcvCharArray (
      vrpn_int32 cnt,
      char nm[NAME_LENGTH],
      char *nm2,
      char doublenm[4][NAME_LENGTH],
      char **triplenm[4]
  );
  void RcvIntArray (
      vrpn_int32 cnt,
      vrpn_int32 *shortstuff,
      vrpn_int32 constdouble[6][4],
      vrpn_int32 *triple[4][NAME_LENGTH]
  );
  void RcvWindowLineData (
      vrpn_int32 reports,
      vrpn_int32 fields,
      vrpn_float32 **data
  );
  void RcvReportScanDatasets_header (
      vrpn_int32 count
  );
  void RcvReportScanDatasets_body (
      char name[64],
      char units[64],
      vrpn_float32 offset,
      vrpn_float32 scale
  );
  static int VRPN_CALLBACK handle_Empty (void * userdata, vrpn_HANDLERPARAM grpc_p);
  static int VRPN_CALLBACK handle_Simple (void * userdata, vrpn_HANDLERPARAM grpc_p);
  static int VRPN_CALLBACK handle_CharArray (void * userdata, vrpn_HANDLERPARAM grpc_p);
  static int VRPN_CALLBACK handle_IntArray (void * userdata, vrpn_HANDLERPARAM grpc_p);
  static int VRPN_CALLBACK handle_WindowLineData (void * userdata, vrpn_HANDLERPARAM grpc_p);
  static int VRPN_CALLBACK handle_ReportScanDatasets (void * userdata, vrpn_HANDLERPARAM grpc_p);
};
#endif
