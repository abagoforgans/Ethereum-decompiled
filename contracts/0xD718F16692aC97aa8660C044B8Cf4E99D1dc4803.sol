contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint32 stor1;
array of address sub_0dde7881;
uint256 stor3;
uint256 stor4;
mapping of uint8 sub_c6dad1ca;
uint256 stor6;
mapping of uint8 sub_3257aa73;
uint256 stor8;
mapping of uint8 sub_329e9161;
uint256 stor10;
mapping of uint256 stor11;
mapping of uint8 stor12;
uint256 stor13;
mapping of uint256 stor14;
mapping of uint8 stor15;
uint256 stor16;
mapping of uint8 stor17;
uint256 stor18;
mapping of uint256 stor19;
mapping of uint8 stor20;
address stor21;
uint256 stor22;
mapping of uint8 stor23;
uint256 stor24;
mapping of uint8 stor25;
uint256 stor26;
mapping of uint8 stor27;
uint256 stor28;
mapping of uint8 stor29;
uint256 stor30;
mapping of uint8 stor31;

function sub_0dde7881(?) {
    require arg1 < sub_0dde7881.length
    return address(sub_0dde7881[arg1])
}

function sub_3257aa73(?) {
    return uint256(sub_3257aa73[stor6][address(arg1)][1][uint256(sub_3257aa73[stor6][address(arg1)])])
}

function sub_329e9161(?) {
    return uint256(sub_329e9161[stor8][sha3(arg1, Mask(96, 64, arg2) >> 64, mem[200 len 8])][1][uint256(sub_329e9161[stor8][sha3(arg1, Mask(96, 64, arg2) >> 64, mem[200 len 8])])])
}

function sub_c6dad1ca(?) {
    return uint256(sub_c6dad1ca[stor4][address(arg1)][1][uint256(sub_c6dad1ca[stor4][address(arg1)])])
}

function getManagerCount() {
    return uint32(sub_0dde7881.length)
}

