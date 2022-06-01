contract main {




// =====================  Runtime code  =====================


#
#  - sub_0e109bb3(?)
#
address owner;
mapping of uint256 sub_faf3a8bf;
uint8 sub_9469451b;
uint8 stor2; offset 168
uint8 stor2; offset 176
uint128 stor2; offset 168
address stor2;
address WITHDRAWAddress; offset 8
mapping of uint256 sub_76731639;
mapping of struct sub_b354f5f3;
array of struct sub_e886e1ad;
mapping of uint256 balanceOf;
mapping of uint256 sub_0eb49d9c;
uint256 stor9;
uint8 stor10;

function sub_0eb49d9c(?) {
    return sub_0eb49d9c[arg1]
}

function WITHDRAW() {
    return WITHDRAWAddress
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function sub_76731639(?) {
    return sub_76731639[arg1]
}

function sub_8148f295(?) {
    return bool(uint8(stor2.field_168))
}

function owner() {
    return owner
}

function sub_9469451b(?) {
    return sub_9469451b
}

function sub_b354f5f3(?) {
    return bool(sub_b354f5f3[arg1][arg2].field_0), sub_b354f5f3[arg1][arg2].field_8
}

function sub_e886e1ad(?) {
    require arg2 < sub_e886e1ad[arg1].field_0
    return sub_e886e1ad[arg1][arg2].field_0, bool(sub_e886e1ad[arg1][arg2].field_160), sub_e886e1ad[arg1][arg2].field_256
}

function sub_faf3a8bf(?) {
    return sub_faf3a8bf[arg1]
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function pause() {
    require msg.sender == owner
    uint8(stor2.field_176) = 1
}

function sub_ecc619f7(?) {
    require msg.sender == owner
    sub_9469451b = arg1
}

function unpause() {
    require msg.sender == owner
    uint8(stor2.field_176) = 0
}

function sub_26bed783(?) {
    require msg.sender == owner
    WITHDRAWAddress = arg1
}

function sub_74177581(?) {
    require msg.sender == owner
    sub_76731639[arg1 << 248] = arg2
}

function sub_13f73296(?) {
    require msg.sender == owner
    Mask(88, 0, stor2.field_168) = Mask(88, 0, arg1)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_b6188eae(?) {
    require msg.sender == owner
    require arg3 <= balanceOf[address(arg1)]
    call arg2 with:
       value arg3 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw_all() {
    require not uint8(stor2.field_176)
    require balanceOf[msg.sender] > 0
    require not sub_0eb49d9c[msg.sender]
    call msg.sender with:
       value balanceOf[msg.sender] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_dc0ea783(?) {
    mem[128 len 640] = code.data[7984 len 640]
    idx = 0
    while idx < 20:
        require 2^(8 * -idx + 19)
        require idx < 20
        mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), 0) - 256
        idx = idx + 1
        continue 
    return sha3(mem[128 len 20], block.timestamp, block.difficulty)
}

function sub_ee24cfbf(?) {
    mem[128 len 640] = code.data[7984 len 640]
    idx = 0
    while idx < 20:
        require 2^(8 * -idx + 19)
        require idx < 20
        mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), 0) - 256
        idx = idx + 1
        continue 
    return bool(sha3(mem[128 len 20], block.timestamp, block.difficulty))
}

function sub_6295a569(?) payable {
    require not uint8(stor2.field_176)
    require arg3 <= 5
    require arg3 >= 0
    require msg.value == sub_76731639[arg3 << 248]
    if not uint8(stor2.field_168):
        sub_e886e1ad[arg3 << 248].field_0++
        sub_e886e1ad[arg3 << 248][sub_e886e1ad[arg3 << 248].field_0].field_0 = msg.sender
        sub_e886e1ad[arg3 << 248][sub_e886e1ad[arg3 << 248].field_0].field_160 = Mask(96, 0, arg1)
        sub_e886e1ad[arg3 << 248][sub_e886e1ad[arg3 << 248].field_0].field_256 = arg2
        require msg.value + balanceOf[msg.sender] >= balanceOf[msg.sender]
        balanceOf[msg.sender] += msg.value
        require sub_faf3a8bf[arg3 << 248] + 1 >= sub_faf3a8bf[arg3 << 248]
        sub_faf3a8bf[arg3 << 248]++
        require sub_0eb49d9c[msg.sender] + 1 >= sub_0eb49d9c[msg.sender]
        sub_0eb49d9c[msg.sender]++
        emit 0xbc097b51: msg.sender, arg1, msg.value, arg2, 0
    else:
        if sub_9469451b > sub_e886e1ad[arg3 << 248].field_0:
            sub_e886e1ad[arg3 << 248].field_0++
            sub_e886e1ad[arg3 << 248][sub_e886e1ad[arg3 << 248].field_0].field_0 = msg.sender
            sub_e886e1ad[arg3 << 248][sub_e886e1ad[arg3 << 248].field_0].field_160 = Mask(96, 0, arg1)
            sub_e886e1ad[arg3 << 248][sub_e886e1ad[arg3 << 248].field_0].field_256 = arg2
            require msg.value + balanceOf[msg.sender] >= balanceOf[msg.sender]
            balanceOf[msg.sender] += msg.value
            require sub_faf3a8bf[arg3 << 248] + 1 >= sub_faf3a8bf[arg3 << 248]
            sub_faf3a8bf[arg3 << 248]++
            require sub_0eb49d9c[msg.sender] + 1 >= sub_0eb49d9c[msg.sender]
            sub_0eb49d9c[msg.sender]++
            emit 0xbc097b51: msg.sender, arg1, msg.value, arg2, 1
        else:
            mem[128 len 640] = code.data[7984 len 640]
            idx = 0
            while idx < 20:
                require 2^(8 * -idx + 19)
                require idx < 20
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('div', 'msg.sender', ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('div', 'msg.sender', ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), 0) - 256
                idx = idx + 1
                continue 
            if not bool(sha3(mem[128 len 20], block.timestamp, block.difficulty)):
                sub_e886e1ad[arg3 << 248].field_0++
                sub_e886e1ad[arg3 << 248][sub_e886e1ad[arg3 << 248].field_0].field_0 = msg.sender
                sub_e886e1ad[arg3 << 248][sub_e886e1ad[arg3 << 248].field_0].field_160 = Mask(96, 0, arg1)
                sub_e886e1ad[arg3 << 248][sub_e886e1ad[arg3 << 248].field_0].field_256 = arg2
                require msg.value + balanceOf[msg.sender] >= balanceOf[msg.sender]
                balanceOf[msg.sender] += msg.value
                require sub_faf3a8bf[arg3 << 248] + 1 >= sub_faf3a8bf[arg3 << 248]
                sub_faf3a8bf[arg3 << 248]++
                require sub_0eb49d9c[msg.sender] + 1 >= sub_0eb49d9c[msg.sender]
                sub_0eb49d9c[msg.sender]++
                emit 0xbc097b51: msg.sender, arg1, msg.value, arg2, 1
            else:
                mem[308 len 640] = code.data[7984 len 640]
                idx = 0
                while idx < 20:
                    require 2^(8 * -idx + 19)
                    require idx < 20
                    mem[idx + 308 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('div', 'msg.sender', ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('div', 'msg.sender', ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), 0) - 256
                    idx = idx + 1
                    continue 
                require sub_e886e1ad[arg3 << 248].field_0
                require sha3(mem[308 len 20], block.timestamp, block.difficulty) % sub_e886e1ad[arg3 << 248].field_0 < sub_e886e1ad[arg3 << 248].field_0
                sub_b354f5f3[address(msg.sender)][arg2].field_0 = uint8(bool(sub_e886e1ad[arg3 << 248][sha3(mem[308 len 20], block.timestamp, block.difficulty) % sub_e886e1ad[arg3 << 248].field_0].field_160))
                sub_b354f5f3[address(msg.sender)][arg2].field_0 = sub_e886e1ad[arg3 << 248][sha3(mem[308 len 20], block.timestamp, block.difficulty) % sub_e886e1ad[arg3 << 248].field_0].field_0
                sub_b354f5f3[address(msg.sender)][arg2].field_8 = 0
                sub_b354f5f3[stor5[arg3 << 248][sha3(mem[308 len 20], block.timestamp, block.difficulty) % stor5[arg3 << 248].field_0].field_0][stor5[arg3 << 248][sha3(mem[308 len 20], block.timestamp, block.difficulty) % stor5[arg3 << 248].field_0].field_256].field_0 = uint8(arg1)
                sub_b354f5f3[stor5[arg3 << 248][sha3(mem[308 len 20], block.timestamp, block.difficulty) % stor5[arg3 << 248].field_0].field_0][stor5[arg3 << 248][sha3(mem[308 len 20], block.timestamp, block.difficulty) % stor5[arg3 << 248].field_0].field_256].field_8 = msg.sender
                require 1 <= sub_faf3a8bf[arg3 << 248]
                sub_faf3a8bf[arg3 << 248]--
                require 1 <= sub_0eb49d9c[stor5[arg3 << 248][sha3(mem[308 len 20], block.timestamp, block.difficulty) % stor5[arg3 << 248].field_0].field_0]
                sub_0eb49d9c[stor5[arg3 << 248][sha3(mem[308 len 20], block.timestamp, block.difficulty) % stor5[arg3 << 248].field_0].field_0]--
                if not arg1:
                    if sub_e886e1ad[arg3 << 248][sha3(mem[308 len 20], block.timestamp, block.difficulty) % sub_e886e1ad[arg3 << 248].field_0].field_160:
                        require msg.value + balanceOf[stor5[arg3 << 248][sha3(mem[308 len 20], block.timestamp, block.difficulty) % stor5[arg3 << 248].field_0].field_0] >= balanceOf[stor5[arg3 << 248][sha3(mem[308 len 20], block.timestamp, block.difficulty) % stor5[arg3 << 248].field_0].field_0]
                        balanceOf[stor5[arg3 << 248][sha3(mem[308 len 20], block.timestamp, block.difficulty) % stor5[arg3 << 248].field_0].field_0] += msg.value
                        stor10 = 33
                    else:
                        stor9 = msg.value / 20
                        require (msg.value / 20) + balanceOf[address(stor2.field_0)] >= balanceOf[address(stor2.field_0)]
                        balanceOf[address(stor2.field_0)] += msg.value / 20
                        require stor9 + balanceOf[address(stor2.field_8)] >= balanceOf[address(stor2.field_8)]
                        balanceOf[address(stor2.field_0)] = stor9 + balanceOf[address(stor2.field_8)]
                        require msg.value + balanceOf[msg.sender] >= balanceOf[msg.sender]
                        balanceOf[msg.sender] += msg.value
                        require stor9 <= msg.value + balanceOf[msg.sender]
                        balanceOf[msg.sender] = msg.value + balanceOf[msg.sender] - stor9
                        require stor9 <= balanceOf[stor5[arg3 << 248][sha3(mem[308 len 20], block.timestamp, block.difficulty) % stor5[arg3 << 248].field_0].field_0]
                        balanceOf[stor5[arg3 << 248][sha3(mem[308 len 20], block.timestamp, block.difficulty) % stor5[arg3 << 248].field_0].field_0] -= stor9
                        stor10 = 34
                else:
                    if sub_e886e1ad[arg3 << 248][sha3(mem[308 len 20], block.timestamp, block.difficulty) % sub_e886e1ad[arg3 << 248].field_0].field_160:
                        stor9 = msg.value / 10
                        require (msg.value / 10) + balanceOf[address(stor2.field_0)] >= balanceOf[address(stor2.field_0)]
                        balanceOf[address(stor2.field_0)] += msg.value / 10
                        require stor9 + balanceOf[address(stor2.field_8)] >= balanceOf[address(stor2.field_8)]
                        balanceOf[address(stor2.field_0)] = stor9 + balanceOf[address(stor2.field_8)]
                        require msg.value + balanceOf[msg.sender] >= balanceOf[msg.sender]
                        balanceOf[msg.sender] += msg.value
                        require stor9 <= msg.value + balanceOf[msg.sender]
                        balanceOf[msg.sender] = msg.value + balanceOf[msg.sender] - stor9
                        require stor9 <= balanceOf[stor5[arg3 << 248][sha3(mem[308 len 20], block.timestamp, block.difficulty) % stor5[arg3 << 248].field_0].field_0]
                        balanceOf[stor5[arg3 << 248][sha3(mem[308 len 20], block.timestamp, block.difficulty) % stor5[arg3 << 248].field_0].field_0] -= stor9
                        stor10 = 31
                    else:
                        if not arg1:
                            if sub_e886e1ad[arg3 << 248][sha3(mem[308 len 20], block.timestamp, block.difficulty) % sub_e886e1ad[arg3 << 248].field_0].field_160:
                                require msg.value + balanceOf[stor5[arg3 << 248][sha3(mem[308 len 20], block.timestamp, block.difficulty) % stor5[arg3 << 248].field_0].field_0] >= balanceOf[stor5[arg3 << 248][sha3(mem[308 len 20], block.timestamp, block.difficulty) % stor5[arg3 << 248].field_0].field_0]
                                balanceOf[stor5[arg3 << 248][sha3(mem[308 len 20], block.timestamp, block.difficulty) % stor5[arg3 << 248].field_0].field_0] += msg.value
                                stor10 = 33
                            else:
                                stor9 = msg.value / 20
                                require (msg.value / 20) + balanceOf[address(stor2.field_0)] >= balanceOf[address(stor2.field_0)]
                                balanceOf[address(stor2.field_0)] += msg.value / 20
                                require stor9 + balanceOf[address(stor2.field_8)] >= balanceOf[address(stor2.field_8)]
                                balanceOf[address(stor2.field_0)] = stor9 + balanceOf[address(stor2.field_8)]
                                require msg.value + balanceOf[msg.sender] >= balanceOf[msg.sender]
                                balanceOf[msg.sender] += msg.value
                                require stor9 <= msg.value + balanceOf[msg.sender]
                                balanceOf[msg.sender] = msg.value + balanceOf[msg.sender] - stor9
                                require stor9 <= balanceOf[stor5[arg3 << 248][sha3(mem[308 len 20], block.timestamp, block.difficulty) % stor5[arg3 << 248].field_0].field_0]
                                balanceOf[stor5[arg3 << 248][sha3(mem[308 len 20], block.timestamp, block.difficulty) % stor5[arg3 << 248].field_0].field_0] -= stor9
                                stor10 = 34
                        else:
                            if not sub_e886e1ad[arg3 << 248][sha3(mem[308 len 20], block.timestamp, block.difficulty) % sub_e886e1ad[arg3 << 248].field_0].field_160:
                                require msg.value <= balanceOf[stor5[arg3 << 248][sha3(mem[308 len 20], block.timestamp, block.difficulty) % stor5[arg3 << 248].field_0].field_0]
                                balanceOf[stor5[arg3 << 248][sha3(mem[308 len 20], block.timestamp, block.difficulty) % stor5[arg3 << 248].field_0].field_0] -= msg.value
                                require msg.value + balanceOf[msg.sender] >= balanceOf[msg.sender]
                                balanceOf[msg.sender] += msg.value
                                require 2 * msg.value >= msg.value
                                balanceOf[msg.sender] += 2 * msg.value
                                stor10 = 32
                            else:
                                if arg1:
                                    stor9 = msg.value / 20
                                    require (msg.value / 20) + balanceOf[address(stor2.field_0)] >= balanceOf[address(stor2.field_0)]
                                    balanceOf[address(stor2.field_0)] += msg.value / 20
                                    require stor9 + balanceOf[address(stor2.field_8)] >= balanceOf[address(stor2.field_8)]
                                    balanceOf[address(stor2.field_0)] = stor9 + balanceOf[address(stor2.field_8)]
                                    require msg.value + balanceOf[msg.sender] >= balanceOf[msg.sender]
                                    balanceOf[msg.sender] += msg.value
                                    require stor9 <= msg.value + balanceOf[msg.sender]
                                    balanceOf[msg.sender] = msg.value + balanceOf[msg.sender] - stor9
                                    require stor9 <= balanceOf[stor5[arg3 << 248][sha3(mem[308 len 20], block.timestamp, block.difficulty) % stor5[arg3 << 248].field_0].field_0]
                                    balanceOf[stor5[arg3 << 248][sha3(mem[308 len 20], block.timestamp, block.difficulty) % stor5[arg3 << 248].field_0].field_0] -= stor9
                                    stor10 = 34
                                else:
                                    if sub_e886e1ad[arg3 << 248][sha3(mem[308 len 20], block.timestamp, block.difficulty) % sub_e886e1ad[arg3 << 248].field_0].field_160:
                                        require msg.value + balanceOf[stor5[arg3 << 248][sha3(mem[308 len 20], block.timestamp, block.difficulty) % stor5[arg3 << 248].field_0].field_0] >= balanceOf[stor5[arg3 << 248][sha3(mem[308 len 20], block.timestamp, block.difficulty) % stor5[arg3 << 248].field_0].field_0]
                                        balanceOf[stor5[arg3 << 248][sha3(mem[308 len 20], block.timestamp, block.difficulty) % stor5[arg3 << 248].field_0].field_0] += msg.value
                                        stor10 = 33
                                    else:
                                        stor9 = msg.value / 20
                                        require (msg.value / 20) + balanceOf[address(stor2.field_0)] >= balanceOf[address(stor2.field_0)]
                                        balanceOf[address(stor2.field_0)] += msg.value / 20
                                        require stor9 + balanceOf[address(stor2.field_8)] >= balanceOf[address(stor2.field_8)]
                                        balanceOf[address(stor2.field_0)] = stor9 + balanceOf[address(stor2.field_8)]
                                        require msg.value + balanceOf[msg.sender] >= balanceOf[msg.sender]
                                        balanceOf[msg.sender] += msg.value
                                        require stor9 <= msg.value + balanceOf[msg.sender]
                                        balanceOf[msg.sender] = msg.value + balanceOf[msg.sender] - stor9
                                        require stor9 <= balanceOf[stor5[arg3 << 248][sha3(mem[308 len 20], block.timestamp, block.difficulty) % stor5[arg3 << 248].field_0].field_0]
                                        balanceOf[stor5[arg3 << 248][sha3(mem[308 len 20], block.timestamp, block.difficulty) % stor5[arg3 << 248].field_0].field_0] -= stor9
                                        stor10 = 34
                emit 0xbc097b51: msg.sender, arg1, msg.value, arg2, stor10
                require 1 <= sub_e886e1ad[arg3 << 248].field_0
                require sub_e886e1ad[arg3 << 248].field_0 - 1 < sub_e886e1ad[arg3 << 248].field_0
                require sha3(mem[308 len 20], block.timestamp, block.difficulty) % sub_e886e1ad[arg3 << 248].field_0 < sub_e886e1ad[arg3 << 248].field_0
                sub_e886e1ad[arg3 << 248][sha3(mem[308 len 20], block.timestamp, block.difficulty) % sub_e886e1ad[arg3 << 248].field_0].field_0 = sub_e886e1ad[arg3 << 248][sub_e886e1ad[arg3 << 248].field_0 - 1].field_0
                sub_e886e1ad[arg3 << 248][sha3(mem[308 len 20], block.timestamp, block.difficulty) % sub_e886e1ad[arg3 << 248].field_0].field_0 = sub_e886e1ad[arg3 << 248][sub_e886e1ad[arg3 << 248].field_0 - 1].field_0
                sub_e886e1ad[arg3 << 248][sha3(mem[308 len 20], block.timestamp, block.difficulty) % sub_e886e1ad[arg3 << 248].field_0].field_160 = Mask(96, 0, bool(sub_e886e1ad[arg3 << 248][sub_e886e1ad[arg3 << 248].field_0 - 1].field_160))
                sub_e886e1ad[arg3 << 248][sha3(mem[308 len 20], block.timestamp, block.difficulty) % sub_e886e1ad[arg3 << 248].field_0].field_168 = 0
                sub_e886e1ad[arg3 << 248][sha3(mem[308 len 20], block.timestamp, block.difficulty) % sub_e886e1ad[arg3 << 248].field_0].field_256 = sub_e886e1ad[arg3 << 248][sub_e886e1ad[arg3 << 248].field_0 - 1].field_256
                require 1 <= sub_e886e1ad[arg3 << 248].field_0
                require sub_e886e1ad[arg3 << 248].field_0 - 1 < sub_e886e1ad[arg3 << 248].field_0
                sub_e886e1ad[arg3 << 248][sub_e886e1ad[arg3 << 248].field_0 - 1].field_0 = 0
                sub_e886e1ad[arg3 << 248][sub_e886e1ad[arg3 << 248].field_0 - 1].field_256 = 0
                require 1 <= sub_e886e1ad[arg3 << 248].field_0
                sub_e886e1ad[arg3 << 248].field_0--
                if sub_e886e1ad[arg3 << 248].field_0 > sub_e886e1ad[arg3 << 248].field_0 - 1:
                    idx = 2 * sub_e886e1ad[arg3 << 248].field_0 - 1
                    while 2 * sub_e886e1ad[arg3 << 248].field_0 > idx:
                        sub_e886e1ad[arg3 << 248][idx].field_0 = 0
                        sub_e886e1ad[arg3 << 248][idx].field_256 = 0
                        idx = idx + 2
                        continue 
}



}
