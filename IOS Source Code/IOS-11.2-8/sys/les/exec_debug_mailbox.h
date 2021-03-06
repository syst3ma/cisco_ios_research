/* $Id: exec_debug_mailbox.h,v 3.2 1995/11/17 17:36:58 hampton Exp $
 * $Source: /swtal/cherf.111/ios/sys/les/exec_debug_mailbox.h,v $
 *------------------------------------------------------------------
 * E X E C _ D E B U G _ M A I L B O X . H
 *
 * Copyright (c) 1992-1995 by cisco Systems, Inc.
 * All Rights Reserved
 *------------------------------------------------------------------
 * $Log: exec_debug_mailbox.h,v $
 * Revision 3.2  1995/11/17  17:36:58  hampton
 * Remove old entries from the RCS header logs.
 *
 * Revision 3.1  1995/11/09  12:29:52  shaker
 * Bump version numbers from 2.x to 3.x.
 *
 * Revision 2.1  1995/07/02  10:52:34  tli
 * CSCdi36508:  Rationalize parser file placement, part I
 * Rationalize os, hes, les, if, and ibm.
 *
 * Revision 2.2  1995/06/19  14:48:24  widmer
 * CSCdi36074:  Clean up debug parse chain alternates
 * Add keyword_debug macro to assign debug array
 *
 * Revision 2.1  1995/06/07  22:19:25  hampton
 * Bump version numbers from 1.x to 2.x.
 *
 *------------------------------------------------------------------
 * $Endlog$
 */


/******************************************************************
 * debug mailbox
 *
 */
EOLS	(debug_mailbox_eol, debug_command, DEBUG_MAILBOX);
KEYWORD_DEBUG(debug_mailbox_kwd, debug_mailbox_eol, NONE,
	      OBJ(pdb,1), mailbox_debug_arr,
	      "mailbox", "Mailbox operations", PRIV_OPR);

ASSERT  (debug_mailbox, debug_mailbox_kwd, ALTERNATE,
	 IS_VENDOR(VENDOR_CHIPCOM));

#undef	ALTERNATE
#define	ALTERNATE	debug_mailbox
