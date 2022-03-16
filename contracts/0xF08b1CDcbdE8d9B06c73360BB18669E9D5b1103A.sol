contract main {


// =======================  Init code  ======================


const _fallback = code.data[19 len 513]




// =====================  Runtime code  =====================


uint256 get;
array of struct stor1;

function get() payable {
    return get
}

function _fallback() payable {
  stop
}

function set(uint256 arg1) payable {
    get = arg1
}

function getString() payable {
    if stor1.length:
        mem[160] = uint256(stor1.field_0)
        idx = 160
        s = 0
        while stor1.length + 160 > idx + 32:
            mem[idx + 32] = stor1[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=stor1.length, data=mem[160 len stor1.length])
}

function set(string arg1) payable {
    mem[128 len arg1.length] = arg1[all]
    stor1.length = arg1.length
    if not arg1.length:
        idx = 0xb10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0cf6
        while (stor1.length + 31 / 32) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0xb10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0cf6
        idx = 128
        while arg1.length + 128 > idx:
            stor[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = (Mask(251, 0, arg1.length + 31) >> 5) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a
        while (stor1.length + 31 / 32) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
}



}
