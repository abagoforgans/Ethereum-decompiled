contract main {


// =======================  Init code  ======================


uint256 stor2;

function _fallback() payable {
    stor2 = 12 * 10^14
    return code.data[29 len 929]
}



// =====================  Runtime code  =====================


uint8 stor0;
address stor0; offset 8
uint256 stor0;
uint256 stor0; offset 8
array of struct stor1;
uint256 stor2;

function _fallback() payable {
    if uint8(stor0.field_0):
        uint8(stor0.field_0) = 0
    else:
        if address(stor0.field_8) != msg.sender:
            uint8(stor0.field_0) = 0
        else:
            uint8(stor0.field_0) = 1
            mem[96] = uint256(stor1.field_0)
            idx = 96
            s = 0
            while stor1.length + 96 > idx + 32:
                mem[idx + 32] = stor1[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[96] = Mask(32, 224, sha3(mem[96 len stor1.length]))
            call 0 or address(stor0.field_8).mem[96 len 4] with:
                 gas 50000 wei
}

function sub_e655beb4(?) payable {
    mem[128 len arg2.length] = arg2[all]
    uint8(stor0.field_0) = 0
    Mask(248, 0, stor0.field_8) = Mask(248, 0, arg1)
    stor1.length = (2 * arg2.length) + 1
    s = 0xb10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0cf6
    idx = 128
    while arg2.length + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, arg2.length + 31) >> 5) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a
    while (stor1.length + 31 / 32) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    call address(arg1) with:
       value msg.value - stor2 wei
         gas 0 wei
    mem[ceil32(arg2.length) + 128 len arg2.length] = arg2[all]
    call address(arg1) with:
       funct Mask(32, 224, sha3(arg2[all])) >> 224
         gas 50000 wei
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 0 wei
    Mask(168, 0, stor0.field_0) = 0
    uint8(stor1.length) = 0
    Mask(248, 0, stor1.length.field_8) = mem[ceil32(arg2.length) + 160 len 31]
}



}
