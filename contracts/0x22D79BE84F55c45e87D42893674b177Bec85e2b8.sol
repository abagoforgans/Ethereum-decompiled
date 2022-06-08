contract main {




// =====================  Runtime code  =====================


#
#  - submitRings(bytes arg1)
#
const orderBrokerRegistryAddress = 0x4e1e917f030556788ab3c9d8d0971ebf0d5439e9

const wethTokenAddress = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2

const tradeHistoryAddress = 0xbf5a37670b3de1e606ec68be3558c536b2008669

const lrcTokenAddress = 0xef68e7c694f40c8202821edf525de3782458639f

const delegateAddress = 0xb258f5c190fadab30b5ff0d6ab7e32a646a4baae

const orderBookAddress = 0xac0f8a27012fe8dc5a0bb7f5fc7170934f7e3577

const orderRegistryAddress = 0x6fb707f15ab3657dc52776b057b33cb7d95e4e90

const burnRateTableAddress = 0x20d90aefba13f044c5d23c48c3b07e2e43a006db

const feeHolderAddress = 0x5beaea36efa78f43a6d61145817fdff6a9929e60

const MAX_RING_SIZE = 8

const FEE_PERCENTAGE_BASE = 1000


uint64 ringIndex;

function ringIndex() {
    return ringIndex
}

function _fallback() payable {
    revert with 0, 'UNSUPPORTED'
}



}
