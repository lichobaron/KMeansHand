//Warning: this file automatically generated using the command line
// /Users/licho/Downloads/vrpn/util/gen_rpc/gen_vrpn_rpc.pl /Users/licho/Downloads/vrpn/util/gen_rpc/rpc_Test_Remote.Cdef
//DO NOT EDIT! Edit the source file instead.
/*===3rdtech===
  Copyright (c) 2001 by 3rdTech, Inc.
  All Rights Reserved.
  This file may not be distributed without the permission of 
  3rdTech, Inc. 
  ===3rdtech===*/
#include <stdio.h>
#include <vrpn_Connection.h>
#include "rpc_Test_Remote.h"
//Message definitions from file rpc_Test.vrpndef
rpc_Test_Remote::rpc_Test_Remote (
    vrpn_Connection * connection) :
    rpc_Test(connection), 
    d_connection(connection)
{
  if (!d_connection) {
    return;
  }
    connection->register_handler(d_Empty_type,
                    handle_Empty,
                    this);
    connection->register_handler(d_Simple_type,
                    handle_Simple,
                    this);
    connection->register_handler(d_CharArray_type,
                    handle_CharArray,
                    this);
    connection->register_handler(d_IntArray_type,
                    handle_IntArray,
                    this);
    connection->register_handler(d_WindowLineData_type,
                    handle_WindowLineData,
                    this);
    connection->register_handler(d_ReportScanDatasets_type,
                    handle_ReportScanDatasets,
                    this);
}
rpc_Test_Remote::~rpc_Test_Remote () { } 
void rpc_Test_Remote::RcvEmpty (
) {
  printf("MSG Empty: "); 
  printf("\n");
  return ;
}

void rpc_Test_Remote::RcvSimple (
      vrpn_int32 num,
      vrpn_float32 P,
      vrpn_float32 setpoint
) {
  printf("MSG Simple: "); 
  printf("num = %d, ", num );
  printf("P = %g, ", P );
  printf("setpoint = %g", setpoint );
  printf("\n");
  return ;
}

void rpc_Test_Remote::RcvCharArray (
      vrpn_int32 cnt,
      char nm[NAME_LENGTH],
      char *nm2,
      char doublenm[4][NAME_LENGTH],
      char **triplenm[4]
) {
  printf("MSG CharArray: "); 
  printf("cnt = %d, ", cnt );
  printf("nm = %s, ", nm );
  printf("nm2 = %s, ", nm2 );
  printf("doublenm = ");
  printf("(");
  for (int lv_1 = 0; lv_1 < 4; lv_1++ ) {
      printf("%s, ", doublenm[lv_1] );
  }
  printf(")");
  printf("triplenm = ");
  printf("(");
  for (int lv_2 = 0; lv_2 < 4; lv_2++ ) {
    printf("(");
    for (int lv_1 = 0; lv_1 < cnt; lv_1++ ) {
        printf("%s, ", triplenm[lv_2][lv_1] );
    }
    printf(")");
  }
  printf(")");
  printf("\n");
  return ;
}

void rpc_Test_Remote::RcvIntArray (
      vrpn_int32 cnt,
      vrpn_int32 *shortstuff,
      vrpn_int32 constdouble[6][4],
      vrpn_int32 *triple[4][NAME_LENGTH]
) {
  printf("MSG IntArray: "); 
  printf("cnt = %d, ", cnt );
  printf("shortstuff = ");
  printf("(");
  for (int lv_1 = 0; lv_1 < cnt; lv_1++ ) {
      printf("%d, ", shortstuff[lv_1] );
  }
  printf(")");
  printf("constdouble = ");
  printf("(");
  for (int lv_2 = 0; lv_2 < 6; lv_2++ ) {
    printf("(");
    for (int lv_1 = 0; lv_1 < 4; lv_1++ ) {
        printf("%d, ", constdouble[lv_2][lv_1] );
    }
    printf(")");
  }
  printf(")");
  printf("triple = ");
  printf("(");
  for (int lv_3 = 0; lv_3 < 4; lv_3++ ) {
    printf("(");
    for (int lv_2 = 0; lv_2 < NAME_LENGTH; lv_2++ ) {
      printf("(");
      for (int lv_1 = 0; lv_1 < cnt; lv_1++ ) {
          printf("%d, ", triple[lv_3][lv_2][lv_1] );
      }
      printf(")");
    }
    printf(")");
  }
  printf(")");
  printf("\n");
  return ;
}

void rpc_Test_Remote::RcvWindowLineData (
      vrpn_int32 reports,
      vrpn_int32 fields,
      vrpn_float32 **data
) {
  printf("MSG WindowLineData: "); 
  printf("reports = %d, ", reports );
  printf("fields = %d, ", fields );
  printf("data = ");
  printf("(");
  for (int lv_2 = 0; lv_2 < reports; lv_2++ ) {
    printf("(");
    for (int lv_1 = 0; lv_1 < fields; lv_1++ ) {
        printf("%g, ", data[lv_2][lv_1] );
    }
    printf(")");
  }
  printf(")");
  printf("\n");
  return ;
}

