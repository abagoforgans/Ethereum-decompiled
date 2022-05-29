contract main {




// =====================  Runtime code  =====================


#
#  - getWLInfo()
#
address stor0;
uint256 fees;
address stor2;
uint256 stor2;
address stor3;
uint256 stor4;
uint256 stor5;
mapping of uint256 stor6;
mapping of struct stor7;
mapping of struct stor8;

function getFess() {
    return fees
}

function fees() {
    return fees
}

function _fallback() payable {
    revert
}

function woyaoqianqian(uint256 arg1) {
    if arg1 >= fees:
        revert with 0, 'loser fuck off.'
    require arg1 <= fees
    fees -= arg1
    call stor0 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw() {
    if 0 >= stor6[msg.sender]:
        revert with 0, 'Nothing left for you'
    stor6[msg.sender] = 0
    call msg.sender with:
       value stor6[msg.sender] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if msg.sender == address(stor2):
        stor3 = address(stor2)
        stor5 = stor4
        address(stor2) = 0
        stor4 = 0
    return 1
}

function bid() payable {
    if msg.value <= 10^14:
        revert with 0, '?????'
    if msg.value <= stor4:
        revert with 0, 'loser fuck off.'
    if msg.value / 10:
        require 9 * msg.value / 10 / msg.value / 10 == 9
        stor6[msg.sender] += 9 * msg.value / 10
    fees += msg.value / 10
    if address(stor2):
        stor3 = address(stor2)
        stor5 = stor4
    uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
    stor4 = msg.value
    if not stor7[msg.sender].length:
        stor7[msg.sender].field_0 = 0
        stor7[msg.sender].field_1 = 10
        stor7[msg.sender].field_8 = '#Anonymous' / 256
        idx = 0
        while stor7[msg.sender].length + 31 / 32 > idx:
            stor7[msg.sender][idx].field_0 = 0
            idx = idx + 1
            continue 
        stor8[msg.sender].field_0 = 0
        stor8[msg.sender].field_1 = 8
        stor8[msg.sender].field_8 = '#Nothing' / 256
        idx = 0
        while stor8[msg.sender].length + 31 / 32 > idx:
            stor8[msg.sender][idx].field_0 = 0
            idx = idx + 1
            continue 
}

function setInfo(string arg1, string arg2) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    if arg1.length > 256:
        revert with 0, 'string must be between 1 and 256 characters'
    if arg1.length <= 0:
        revert with 0, 'string must be between 1 and 256 characters'
    require 0 < arg1.length
    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[128]):
        revert with 0, 'string cannot start or end with space'
    require arg1.length - 1 < arg1.length
    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, -(8 * arg1.length + -ceil32(arg1.length) + 31) + 248, mem[arg1.length + 127 len ceil32(arg1.length) + -arg1.length + 1]) << 8 * arg1.length + -ceil32(arg1.length) + 31:
        revert with 0, 'string cannot start or end with space'
    require 0 < arg1.length
    if 0x3000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[128]):
        require 1 < arg1.length
        if 0x7800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[129]):
            revert with 0, 'string cannot start with 0x'
        require 1 < arg1.length
        if 0x5800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[129]):
            revert with 0, 'string cannot start with 0X'
    stor7[msg.sender][].field_0 = Array(len=arg1.length, data=arg1[all])
    if arg2.length > 256:
        revert with 0, 'string must be between 1 and 256 characters'
    if arg2.length <= 0:
        revert with 0, 'string must be between 1 and 256 characters'
    require 0 < arg2.length
    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[ceil32(arg1.length) + 160]):
        revert with 0, 'string cannot start or end with space'
    require arg2.length - 1 < arg2.length
    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[ceil32(arg1.length) + arg2.length + 159]):
        revert with 0, 'string cannot start or end with space'
    require 0 < arg2.length
    if 0x3000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[ceil32(arg1.length) + 160]):
        require 1 < arg2.length
        if 0x7800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[ceil32(arg1.length) + 161]):
            revert with 0, 'string cannot start with 0x'
        require 1 < arg2.length
        if 0x5800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[ceil32(arg1.length) + 161]):
            revert with 0, 'string cannot start with 0X'
    stor8[msg.sender][].field_0 = Array(len=arg2.length, data=arg2[all])
}

