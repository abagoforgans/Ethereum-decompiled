contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 1046]




// =====================  Runtime code  =====================


array of struct stor0;
array of uint256 stor1;
array of struct stor2;
uint256 stor3;
uint256 stor4;
uint8 stor5;
address stor6;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702948;

function remove() payable {
    if stor6 != msg.sender:
        return 0
    selfdestruct(stor6)
}

function _fallback() payable {
  stop
}

function options(uint256 arg1) payable {
    require arg1 < stor0.length
    return stor0[arg1].field_0, stor290D[arg1]
}

function p() payable {
    mem[288] = uint256(stor2.field_0)
    idx = 288
    s = 0
    while stor2.length + 288 > idx + 32:
        mem[idx + 32] = stor2[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return address(stor1.length), 
           Array(len=stor2.length, data=mem[288 len stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32)]),
           stor3,
           stor4,
           stor5
}

function sub_876a8ce3(?) payable {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[64] = (32 * arg2.length) + ceil32(arg1.length) + 160
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    stor1.length = msg.sender or Mask(96, 160, stor1.length)
    mem[0] = 2
    stor2.length = (2 * arg1.length) + 1
    s = 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace
    idx = 128
    while arg1.length + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, arg1.length + 31) >> 5) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace
    while (stor2.length + 31 / 32) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    stor3 = arg3
    stor5 = 1
    stor4 = 0
    idx = 0
    while idx < arg2.length:
        stor0.length++
        if not stor0.length > stor0.length + 1:
            mem[0] = 0
            _129 = mem[64]
            mem[64] = mem[64] + 64
            require idx < mem[ceil32(arg1.length) + 128]
            mem[_129] = mem[ceil32(arg1.length) + (32 * idx) + 160]
            mem[_129 + 32] = 0
            stor0[stor0.length].field_0 = mem[_129]
        else:
            s = (2 * stor0.length + 1) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563
            while (2 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563 > s:
                stor[s] = 0
                uint256(stor1[s]) = 0
                s = s + 1
                continue 
            mem[0] = 0
            _150 = mem[64]
            mem[64] = mem[64] + 64
            require idx < mem[ceil32(arg1.length) + 128]
            mem[_150] = mem[ceil32(arg1.length) + (32 * idx) + 160]
            mem[_150 + 32] = 0
            stor0[stor0.length].field_0 = mem[_150]
        stor0[stor0.length].field_256 = 0
        idx = idx + 1
        continue 
}



}