void rpc_Test_Remote::RcvReportScanDatasets_header (
      vrpn_int32 count
) {
  printf("MSG ReportScanDatasets: "); 
  printf("count = %d", count );
  printf("\n");
  return ;
}

void rpc_Test_Remote::RcvReportScanDatasets_body (
      char name[64],
      char units[64],
      vrpn_float32 offset,
      vrpn_float32 scale
) {
  printf("  struct ReportScanDatasets: "); 
  printf("name = %s, ", name );
  printf("units = %s, ", units );
  printf("offset = %g, ", offset );
  printf("scale = %g", scale );
  printf("\n");
  return ;
}


int rpc_Test_Remote::handle_Empty (void * userdata, vrpn_HANDLERPARAM grpc_p) {
  rpc_Test_Remote* grpc_me = (rpc_Test_Remote *) userdata;

  grpc_me->RcvEmpty (  );
  return 0;
}

int rpc_Test_Remote::handle_Simple (void * userdata, vrpn_HANDLERPARAM grpc_p) {
  const char * buffer = grpc_p.buffer;
  rpc_Test_Remote* grpc_me = (rpc_Test_Remote *) userdata;
  vrpn_int32 num;
  vrpn_float32 P;
  vrpn_float32 setpoint;

  grpc_me->decode_Simple ( &buffer, &num, &P, &setpoint );
  grpc_me->RcvSimple ( num, P, setpoint );
  return 0;
}

int rpc_Test_Remote::handle_CharArray (void * userdata, vrpn_HANDLERPARAM grpc_p) {
  const char * buffer = grpc_p.buffer;
  rpc_Test_Remote* grpc_me = (rpc_Test_Remote *) userdata;
  vrpn_int32 cnt;
  char nm[NAME_LENGTH];
  char *nm2;
  char doublenm[4][NAME_LENGTH];
  char **triplenm[4];

  grpc_me->decode_CharArray ( &buffer, &cnt, &nm, &nm2, &doublenm, &triplenm );
  grpc_me->RcvCharArray ( cnt, nm, nm2, doublenm, triplenm );
  delete [] nm2;
  for (int lv_2 = 0; lv_2 < 4 ; lv_2++ ) {
    for (int lv_1 = 0; lv_1 < cnt ; lv_1++ ) {
      delete [] triplenm[lv_2][lv_1];
    }
    delete [] triplenm[lv_2];
  }
  return 0;
}

int rpc_Test_Remote::handle_IntArray (void * userdata, vrpn_HANDLERPARAM grpc_p) {
  const char * buffer = grpc_p.buffer;
  rpc_Test_Remote* grpc_me = (rpc_Test_Remote *) userdata;
  vrpn_int32 cnt;
  vrpn_int32 *shortstuff;
  vrpn_int32 constdouble[6][4];
  vrpn_int32 *triple[4][NAME_LENGTH];

  grpc_me->decode_IntArray ( &buffer, &cnt, &shortstuff, &constdouble, &triple );
  grpc_me->RcvIntArray ( cnt, shortstuff, constdouble, triple );
  delete [] shortstuff;
  for (int lv_2 = 0; lv_2 < 4 ; lv_2++ ) {
    for (int lv_1 = 0; lv_1 < NAME_LENGTH ; lv_1++ ) {
      delete [] triple[lv_2][lv_1];
    }
  }
  return 0;
}

int rpc_Test_Remote::handle_WindowLineData (void * userdata, vrpn_HANDLERPARAM grpc_p) {
  const char * buffer = grpc_p.buffer;
  rpc_Test_Remote* grpc_me = (rpc_Test_Remote *) userdata;
  vrpn_int32 reports;
  vrpn_int32 fields;
  vrpn_float32 **data;

  grpc_me->decode_WindowLineData ( &buffer, &reports, &fields, &data );
  grpc_me->RcvWindowLineData ( reports, fields, data );
  for (int lv_1 = 0; lv_1 < reports ; lv_1++ ) {
    delete [] data[lv_1];
  }
  delete [] data;
  return 0;
}

int rpc_Test_Remote::handle_ReportScanDatasets (void * userdata, vrpn_HANDLERPARAM grpc_p) {
  const char * buffer = grpc_p.buffer;
  rpc_Test_Remote* grpc_me = (rpc_Test_Remote *) userdata;
  vrpn_int32 count;
  char name[64];
  char units[64];
  vrpn_float32 offset;
  vrpn_float32 scale;

  grpc_me->decode_ReportScanDatasets_header ( &buffer, &count );
  grpc_me->RcvReportScanDatasets_header ( count );
  for (int lv_1 = 0; lv_1 < count; lv_1++) {
    grpc_me->decode_ReportScanDatasets_body ( &buffer, &name, &units, &offset, &scale );
    grpc_me->RcvReportScanDatasets_body ( name, units, offset, scale );
  }
  return 0;
}
