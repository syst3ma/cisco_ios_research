
svip.h,1545
#define __SVIP_H__76,2666
#define PA_FAST 78,2686
#define PA_SLOW 79,2724
#define CSR2_TURBO_MODE 80,2762
#define VIP_PARTICLE_BYTES	85,2832
#define MIN_GLOBAL_PARTICLES 87,2887
#define MAX_GLOBAL_PARTICLES 88,2922
#define PERM_GLOBAL_PARTICLES 89,2957
#define MAX_PA_BAYS	94,3021
#define PA0 95,3088
#define PA1 96,3141
#define MAX_INTERFACES_PER_PA 97,3195
#define MAX_VIP_INTERFACES 98,3260
#define INTERFACE_PA_SHIFT	100,3329
#define IPC_INTERFACE_NUMBER	102,3396
#define FLAT_INTERFACE_NUMBER(FLAT_INTERFACE_NUMBER104,3463
#define MAX_USABLE_INTF_PER_PA	112,3747
#define PA_NMI_PRIOR_HI 117,3843
#define PA_NMI_PRIOR_MED 118,3897
#define PA_NMI_PRIOR_LOW 119,3950
#define PA_NMI_PRIOR_ZERO 120,4000
#define NETINT_MASK_MIN 125,4130
#define NETINT_MASK_DEFAULT 126,4204
#define NETINT_MASK_MAX 127,4282
#define NETINT_MIN 128,4356
#define NETINT_DEFAULT 129,4430
#define NETINT_MAX 130,4508
#define NETINT_THROTTLE_DEFAULT 132,4584
#define NETWORK_SW_INTERRUPT 134,4659
#define BRIEF_BUS_STALL_TIME 139,4723
#define HIT_INVALIDATE_DATA 144,4807
#define HIT_WRITEBACK_INVALIDATE_DATA 145,4852
#define CREATE_DIRTY_EXCLUSIVE_DATA 146,4897
void hit_invalidate_cache_line_inline 149,4957
#define DAS_DEBUG(DAS_DEBUG169,5452
#define STATISTICS(STATISTICS170,5473
#define SVIP_DEBUG_SUPPORT 172,5496
#define MEMD_POSTED_READ_SUPPORT 173,5540
#define RPSP_SELECT 178,5634
#define TRAFFIC_SHAPING(TRAFFIC_SHAPING183,5729
typedef void (*vector)vector194,5936
typedef void (*vector)(ulong)ulong194,5936