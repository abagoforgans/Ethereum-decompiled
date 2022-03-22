contract main {


// =======================  Init code  ======================


uint256 stor4;

function _fallback() payable {
    stor4 = 12 * 10^14
    return code.data[29 len 1182]
}



// =====================  Runtime code  =====================


uint8 stor0;
uint256 stor0;
uint256 stor1;
address stor2;
uint256 stor2;
array of struct stor3;
uint256 stor4;

function sub_f4dce749(?) payable {
    mem[128 len arg2.length] = arg2[all]
    uint8(stor0) = 0
    stor1 = arg3
    uint256(stor2) = arg1 or Mask(96, 160, uint256(stor2))
    stor3.length = (2 * arg2.length) + 1
    s = 0xc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f85b
    idx = 128
    while arg2.length + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, arg2.length + 31) >> 5) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5
    while (stor3.length + 31 / 32) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    call address(arg1) with:
       value msg.value - (stor1 * stor4) wei
         gas 0 wei
    mem[ceil32(arg2.length) + 128 len arg2.length] = arg2[all]
    call address(arg1) with:
       funct Mask(32, 224, sha3(arg2[all])) >> 224
         gas 50000 wei
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 0 wei
    uint8(stor0) = 0
    stor1 = 0
    address(stor2) = 0
    uint8(stor3.length) = 0
    Mask(248, 0, stor3.length.field_8) = mem[ceil32(arg2.length) + 160 len 31]
}

function _fallback() payable {
    mem[64] = 96
    if uint8(stor0) >= stor1:
        uint8(stor0) = 0
    else:
        if address(stor2) != msg.sender:
            uint8(stor0) = 0
        else:
            uint256(stor0) = uint8(stor0) + 1 or Mask(248, 8, uint256(stor0))
            mem[128] = eth.balance(this.address)
            mem[160] = 96
            mem[192] = stor3.length
            mem[224] = uint256(stor3.field_0)
            idx = 224
            s = 0
            while stor3.length + 224 > idx + 32:
                mem[idx + 32] = stor3[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            emit 0x694c2cc2: address(stor2), eth.balance(this.address), Array(len=stor3.length, data=mem[224 len stor3.length + (floor32(stor3.length - 1) + -stor3.length + 32 % 32)])
            mem[0] = 3
            mem[96] = uint256(stor3.field_0)
            idx = mem[64]
            s = 0
            while stor3.length + 96 > idx + 32:
                mem[idx + 32] = stor[s + sha3(mem[0]) + 1]
                idx = idx + 32
                s = s + 1
                continue 
            mem[mem[64]] = Mask(32, 224, sha3(mem[mem[64] len stor3.length + -mem[64] + 96]))
            call address(stor2).mem[mem[64] len 4] with:
                 gas 50000 wei
}



}