function getInfo(address arg1) {
    mem[32] = 8
    mem[96] = stor7[address(arg1)].length
    mem[128] = stor7[address(arg1)].field_0
    idx = 128
    s = 0
    while stor7[address(arg1)].length + 96 > idx:
        mem[idx + 32] = stor7[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor7[address(arg1)].length) + ceil32(stor8[address(arg1)].length) + 160
    mem[ceil32(stor7[address(arg1)].length) + 128] = stor8[address(arg1)].length
    mem[0] = sha3(address(arg1), 8)
    mem[ceil32(stor7[address(arg1)].length) + 160] = stor8[address(arg1)].field_0
    idx = ceil32(stor7[address(arg1)].length) + 160
    s = 0
    while ceil32(stor7[address(arg1)].length) + stor8[address(arg1)].length + 128 > idx:
        mem[idx + 32] = stor8[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor7[address(arg1)].length) + ceil32(stor8[address(arg1)].length) + 160] = 64
    mem[ceil32(stor7[address(arg1)].length) + ceil32(stor8[address(arg1)].length) + 224] = stor7[address(arg1)].length
    mem[ceil32(stor7[address(arg1)].length) + ceil32(stor8[address(arg1)].length) + 256 len ceil32(stor7[address(arg1)].length)] = mem[128 len ceil32(stor7[address(arg1)].length)]
    mem[ceil32(stor7[address(arg1)].length) + ceil32(stor8[address(arg1)].length) + 192] = stor7[address(arg1)].length + 96
    mem[stor7[address(arg1)].length + ceil32(stor7[address(arg1)].length) + ceil32(stor8[address(arg1)].length) + 256] = stor8[address(arg1)].length
    mem[stor7[address(arg1)].length + ceil32(stor7[address(arg1)].length) + ceil32(stor8[address(arg1)].length) + 288 len ceil32(stor8[address(arg1)].length)] = mem[ceil32(stor7[address(arg1)].length) + 160 len ceil32(stor8[address(arg1)].length)]
    if not stor8[address(arg1)].length % 32:
        return Array(len=stor7[address(arg1)].length, data=mem[128 len ceil32(stor7[address(arg1)].length)], mem[(2 * ceil32(stor7[address(arg1)].length)) + ceil32(stor8[address(arg1)].length) + 256 len stor8[address(arg1)].length + stor7[address(arg1)].length + -ceil32(stor7[address(arg1)].length) + 32]), 
               stor7[address(arg1)].length + 96
    mem[floor32(stor8[address(arg1)].length) + stor7[address(arg1)].length + ceil32(stor7[address(arg1)].length) + ceil32(stor8[address(arg1)].length) + 288] = mem[floor32(stor8[address(arg1)].length) + stor7[address(arg1)].length + ceil32(stor7[address(arg1)].length) + ceil32(stor8[address(arg1)].length) + -stor8[address(arg1)].length % 32 + 320 len stor8[address(arg1)].length % 32]
    return Array(len=stor7[address(arg1)].length, data=mem[128 len ceil32(stor7[address(arg1)].length)], mem[(2 * ceil32(stor7[address(arg1)].length)) + ceil32(stor8[address(arg1)].length) + 256 len floor32(stor8[address(arg1)].length) + stor7[address(arg1)].length + -ceil32(stor7[address(arg1)].length) + 64]), 
           stor7[address(arg1)].length + 96
}

function getMyInfo() {
    mem[32] = 8
    mem[96] = stor7[address(msg.sender)].length
    mem[128] = stor7[address(msg.sender)].field_0
    idx = 128
    s = 0
    while stor7[address(msg.sender)].length + 96 > idx:
        mem[idx + 32] = stor7[address(msg.sender)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor7[address(msg.sender)].length) + ceil32(stor8[address(msg.sender)].length) + 160
    mem[ceil32(stor7[address(msg.sender)].length) + 128] = stor8[address(msg.sender)].length
    mem[0] = sha3(address(msg.sender), 8)
    mem[ceil32(stor7[address(msg.sender)].length) + 160] = stor8[address(msg.sender)].field_0
    idx = ceil32(stor7[address(msg.sender)].length) + 160
    s = 0
    while ceil32(stor7[address(msg.sender)].length) + stor8[address(msg.sender)].length + 128 > idx:
        mem[idx + 32] = stor8[address(msg.sender)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor7[address(msg.sender)].length) + ceil32(stor8[address(msg.sender)].length) + 160] = 64
    mem[ceil32(stor7[address(msg.sender)].length) + ceil32(stor8[address(msg.sender)].length) + 224] = stor7[address(msg.sender)].length
    mem[ceil32(stor7[address(msg.sender)].length) + ceil32(stor8[address(msg.sender)].length) + 256 len ceil32(stor7[address(msg.sender)].length)] = mem[128 len ceil32(stor7[address(msg.sender)].length)]
    mem[ceil32(stor7[address(msg.sender)].length) + ceil32(stor8[address(msg.sender)].length) + 192] = stor7[address(msg.sender)].length + 96
    mem[stor7[address(msg.sender)].length + ceil32(stor7[address(msg.sender)].length) + ceil32(stor8[address(msg.sender)].length) + 256] = stor8[address(msg.sender)].length
    mem[stor7[address(msg.sender)].length + ceil32(stor7[address(msg.sender)].length) + ceil32(stor8[address(msg.sender)].length) + 288 len ceil32(stor8[address(msg.sender)].length)] = mem[ceil32(stor7[address(msg.sender)].length) + 160 len ceil32(stor8[address(msg.sender)].length)]
    if not stor8[address(msg.sender)].length % 32:
        return Array(len=stor7[address(msg.sender)].length, data=mem[128 len ceil32(stor7[address(msg.sender)].length)], mem[(2 * ceil32(stor7[address(msg.sender)].length)) + ceil32(stor8[address(msg.sender)].length) + 256 len stor8[address(msg.sender)].length + stor7[address(msg.sender)].length + -ceil32(stor7[address(msg.sender)].length) + 32]), 
               stor7[address(msg.sender)].length + 96
    mem[floor32(stor8[address(msg.sender)].length) + stor7[address(msg.sender)].length + ceil32(stor7[address(msg.sender)].length) + ceil32(stor8[address(msg.sender)].length) + 288] = mem[floor32(stor8[address(msg.sender)].length) + stor7[address(msg.sender)].length + ceil32(stor7[address(msg.sender)].length) + ceil32(stor8[address(msg.sender)].length) + -stor8[address(msg.sender)].length % 32 + 320 len stor8[address(msg.sender)].length % 32]
    return Array(len=stor7[address(msg.sender)].length, data=mem[128 len ceil32(stor7[address(msg.sender)].length)], mem[(2 * ceil32(stor7[address(msg.sender)].length)) + ceil32(stor8[address(msg.sender)].length) + 256 len floor32(stor8[address(msg.sender)].length) + stor7[address(msg.sender)].length + -ceil32(stor7[address(msg.sender)].length) + 64]), 
           stor7[address(msg.sender)].length + 96
}



}