function isManager(address arg1) {
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function sub_2f45dc10(?) {
    if not stor1[address(arg1)]:
        revert with 0, 'null'
    return uint32(stor1[address(arg1)] - 1)
}

function setStorage(address arg1) {
    if not stor1[address(msg.sender)]:
        revert with 0, 'manager'
    stor21 = arg1
    if not stor1[address(msg.sender)]:
        revert with 0, 'manager'
    if stor0:
        revert with 0, '0'
    stor0 = arg1
}

function sub_26538465(?) {
    if not stor1[address(msg.sender)]:
        revert with 0, 'manager'
    if stor12[stor10][msg.sender]:
        revert with 0, 'once'
    stor12[stor10][msg.sender] = 1
    require stor11[stor10] + 1 >= stor11[stor10]
    stor11[stor10]++
}

function sub_d2f6a27c(?) {
    if not stor1[address(msg.sender)]:
        revert with 0, 'manager'
    if stor15[stor13][msg.sender]:
        revert with 0, 'once'
    stor15[stor13][msg.sender] = 1
    require stor14[stor13] + 1 >= stor14[stor13]
    stor14[stor13]++
}

function sub_eef3a713(?) {
    if not stor1[address(msg.sender)]:
        revert with 0, 'manager'
    require ext_code.size(stor0)
    call stor0.acceptManager() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e6182964(?) {
    if not stor1[address(msg.sender)]:
        revert with 0, 'manager'
    if stor20[stor18][msg.sender]:
        revert with 0, 'once'
    stor20[stor18][msg.sender] = 1
    require stor19[stor18] + 1 >= stor19[stor18]
    stor19[stor18]++
    emit 0x257d5cc1: msg.sender
}

function sub_12371416(?) {
    if not stor1[address(msg.sender)]:
        revert with 0, 'manager'
    require stor13 + 1 >= stor13
    stor13++
    require ext_code.size(stor0)
    call stor0.0x8e1f81bb with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_5a4f2db6(?) {
    if not stor1[address(msg.sender)]:
        revert with 0, 'manager'
    if stor14[stor13] < stor3:
        revert with 0, 'threshold'
    require ext_code.size(stor0)
    call stor0.0x6aec0ef with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d2aa85ed(?) {
    if not stor1[address(msg.sender)]:
        revert with 0, 'manager'
    require 1 == uint256(stor25[stor24][arg1][1][uint256(stor25[stor24][arg1])]) >= stor3
    stor24++
    require ext_code.size(stor21)
    call stor21.0xd2aa85ed with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d5a38eb8(?) {
    if not stor1[address(msg.sender)]:
        revert with 0, 'manager'
    if uint256(stor29[stor28][arg1 << 240][1][uint256(stor29[stor28][arg1 << 240])]) >= stor3 != 1:
        revert with 0, 'threshold'
    stor28++
    require ext_code.size(stor21)
    call stor21.0xd5a38eb8 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e137a82e(?) {
    if not stor1[address(msg.sender)]:
        revert with 0, 'manager'
    if uint256(stor27[stor26][arg1 << 240][1][uint256(stor27[stor26][arg1 << 240])]) >= stor3 != 1:
        revert with 0, 'threshold'
    stor26++
    require ext_code.size(stor21)
    call stor21.0xe137a82e with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_65926e61(?) {
    if not stor1[address(msg.sender)]:
        revert with 0, 'manager'
    if stor11[stor10] < stor3:
        revert with 0, 'threshold'
    require ext_code.size(stor0)
    call stor0.0xe6dfa245 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor0)
    call stor0.0x61f861c0 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function resetApproval() {
    if not stor1[address(msg.sender)]:
        revert with 0, 'manager'
    if stor19[stor18] < stor3:
        revert with 0, 'threshold'
    require stor22 + 1 >= stor22
    stor22++
    stor24++
    stor26++
    stor28++
    stor30++
    require stor4 + 1 >= stor4
    stor4++
    require stor6 + 1 >= stor6
    stor6++
    stor8++
    require stor10 + 1 >= stor10
    stor10++
    require stor13 + 1 >= stor13
    stor13++
    require stor16 + 1 >= stor16
    stor16++
    require stor18 + 1 >= stor18
    stor18++
    emit 0xe7fd7c5a 
}

function sub_651e633d(?) {
    if not stor1[address(msg.sender)]:
        revert with 0, 'manager'
    if uint8(stor27[stor26][arg1 << 240][2][uint256(stor27[stor26][arg1 << 240])][msg.sender]):
        revert with 0, 'once'
    uint8(stor27[stor26][arg1 << 240][2][uint256(stor27[stor26][arg1 << 240])][msg.sender]) = 1
    require uint256(stor27[stor26][arg1 << 240][1][uint256(stor27[stor26][arg1 << 240])]) + 1 >= uint256(stor27[stor26][arg1 << 240][1][uint256(stor27[stor26][arg1 << 240])])
    uint256(stor27[stor26][arg1 << 240][1][uint256(stor27[stor26][arg1 << 240])])++
}

function sub_e4e3ac6f(?) {
    if not stor1[address(msg.sender)]:
        revert with 0, 'manager'
    if uint8(stor29[stor28][arg1 << 240][2][uint256(stor29[stor28][arg1 << 240])][msg.sender]):
        revert with 0, 'once'
    uint8(stor29[stor28][arg1 << 240][2][uint256(stor29[stor28][arg1 << 240])][msg.sender]) = 1
    require uint256(stor29[stor28][arg1 << 240][1][uint256(stor29[stor28][arg1 << 240])]) + 1 >= uint256(stor29[stor28][arg1 << 240][1][uint256(stor29[stor28][arg1 << 240])])
    uint256(stor29[stor28][arg1 << 240][1][uint256(stor29[stor28][arg1 << 240])])++
}

function sub_6c7d447e(?) {
    if not stor1[address(msg.sender)]:
        revert with 0, 'manager'
    if uint8(stor23[stor22][address(arg1)][2][uint256(stor23[stor22][address(arg1)])][msg.sender]):
        revert with 0, 'once'
    uint8(stor23[stor22][address(arg1)][2][uint256(stor23[stor22][address(arg1)])][msg.sender]) = 1
    require uint256(stor23[stor22][address(arg1)][1][uint256(stor23[stor22][address(arg1)])]) + 1 >= uint256(stor23[stor22][address(arg1)][1][uint256(stor23[stor22][address(arg1)])])
    uint256(stor23[stor22][address(arg1)][1][uint256(stor23[stor22][address(arg1)])])++
}

function releaseETH(address arg1, uint256 arg2) {
    if not stor1[address(msg.sender)]:
        revert with 0, 'manager'
    require ext_code.size(stor21)
    call stor21.0x42f6b6ce with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xe8e71f0c with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_6046dd89(?) {
    if not stor1[address(msg.sender)]:
        revert with 0, 'manager'
    if uint256(stor17[stor16][address(arg1)][1][uint256(stor17[stor16][address(arg1)])]) >= stor3 != 1:
        revert with 0, 'threshold'
    require uint256(stor17[stor16][address(arg1)]) + 1 >= uint256(stor17[stor16][address(arg1)])
    uint256(stor17[stor16][address(arg1)])++
    require ext_code.size(stor0)
    call stor0.transferManager(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x1b9bf54f: arg1
}

function sub_b7418708(?) {
    if not stor1[address(msg.sender)]:
        revert with 0, 'manager'
    if arg2 == 1:
        if uint256(stor23[stor22][address(arg1)][1][uint256(stor23[stor22][address(arg1)])]) >= stor3 != 1:
            revert with 0, 'threshold'
        require uint256(stor23[stor22][address(arg1)]) + 1 >= uint256(stor23[stor22][address(arg1)])
        uint256(stor23[stor22][address(arg1)])++
    require ext_code.size(stor21)
    call stor21.0x696361ec with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_66c61fe7(?) {
    if not stor1[address(msg.sender)]:
        revert with 0, 'manager'
    if uint8(stor17[stor16][address(arg1)][2][uint256(stor17[stor16][address(arg1)])][msg.sender]):
        revert with 0, 'once'
    uint8(stor17[stor16][address(arg1)][2][uint256(stor17[stor16][address(arg1)])][msg.sender]) = 1
    require uint256(stor17[stor16][address(arg1)][1][uint256(stor17[stor16][address(arg1)])]) + 1 >= uint256(stor17[stor16][address(arg1)][1][uint256(stor17[stor16][address(arg1)])])
    uint256(stor17[stor16][address(arg1)][1][uint256(stor17[stor16][address(arg1)])])++
    emit 0x832cf860: address(arg1), msg.sender
}

function sub_c1f337cd(?) {
    if not stor1[address(msg.sender)]:
        revert with 0, 'manager'
    if uint256(stor31[stor30][sha3(arg1, arg2, arg3)][1][uint256(stor31[stor30][sha3(arg1, arg2, arg3)])]) >= stor3 != 1:
        revert with 0, 'threshold'
    require uint256(stor31[stor30][sha3(arg1, arg2, arg3)]) + 1 >= uint256(stor31[stor30][sha3(arg1, arg2, arg3)])
    uint256(stor31[stor30][sha3(arg1, arg2, arg3)])++
    require ext_code.size(stor21)
    call stor21.0xc1f337cd with:
         gas gas_remaining wei
        args arg1, arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function releaseERC20(address arg1, address arg2, uint256 arg3) {
    if not stor1[address(msg.sender)]:
        revert with 0, 'manager'
    require ext_code.size(stor21)
    call stor21.0x42f6b6ce with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x6cd533d8 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function releaseERC721(address arg1, address arg2, uint256 arg3) {
    if not stor1[address(msg.sender)]:
        revert with 0, 'manager'
    require ext_code.size(stor21)
    call stor21.0x42f6b6ce with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xd8265846 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function releaseERC1155(address arg1, address arg2, uint256 arg3, uint256 arg4) {
    if not stor1[address(msg.sender)]:
        revert with 0, 'manager'
    require ext_code.size(stor21)
    call stor21.0x42f6b6ce with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9d27375 with:
         gas gas_remaining wei
        args 0, 0, address(arg2), arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_bcd1c2c4(?) {
    if not stor1[address(msg.sender)]:
        revert with 0, 'manager'
    if uint8(stor31[stor30][sha3(arg1, arg2, arg3)][2][uint256(stor31[stor30][sha3(arg1, arg2, arg3)])][msg.sender]):
        revert with 0, 'once'
    uint8(stor31[stor30][sha3(arg1, arg2, arg3)][2][uint256(stor31[stor30][sha3(arg1, arg2, arg3)])][msg.sender]) = 1
    require uint256(stor31[stor30][sha3(arg1, arg2, arg3)][1][uint256(stor31[stor30][sha3(arg1, arg2, arg3)])]) + 1 >= uint256(stor31[stor30][sha3(arg1, arg2, arg3)][1][uint256(stor31[stor30][sha3(arg1, arg2, arg3)])])
    uint256(stor31[stor30][sha3(arg1, arg2, arg3)][1][uint256(stor31[stor30][sha3(arg1, arg2, arg3)])])++
}

function sub_05b7ed2c(?) {
    if not stor1[address(msg.sender)]:
        revert with 0, 'manager'
    if uint8(sub_3257aa73[stor6][address(arg1)][2][uint256(sub_3257aa73[stor6][address(arg1)])][msg.sender]):
        revert with 0, 'once'
    uint8(sub_3257aa73[stor6][address(arg1)][2][uint256(sub_3257aa73[stor6][address(arg1)])][msg.sender]) = 1
    require uint256(sub_3257aa73[stor6][address(arg1)][1][uint256(sub_3257aa73[stor6][address(arg1)])]) + 1 >= uint256(sub_3257aa73[stor6][address(arg1)][1][uint256(sub_3257aa73[stor6][address(arg1)])])
    uint256(sub_3257aa73[stor6][address(arg1)][1][uint256(sub_3257aa73[stor6][address(arg1)])])++
    emit 0x7a8ab0ad: address(arg1), msg.sender, 0
}

function sub_db9d2f3e(?) {
    if not stor1[address(msg.sender)]:
        revert with 0, 'manager'
    if uint8(sub_c6dad1ca[stor4][address(arg1)][2][uint256(sub_c6dad1ca[stor4][address(arg1)])][msg.sender]):
        revert with 0, 'once'
    uint8(sub_c6dad1ca[stor4][address(arg1)][2][uint256(sub_c6dad1ca[stor4][address(arg1)])][msg.sender]) = 1
    require uint256(sub_c6dad1ca[stor4][address(arg1)][1][uint256(sub_c6dad1ca[stor4][address(arg1)])]) + 1 >= uint256(sub_c6dad1ca[stor4][address(arg1)][1][uint256(sub_c6dad1ca[stor4][address(arg1)])])
    uint256(sub_c6dad1ca[stor4][address(arg1)][1][uint256(sub_c6dad1ca[stor4][address(arg1)])])++
    emit 0x7a8ab0ad: address(arg1), msg.sender, 1
}

function addManager(address arg1) {
    if not stor1[address(msg.sender)]:
        revert with 0, 'manager'
    if uint256(sub_c6dad1ca[stor4][address(arg1)][1][uint256(sub_c6dad1ca[stor4][address(arg1)])]) >= stor3 != 1:
        revert with 0, 'threshold'
    require uint256(sub_c6dad1ca[stor4][address(arg1)]) + 1 >= uint256(sub_c6dad1ca[stor4][address(arg1)])
    uint256(sub_c6dad1ca[stor4][address(arg1)])++
    if not stor1[address(arg1)]:
        if test266151307() <= sub_0dde7881.length:
            revert with 0, 'len'
        sub_0dde7881.length++
        address(sub_0dde7881[sub_0dde7881.length]) = arg1
        stor1[address(arg1)] = uint32(sub_0dde7881.length + 1)
        emit 0x95607910: address(arg1), 1
}

function sub_0b690159(?) {
    if not stor1[address(msg.sender)]:
        revert with 0, 'manager'
    if uint8(sub_329e9161[stor8][sha3(arg1, Mask(96, 64, arg2) >> 64, mem[200 len 8])][2][uint256(sub_329e9161[stor8][sha3(arg1, Mask(96, 64, arg2) >> 64, mem[200 len 8])])][msg.sender]):
        revert with 0, 'once'
    uint8(sub_329e9161[stor8][sha3(arg1, Mask(96, 64, arg2) >> 64, mem[200 len 8])][2][uint256(sub_329e9161[stor8][sha3(arg1, Mask(96, 64, arg2) >> 64, mem[200 len 8])])][msg.sender]) = 1
    require uint256(sub_329e9161[stor8][sha3(arg1, Mask(96, 64, arg2) >> 64, mem[200 len 8])][1][uint256(sub_329e9161[stor8][sha3(arg1, Mask(96, 64, arg2) >> 64, mem[200 len 8])])]) + 1 >= uint256(sub_329e9161[stor8][sha3(arg1, Mask(96, 64, arg2) >> 64, mem[200 len 8])][1][uint256(sub_329e9161[stor8][sha3(arg1, Mask(96, 64, arg2) >> 64, mem[200 len 8])])])
    uint256(sub_329e9161[stor8][sha3(arg1, Mask(96, 64, arg2) >> 64, mem[200 len 8])][1][uint256(sub_329e9161[stor8][sha3(arg1, Mask(96, 64, arg2) >> 64, mem[200 len 8])])])++
    emit 0x4ff44bd6: address(arg1), address(arg2), msg.sender, 1
}

function removeManager(address arg1) {
    if not stor1[address(msg.sender)]:
        revert with 0, 'manager'
    if uint256(sub_3257aa73[stor6][address(arg1)][1][uint256(sub_3257aa73[stor6][address(arg1)])]) >= stor3 != 1:
        revert with 0, 'threshold'
    require stor22 + 1 >= stor22
    stor22++
    stor24++
    stor26++
    stor28++
    stor30++
    require stor4 + 1 >= stor4
    stor4++
    require stor6 + 1 >= stor6
    stor6++
    stor8++
    require stor10 + 1 >= stor10
    stor10++
    require stor13 + 1 >= stor13
    stor13++
    require stor16 + 1 >= stor16
    stor16++
    require stor18 + 1 >= stor18
    stor18++
    emit 0xe7fd7c5a 
    if stor1[address(arg1)]:
        if stor1[address(arg1)] < sub_0dde7881.length:
            require sub_0dde7881.length - 1 < sub_0dde7881.length
            require uint32(stor1[address(arg1)] - 1) < sub_0dde7881.length
            address(sub_0dde7881[uint32(stor1[address(arg1)] - 1)]) = address(sub_0dde7881[sub_0dde7881.length])
            stor1[address(stor2[stor2.length])] = stor1[address(arg1)]
        stor1[address(arg1)] = 0
        sub_0dde7881.length--
        if sub_0dde7881.length > sub_0dde7881.length - 1:
            idx = sub_0dde7881.length - 1
            while sub_0dde7881.length > idx:
                uint256(sub_0dde7881[idx]) = 0
                idx = idx + 1
                continue 
        emit 0x95607910: address(arg1), 0
}

function sub_7d605d4c(?) {
    if not stor1[address(msg.sender)]:
        revert with 0, 'manager'
    require ext_code.size(stor21)
    call stor21.0xee28d7a3 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if arg1:
            require 10 * arg1 / arg1 == 10
            if 10 * arg1 > 0:
                revert with 0, '20%'
    else:
        require 12 * ext_call.return_data[0] / ext_call.return_data[0] == 12
        if not arg1:
            if 0 > 12 * ext_call.return_data[0]:
                revert with 0, '20%'
        else:
            require 10 * arg1 / arg1 == 10
            if 10 * arg1 > 12 * ext_call.return_data[0]:
                revert with 0, '20%'
    if not ext_call.return_data[0]:
        if arg1:
            require 10 * arg1 / arg1 == 10
            if 10 * arg1 < 0:
                revert with 0, '20%'
    else:
        require 8 * ext_call.return_data[0] / ext_call.return_data[0] == 8
        if not arg1:
            if 0 < 8 * ext_call.return_data[0]:
                revert with 0, '20%'
        else:
            require 10 * arg1 / arg1 == 10
            if 10 * arg1 < 8 * ext_call.return_data[0]:
                revert with 0, '20%'
    if uint8(stor25[stor24][arg1][2][uint256(stor25[stor24][arg1])][msg.sender]):
        revert with 0, 'once'
    uint8(stor25[stor24][arg1][2][uint256(stor25[stor24][arg1])][msg.sender]) = 1
    require uint256(stor25[stor24][arg1][1][uint256(stor25[stor24][arg1])]) + 1 >= uint256(stor25[stor24][arg1][1][uint256(stor25[stor24][arg1])])
    uint256(stor25[stor24][arg1][1][uint256(stor25[stor24][arg1])])++
}

function upgrade(address arg1, address arg2) {
    if not stor1[address(msg.sender)]:
        revert with 0, 'manager'
    if uint256(sub_329e9161[stor8][sha3(arg1, Mask(96, 64, arg2) >> 64, mem[200 len 8])][1][uint256(sub_329e9161[stor8][sha3(arg1, Mask(96, 64, arg2) >> 64, mem[200 len 8])])]) >= stor3 != 1:
        revert with 0, 'threshold'
    require uint256(sub_329e9161[stor8][sha3(arg1, Mask(96, 64, arg2) >> 64, mem[200 len 8])]) + 1 >= uint256(sub_329e9161[stor8][sha3(arg1, Mask(96, 64, arg2) >> 64, mem[200 len 8])])
    uint256(sub_329e9161[stor8][sha3(arg1, Mask(96, 64, arg2) >> 64, mem[200 len 8])])++
    if arg1:
        require ext_code.size(stor0)
        call stor0.isApprovedAddress(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if bool(ext_call.return_data[0]) != 1:
            revert with 0, 'old'
        require ext_code.size(arg1)
        call arg1.retire(address arg1) with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor0)
        call stor0.removeApprovedAddress(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if arg2:
        require ext_code.size(stor0)
        call stor0.isApprovedAddress(address arg1) with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'new'
        require ext_code.size(stor0)
        call stor0.addApprovedAddress(address arg1) with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(arg2)
        call arg2.initialize(address arg1, address arg2) with:
             gas gas_remaining wei
            args stor0, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit Upgrade(address(arg1), arg2);
}



}
