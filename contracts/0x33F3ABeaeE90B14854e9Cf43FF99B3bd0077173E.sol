contract main {


// =======================  Init code  ======================


uint256 stor0;
uint64 stor1;
array of struct stor2;
uint256 stor3;
address stor4;

function _fallback() payable {
    stor0 = test266151307()
    stor1 = test266151307()
    mem[128] = 'building priority acquit subject'
    stor2.length = 65
    s = 0
    idx = 128
    while 160 > idx:
        stor2[s].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 1
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[160] = uint256(stor2.field_0)
    idx = 160
    s = 0
    while stor2.length + 160 > idx + 32:
        mem[idx + 32] = stor2[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    stor3 = sha3(mem[160 len stor2.length])
    stor4 = 0xbb902569a997d657e8d10b82ce0ec5a5983c8c7c
    require not msg.value
    mem[160] = uint256(stor2.field_0)
    idx = 160
    s = 0
    while stor2.length + 160 > idx + 32:
        mem[idx + 32] = stor2[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor2.length + 160] = address(this.address)
    _474 = sha3(mem[160 len stor2.length + 20])
    mem[164] = uint256(stor2.field_0)
    idx = 164
    s = 0
    while stor2.length + 164 > idx + 32:
        mem[idx + 32] = stor2[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + 164] = Mask(64, 192, _474 and stor0 << 192 xor stor1)
    call stor4 with:
       funct Mask(32, 224, sha3('enter(bytes32,bytes8)')) >> 224
         gas gas_remaining - 25710 wei
        args mem[164 len stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + 32]
    return code.data[1268 len 851]
}



// =====================  Runtime code  =====================


const sub_7d3affdf(?) = 0xffffffffffffffff000000000000000000000000000000000000000000000000


uint256 sub_b06dfaeb;
uint64 sub_ac03668e;
array of uint256 sub_1f7a5ecd;
uint256 sub_e6af2935;

function sub_1f7a5ecd(?) {
    return sub_1f7a5ecd[0 len sub_1f7a5ecd.length]
}

function sub_ac03668e(?) {
    return Mask(64, 192, sub_ac03668e)
}

function sub_b06dfaeb(?) {
    return sub_b06dfaeb
}

function sub_e6af2935(?) {
    return sub_e6af2935
}

function kill() {
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}



}
