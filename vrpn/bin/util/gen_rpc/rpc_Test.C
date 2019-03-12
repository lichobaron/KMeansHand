//Warning: this file automatically generated using the command line
// /Users/licho/Downloads/vrpn/util/gen_rpc/gen_vrpn_rpc.pl -C /Users/licho/Downloads/vrpn/util/gen_rpc/rpc_Test.vrpndef
//DO NOT EDIT! Edit the source file instead.

/*===3rdtech===
  Copyright (c) 2001 by 3rdTech, Inc.
  All Rights Reserved.

  This file may not be distributed without the permission of 
  3rdTech, Inc. 
  ===3rdtech===*/

#include <vrpn_Connection.h>
#include "rpc_Test.h"

rpc_Test::rpc_Test (
   vrpn_Connection * connection)
{
  if (connection) {
    d_Empty_type = connection->register_message_type
       ("rpc_Test Empty");
    d_Simple_type = connection->register_message_type
       ("rpc_Test Simple");
    d_CharArray_type = connection->register_message_type
       ("rpc_Test CharArray");
    d_IntArray_type = connection->register_message_type
       ("rpc_Test IntArray");
    d_WindowLineData_type = connection->register_message_type
       ("rpc_Test WindowLineData");
    d_ReportScanDatasets_type = connection->register_message_type
       ("rpc_Test ReportScanDatasets");

  }
}

rpc_Test::~rpc_Test (void) { }

// encode_Empty not needed - empty message.
// decode_Empty not needed - empty message.
char * rpc_Test::encode_Simple (
      int * len,
      vrpn_int32 num,
      vrpn_float32 P,
      vrpn_float32 setpoint
) {
  char * msgbuf = NULL;
  char *mptr[1];
  int temp; int* mlen = &temp;
  if (!len) return NULL;
  *len =
     (sizeof(vrpn_int32) + sizeof(vrpn_float32) + sizeof(vrpn_float32));
  msgbuf = new char [*len];
  if (!msgbuf) {
    fprintf(stderr, "encode_Simple: Out of memory.\n");
    *len = 0;
  } else {
    *mptr = msgbuf;
    *mlen = *len;
    vrpn_buffer(mptr, mlen, num);
    vrpn_buffer(mptr, mlen, P);
    vrpn_buffer(mptr, mlen, setpoint);
  }
  return msgbuf;
}

int rpc_Test::decode_Simple (
      const char ** buffer,
      vrpn_int32 (*num),
      vrpn_float32 (*P),
      vrpn_float32 (*setpoint)
) {
  if (!buffer
   || !num
   || !P
   || !setpoint) return -1;
  if (vrpn_unbuffer(buffer, num)) return -1;
  if (vrpn_unbuffer(buffer, P)) return -1;
  if (vrpn_unbuffer(buffer, setpoint)) return -1;
  return 0;
}

char * rpc_Test::encode_CharArray (
      int * len,
      vrpn_int32 cnt,
      char nm[NAME_LENGTH],
      char *nm2,
      char doublenm[4][NAME_LENGTH],
      char **triplenm[4]
) {
  char * msgbuf = NULL;
  char *mptr[1];
  int temp; int* mlen = &temp;
  if (!len) return NULL;
  *len =
     (sizeof(vrpn_int32) + sizeof(char) * NAME_LENGTH + sizeof(char) * cnt + sizeof(char) * 4 * NAME_LENGTH + sizeof(char) * 4 * cnt * cnt);
  msgbuf = new char [*len];
  if (!msgbuf) {
    fprintf(stderr, "encode_CharArray: Out of memory.\n");
    *len = 0;
  } else {
    *mptr = msgbuf;
    *mlen = *len;
    vrpn_buffer(mptr, mlen, cnt);
    vrpn_buffer(mptr, mlen, nm, NAME_LENGTH);
    vrpn_buffer(mptr, mlen, nm2, cnt);
    for (int lv_1 = 0; lv_1 < 4; lv_1++ ) {
      vrpn_buffer(mptr, mlen, doublenm[lv_1], NAME_LENGTH);
    }
    for (int lv_2 = 0; lv_2 < 4; lv_2++ ) {
      for (int lv_1 = 0; lv_1 < cnt; lv_1++ ) {
        vrpn_buffer(mptr, mlen, triplenm[lv_2][lv_1], cnt);
      }
    }
  }
  return msgbuf;
}

