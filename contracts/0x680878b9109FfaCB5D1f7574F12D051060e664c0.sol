contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 544]
}



// =====================  Runtime code  =====================


array of struct stor1;

function _fallback() payable {
    revert 
}

function getdata() {
    mem[160] = 'www.zen-systems.de - IT-Developm'
    mem[192] = 'ent'
    stor1.length = 71
    s = 0xb10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0cf6
    idx = 160
    while 195 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = -35707666377435648211887908874984608119992236509074197713628505308453184860936
    while (stor1.length + 31 / 32) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    mem[256] = uint256(stor1.field_0)
    idx = 256
    s = 0
    while stor1.length + 224 > idx:
        mem[idx + 32] = stor1[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor1.length, data=mem[256 len stor1.length])
}



}
