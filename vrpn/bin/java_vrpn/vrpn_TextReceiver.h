/* DO NOT EDIT THIS FILE - it is machine generated */
#include <jni.h>
/* Header for class vrpn_TextReceiver */

#ifndef _Included_vrpn_TextReceiver
#define _Included_vrpn_TextReceiver
#ifdef __cplusplus
extern "C" {
#endif
#undef vrpn_TextReceiver_vrpn_TEXT_NORMAL
#define vrpn_TextReceiver_vrpn_TEXT_NORMAL 0L
#undef vrpn_TextReceiver_vrpn_TEXT_WARNING
#define vrpn_TextReceiver_vrpn_TEXT_WARNING 1L
#undef vrpn_TextReceiver_vrpn_TEXT_ERROR
#define vrpn_TextReceiver_vrpn_TEXT_ERROR 2L
/*
 * Class:     vrpn_TextReceiver
 * Method:    shutdownTextReceiver
 * Signature: ()V
 */
JNIEXPORT void JNICALL Java_vrpn_TextReceiver_shutdownTextReceiver
  (JNIEnv *, jobject);

/*
 * Class:     vrpn_TextReceiver
 * Method:    mainloop
 * Signature: ()V
 */
JNIEXPORT void JNICALL Java_vrpn_TextReceiver_mainloop
  (JNIEnv *, jobject);

/*
 * Class:     vrpn_TextReceiver
 * Method:    init
 * Signature: (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
 */
JNIEXPORT jboolean JNICALL Java_vrpn_TextReceiver_init
  (JNIEnv *, jobject, jstring, jstring, jstring, jstring, jstring);

#ifdef __cplusplus
}
#endif
#endif