int rpc_Test::decode_CharArray (
      const char ** buffer,
      vrpn_int32 (*cnt),
      char (*nm)[NAME_LENGTH],
      char *(*nm2),
      char (*doublenm)[4][NAME_LENGTH],
      char **(*triplenm)[4]
) {
  if (!buffer
   || !cnt
   || !nm
   || !nm2
   || !doublenm
   || !triplenm) return -1;
  if (vrpn_unbuffer(buffer, cnt)) return -1;
  if (vrpn_unbuffer(buffer, *nm, NAME_LENGTH)) return -1;
  *nm2 = new char[*cnt];
  if (vrpn_unbuffer(buffer, *nm2, *cnt)) return -1;
  for (int lv_1 = 0; lv_1 < 4 ; lv_1++ ) {
    if (vrpn_unbuffer(buffer, (*doublenm)[lv_1], NAME_LENGTH)) return -1;
  }
  for (int lv_2 = 0; lv_2 < 4 ; lv_2++ ) {
    (*triplenm)[lv_2] = new char * [*cnt];
    for (int lv_1 = 0; lv_1 < *cnt ; lv_1++ ) {
      (*triplenm)[lv_2][lv_1] = new char[*cnt];
      if (vrpn_unbuffer(buffer, (*triplenm)[lv_2][lv_1], *cnt)) return -1;
    }
  }
  return 0;
}

char * rpc_Test::encode_IntArray (
      int * len,
      vrpn_int32 cnt,
      vrpn_int32 *shortstuff,
      vrpn_int32 constdouble[6][4],
      vrpn_int32 *triple[4][NAME_LENGTH]
) {
  char * msgbuf = NULL;
  char *mptr[1];
  int temp; int* mlen = &temp;
  if (!len) return NULL;
  *len =
     (sizeof(vrpn_int32) + sizeof(vrpn_int32) * cnt + sizeof(vrpn_int32) * 6 * 4 + sizeof(vrpn_int32) * 4 * NAME_LENGTH * cnt);
  msgbuf = new char [*len];
  if (!msgbuf) {
    fprintf(stderr, "encode_IntArray: Out of memory.\n");
    *len = 0;
  } else {
    *mptr = msgbuf;
    *mlen = *len;
    vrpn_buffer(mptr, mlen, cnt);
    for (int lv_1 = 0; lv_1 < cnt; lv_1++ ) {
      vrpn_buffer(mptr, mlen, shortstuff[lv_1]);
    }
    for (int lv_2 = 0; lv_2 < 6; lv_2++ ) {
      for (int lv_1 = 0; lv_1 < 4; lv_1++ ) {
        vrpn_buffer(mptr, mlen, constdouble[lv_2][lv_1]);
      }
    }
    for (int lv_3 = 0; lv_3 < 4; lv_3++ ) {
      for (int lv_2 = 0; lv_2 < NAME_LENGTH; lv_2++ ) {
        for (int lv_1 = 0; lv_1 < cnt; lv_1++ ) {
          vrpn_buffer(mptr, mlen, triple[lv_3][lv_2][lv_1]);
        }
      }
    }
  }
  return msgbuf;
}

int rpc_Test::decode_IntArray (
      const char ** buffer,
      vrpn_int32 (*cnt),
      vrpn_int32 *(*shortstuff),
      vrpn_int32 (*constdouble)[6][4],
      vrpn_int32 *(*triple)[4][NAME_LENGTH]
) {
  if (!buffer
   || !cnt
   || !shortstuff
   || !constdouble
   || !triple) return -1;
  if (vrpn_unbuffer(buffer, cnt)) return -1;
  (*shortstuff) = new vrpn_int32  [*cnt];
  for (int lv_1 = 0; lv_1 < *cnt ; lv_1++ ) {
    if (vrpn_unbuffer(buffer, &((*shortstuff)[lv_1]))) return -1;
  }
  for (int lv_2 = 0; lv_2 < 6 ; lv_2++ ) {
    for (int lv_1 = 0; lv_1 < 4 ; lv_1++ ) {
      if (vrpn_unbuffer(buffer, &((*constdouble)[lv_2][lv_1]))) return -1;
    }
  }
  for (int lv_3 = 0; lv_3 < 4 ; lv_3++ ) {
    for (int lv_2 = 0; lv_2 < NAME_LENGTH ; lv_2++ ) {
      (*triple)[lv_3][lv_2] = new vrpn_int32  [*cnt];
      for (int lv_1 = 0; lv_1 < *cnt ; lv_1++ ) {
        if (vrpn_unbuffer(buffer, &((*triple)[lv_3][lv_2][lv_1]))) return -1;
      }
    }
  }
  return 0;
}

