contract main {




// =====================  Runtime code  =====================


#
#  - submitRings(bytes arg1)
#
const orderBrokerRegistryAddress = 0xfb024a954c1e6a6865258f76e556d637ef49780d

const wethTokenAddress = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2

const lrcTokenAddress = 0xef68e7c694f40c8202821edf525de3782458639f

const delegateAddress = 0x565f46b4ce6b12025ba3780e6d6bd8917c45154b

const orderBookAddress = 0xd1a2ddbf2d0efa767c17af5955978d2b0c8fa694

const orderRegistryAddress = 0x25a72f19cf4334f2aa079ab4f61ca2927d8cff18

const burnRateTableAddress = 0x3d1942b8f98d7091f516334bf4166140479741ca

const feeHolderAddress = 0x6f2f803447e9a78ac51c1b8713fc0e79397536e2

const MAX_RING_SIZE = 8

const FEE_PERCENTAGE_BASE = 1000


uint64 ringIndex;

function ringIndex() {
    return ringIndex
}

function _fallback() payable {
    revert
}



}