char * rpc_Test::encode_WindowLineData (
      int * len,
      vrpn_int32 reports,
      vrpn_int32 fields,
      vrpn_float32 **data
) {
  char * msgbuf = NULL;
  char *mptr[1];
  int temp; int* mlen = &temp;
  if (!len) return NULL;
  *len =
     (sizeof(vrpn_int32) + sizeof(vrpn_int32) + sizeof(vrpn_float32) * reports * fields);
  msgbuf = new char [*len];
  if (!msgbuf) {
    fprintf(stderr, "encode_WindowLineData: Out of memory.\n");
    *len = 0;
  } else {
    *mptr = msgbuf;
    *mlen = *len;
    vrpn_buffer(mptr, mlen, reports);
    vrpn_buffer(mptr, mlen, fields);
    for (int lv_2 = 0; lv_2 < reports; lv_2++ ) {
      for (int lv_1 = 0; lv_1 < fields; lv_1++ ) {
        vrpn_buffer(mptr, mlen, data[lv_2][lv_1]);
      }
    }
  }
  return msgbuf;
}

int rpc_Test::decode_WindowLineData (
      const char ** buffer,
      vrpn_int32 (*reports),
      vrpn_int32 (*fields),
      vrpn_float32 **(*data)
) {
  if (!buffer
   || !reports
   || !fields
   || !data) return -1;
  if (vrpn_unbuffer(buffer, reports)) return -1;
  if (vrpn_unbuffer(buffer, fields)) return -1;
  (*data) = new vrpn_float32 * [*reports];
  for (int lv_2 = 0; lv_2 < *reports ; lv_2++ ) {
    (*data)[lv_2] = new vrpn_float32  [*fields];
    for (int lv_1 = 0; lv_1 < *fields ; lv_1++ ) {
      if (vrpn_unbuffer(buffer, &((*data)[lv_2][lv_1]))) return -1;
    }
  }
  return 0;
}

char * rpc_Test::encode_ReportScanDatasets_header (
      int * len,
      char ** mptr, int* mlen,
      vrpn_int32 count
) {
  char * msgbuf = NULL;
  if (!len) return NULL;
  *len =
     (sizeof(vrpn_int32))
+ (sizeof(char) * 64 + sizeof(char) * 64 + sizeof(vrpn_float32) + sizeof(vrpn_float32)) * count;
  msgbuf = new char [*len];
  if (!msgbuf) {
    fprintf(stderr, "encode_ReportScanDatasets_header: Out of memory.\n");
    *len = 0;
  } else {
    *mptr = msgbuf;
    *mlen = *len;
    vrpn_buffer(mptr, mlen, count);
  }
  return msgbuf;
}

char * rpc_Test::encode_ReportScanDatasets_body (
      int * len, char * msgbuf, char ** mptr, int *mlen, 
      char name[64],
      char units[64],
      vrpn_float32 offset,
      vrpn_float32 scale
) {
  if (!len || !msgbuf || !mptr || !mlen) return NULL;
    vrpn_buffer(mptr, mlen, name, 64);
    vrpn_buffer(mptr, mlen, units, 64);
    vrpn_buffer(mptr, mlen, offset);
    vrpn_buffer(mptr, mlen, scale);
  return msgbuf;
}

int rpc_Test::decode_ReportScanDatasets_header (
      const char ** buffer,
      vrpn_int32 (*count)
) {
  if (!buffer
   || !count) return -1;
  if (vrpn_unbuffer(buffer, count)) return -1;
  return 0;
}

int rpc_Test::decode_ReportScanDatasets_body (
      const char ** buffer,
      char (*name)[64],
      char (*units)[64],
      vrpn_float32 (*offset),
      vrpn_float32 (*scale)
) {
  if (!buffer
   || !name
   || !units
   || !offset
   || !scale) return -1;
  if (vrpn_unbuffer(buffer, *name, 64)) return -1;
  if (vrpn_unbuffer(buffer, *units, 64)) return -1;
  if (vrpn_unbuffer(buffer, offset)) return -1;
  if (vrpn_unbuffer(buffer, scale)) return -1;
  return 0;
}

