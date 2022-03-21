contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint128 stor4; offset 160
address stor4;
array of struct stor5;
mapping of uint256 stor259;
uint256 stor266;

function _fallback() payable {
    stor266 = 10
    mem[96 len -6395] = code.data[6683 len -6395]
    mem[64] = -6299
    stor2 = mem[mem[96] + 96] + 1
    address(stor4.field_0) = msg.sender
    Mask(96, 0, stor4.field_160) = 0
    mem[0] = msg.sender
    mem[32] = 259
    stor259[address(msg.sender)] = 1
    idx = 0
    while idx < mem[mem[96] + 96]:
        require idx < mem[mem[96] + 96]
        require idx + 2 < 256
        stor5[idx].field_0 = mem[(32 * idx) + mem[96] + 140 len 20]
        stor5[idx].field_160 = 0
        require idx < mem[mem[96] + 96]
        mem[0] = mem[(32 * idx) + mem[96] + 140 len 20]
        mem[32] = 259
        stor259[mem[(32 * idx) + mem[96] + 140 len 20]] = idx + 2
        idx = idx + 1
        continue 
    stor0 = mem[128]
    stor1 = mem[160]
    return code.data[288 len 6395]
}



// =====================  Runtime code  =====================


const sub_06c3a2fc(?) = 11

const sub_0d4a4723(?) = 9

const sub_6448f6e1(?) = 3

const sub_692a365d(?) = 1

const sub_95a19df5(?) = 14

const sub_97b7b03d(?) = 5

const sub_ac5d4234(?) = 7

const sub_c2b4748c(?) = 8

const sub_c75155fd(?) = 12

const sub_d2d209d9(?) = 2

const sub_e2ee74b9(?) = 10

const sub_e40e6294(?) = 13

const sub_eb5f9bb4(?) = 6

const sub_f5d2ad53(?) = 4


uint256 sub_5e59b39d;
uint256 sub_6c1a5f85;
uint256 m_numOwners;
array of struct stor3;
array of struct stor4;
mapping of uint256 stor259;
mapping of struct stor260;
array of uint256 stor261;
uint8 locked; offset 160
address operatorAddress;
uint256 stor262;
mapping of struct users;
mapping of uint256 sub_6482e03a;
mapping of uint256 sub_064de502;
uint256 sub_bfb2675b;
array of uint256 stor101764004545410537355992076401828343611731608233110052773570809165368196171379;

function sub_064de502(?) payable {
    return sub_064de502[address(arg1)]
}

function users(uint256 arg1) payable {
    return uint8(users[arg1].field_0), address(users[arg1].field_512)
}

function m_numOwners() payable {
    return m_numOwners
}

function operator() payable {
    return operatorAddress
}

function sub_5e59b39d(?) payable {
    return sub_5e59b39d
}

function sub_6482e03a(?) payable {
    return sub_6482e03a[arg1]
}

function sub_6c1a5f85(?) payable {
    return sub_6c1a5f85
}

function depositToUser(address arg1) payable {
    return sub_064de502[arg1]
}

function sub_b613a6ac(?) payable {
    return users[arg1].field_256
}

function sub_bb085deb(?) payable {
    return sub_6482e03a[address(arg1)]
}

function sub_bfb2675b(?) payable {
    return sub_bfb2675b
}

function locked() payable {
    return locked
}

function _fallback() payable {
  stop
}

function isOwner(address arg1) payable {
    return (stor259[address(arg1)] > 0)
}

function lock() payable {
    if stor259[address(msg.sender)] > 0:
        locked = 1
        emit 0x6d8db0d9: 1
}

function sub_06a20e94(?) payable {
    if 0 == address(users[arg1].field_512):
        return 0
    return address(users[arg1].field_512)
}

function sub_4240a6f0(?) payable {
    if 0 == address(users[arg1].field_512):
        return 0
    return address(users[arg1].field_512)
}

function getLocked(uint256 arg1) payable {
    if 0 == address(users[arg1].field_512):
        return 0
    return uint8(users[arg1].field_0)
}

function hasConfirmed(bytes32 arg1, address arg2) payable {
    if stor259[address(arg2)] != 0:
        return 2^stor259[address(arg2)] and stor260[arg1].field_256 != 0
    else:
        return 0
}

function sub_4e4a7fa3(?) payable {
    if 0 == address(users[arg1].field_512):
        return 0
    require arg2 < users[arg1].field_256
    return address(stor[arg2 + ('array', 1, ('map', ('param', 'arg1'), ('name', 'users', 263)))].field_0)
}

function sub_6493a03c(?) payable {
    if 0 == address(users[arg1].field_512):
        return 0
    require arg2 < users[arg1].field_256
    return address(stor[arg2 + ('array', 1, ('map', ('param', 'arg1'), ('name', 'users', 263)))].field_0)
}

function setLocked(uint256 arg1, bool arg2) payable {
    if locked:
        emit 0x56c12d7b: 9
        return 0
    require msg.sender == operatorAddress
    if not address(users[arg1].field_512):
        return 0
    users[arg1].field_0 = arg2 or Mask(248, 8, users[arg1].field_0)
    return 1
}

function revoke(bytes32 arg1) payable {
    if stor259[address(msg.sender)] != 0:
        if 2^stor259[address(msg.sender)] and stor260[arg1].field_256 > 0:
            stor260[arg1].field_0++
            stor260[arg1].field_256 -= 2^stor259[address(msg.sender)]
            emit Revoke(msg.sender, arg1);
}

function sub_553dec93(?) payable {
    if locked:
        emit 0x56c12d7b: 9
    else:
        require msg.sender == operatorAddress
        if address(users[arg1].field_512):
            if not sub_6482e03a[address(arg2)]:
                users[arg1].field_512 = arg2 or Mask(96, 160, users[arg1].field_512)
                sub_6482e03a[address(arg2)] = arg1
            else:
                if arg1 == sub_6482e03a[address(arg2)]:
                    users[arg1].field_512 = arg2 or Mask(96, 160, users[arg1].field_512)
                    sub_6482e03a[address(arg2)] = arg1
    return 0
}

function sub_81de08d6(?) payable {
    if locked:
        emit 0x56c12d7b: 9
        return 0
    require msg.sender == operatorAddress
    if not address(users[arg1].field_512):
        return 0
    if users[arg1].field_256 >= sub_bfb2675b:
        return 0
    if sub_064de502[address(arg2)] != 0:
        if sub_064de502[address(arg2)] != arg1:
            return 0
    users[arg1].field_256++
    if not users[arg1].field_256 <= users[arg1].field_256 + 1:
        idx = users[arg1].field_256 + 1
        while users[arg1].field_256 > idx:
            users[arg1][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    stor[users[arg1].field_256 + ('array', 1, ('map', ('param', 'arg1'), ('name', 'users', 263)))].field_0 = arg2 or Mask(96, 160, stor[users[arg1].field_256 + ('array', 1, ('map', ('param', 'arg1'), ('name', 'users', 263)))].field_0)
    sub_064de502[address(arg2)] = arg1
    return 1
}

function sub_ad9495ac(?) payable {
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    if locked:
        emit 0x56c12d7b: 9
        return 0
    require msg.sender == operatorAddress
    if 0 == arg1:
        return 0
    if 0 == arg2:
        return 0
    if 0 == arg3.length:
        return 0
    mem[0] = arg2
    mem[32] = 264
    if sub_6482e03a[address(arg2)]:
        if arg1 != sub_6482e03a[address(arg2)]:
            return 0
    idx = 0
    s = stor[sha3(mem[0 len 64])]
    while idx < arg3.length:
        require idx < arg3.length
        if mem[(32 * idx) + 140 len 20] != 0:
            require idx < arg3.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 265
            if not sub_064de502[mem[(32 * idx) + 140 len 20]]:
                idx = idx + 1
                s = sub_064de502[mem[(32 * idx) + 140 len 20]]
                continue 
            if arg1 == sub_064de502[mem[(32 * idx) + 140 len 20]]:
                idx = idx + 1
                s = sub_064de502[mem[(32 * idx) + 140 len 20]]
                continue 
            else:
                return 0
        else:
            return 0
    mem[(32 * arg3.length) + 128] = 0
    uint8(users[arg1].field_0) = 0
    users[arg1].field_256 = arg3.length
    if not arg3.length:
        idx = 0
        while users[arg1].field_256 > idx:
            address(users[arg1][idx + 1].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg3.length) + 128 > idx:
            users[arg1][s + 1].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
        while users[arg1].field_256 > idx:
            address(users[arg1][idx + 1].field_0) = 0
            idx = idx + 1
            continue 
    users[arg1].field_512 = arg2 or Mask(96, 160, users[arg1].field_512)
    sub_6482e03a[address(arg2)] = arg1
    idx = 0
    while idx < arg3.length:
        require idx < arg3.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 265
        sub_064de502[mem[(32 * idx) + 140 len 20]] = arg1
        idx = idx + 1
        continue 
    return 1
}

function unlock() payable {
    if stor259[address(msg.sender)] != 0:
        if not stor260[call.data[0 len calldata.size]].field_0:
            stor260[call.data[0 len calldata.size]].field_0 = sub_6c1a5f85
            stor260[call.data[0 len calldata.size]].field_256 = 0
            stor261.length++
            if not stor261.length <= stor261.length + 1:
                idx = stor261.length + 1
                while stor261.length > idx:
                    stor261[idx] = 0
                    idx = idx + 1
                    continue 
            stor260[call.data[0 len calldata.size]].field_512 = stor261.length
            require stor261.length < stor261.length
            storE0FC[stor261.length] = sha3(call.data[0 len calldata.size])
        if 0 == 2^stor259[address(msg.sender)] and stor260[call.data[0 len calldata.size]].field_256:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor260[call.data[0 len calldata.size]].field_0 > 1:
                stor260[call.data[0 len calldata.size]].field_0--
                stor260[call.data[0 len calldata.size]].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]].field_256
            else:
                require stor260[call.data[0 len calldata.size]].field_512 < stor261.length
                storE0FC[stor260[call.data[0 len calldata.size]].field_512] = 0
                stor260[call.data[0 len calldata.size]].field_0 = 0
                stor260[call.data[0 len calldata.size]].field_256 = 0
                stor260[call.data[0 len calldata.size]].field_512 = 0
                idx = 0
                while idx < stor261.length:
                    mem[0] = 261
                    if storE0FC[idx]:
                        require idx < stor261.length
                        mem[0] = storE0FC[idx]
                        mem[32] = 260
                        stor260[storE0FC[idx]].field_0 = 0
                        stor260[storE0FC[idx]].field_256 = 0
                        stor260[storE0FC[idx]].field_512 = 0
                    idx = idx + 1
                    continue 
                stor261.length = 0
                idx = 0xe0fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673
                while stor261.length - 0x1f039d54373f03b83d26d0a5136640749f0c8a7d71ebc6b276cba351ee56798d > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
                locked = 0
                emit 0x6d8db0d9: 0
}

function sub_8cd89371(?) payable {
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    if locked:
        emit 0x56c12d7b: 9
        return 0
    require msg.sender == operatorAddress
    if not address(users[arg1].field_512):
        return 0
    if 0 == arg1:
        return 0
    if 0 == arg2:
        return 0
    if 0 == arg3.length:
        return 0
    mem[0] = arg2
    mem[32] = 264
    if sub_6482e03a[address(arg2)]:
        if arg1 != sub_6482e03a[address(arg2)]:
            return 0
    idx = 0
    s = stor[sha3(mem[0 len 64])]
    while idx < arg3.length:
        require idx < arg3.length
        if mem[(32 * idx) + 140 len 20] != 0:
            require idx < arg3.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 265
            if not sub_064de502[mem[(32 * idx) + 140 len 20]]:
                idx = idx + 1
                s = sub_064de502[mem[(32 * idx) + 140 len 20]]
                continue 
            if arg1 == sub_064de502[mem[(32 * idx) + 140 len 20]]:
                idx = idx + 1
                s = sub_064de502[mem[(32 * idx) + 140 len 20]]
                continue 
            else:
                return 0
        else:
            return 0
    idx = 0
    while idx < users[arg1].field_256:
        require idx < users[arg1].field_256
        sub_064de502[address(stor263[arg1][idx + 1].field_0)] = 0
        mem[0] = arg1
        mem[32] = 263
        idx = idx + 1
        continue 
    sub_6482e03a[address(stor263[arg1].field_512)] = 0
    users[arg1].field_512 = arg2 or Mask(96, 160, users[arg1].field_512)
    users[arg1].field_256 = arg3.length
    if not arg3.length:
        idx = 0
        while users[arg1].field_256 > idx:
            address(users[arg1][idx + 1].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg3.length) + 128 > idx:
            users[arg1][s + 1].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
        while users[arg1].field_256 > idx:
            address(users[arg1][idx + 1].field_0) = 0
            idx = idx + 1
            continue 
    sub_6482e03a[address(arg2)] = arg1
    idx = 0
    while idx < arg3.length:
        require idx < arg3.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 265
        sub_064de502[mem[(32 * idx) + 140 len 20]] = arg1
        idx = idx + 1
        continue 
    return 1
}

function setOperator(address arg1) payable {
    if stor259[address(msg.sender)] != 0:
        if not stor260[call.data[0 len calldata.size]].field_0:
            stor260[call.data[0 len calldata.size]].field_0 = sub_6c1a5f85
            stor260[call.data[0 len calldata.size]].field_256 = 0
            stor261.length++
            if not stor261.length <= stor261.length + 1:
                idx = stor261.length + 1
                while stor261.length > idx:
                    stor261[idx] = 0
                    idx = idx + 1
                    continue 
            stor260[call.data[0 len calldata.size]].field_512 = stor261.length
            require stor261.length < stor261.length
            storE0FC[stor261.length] = sha3(call.data[0 len calldata.size])
        if 0 == 2^stor259[address(msg.sender)] and stor260[call.data[0 len calldata.size]].field_256:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor260[call.data[0 len calldata.size]].field_0 > 1:
                stor260[call.data[0 len calldata.size]].field_0--
                stor260[call.data[0 len calldata.size]].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]].field_256
            else:
                require stor260[call.data[0 len calldata.size]].field_512 < stor261.length
                storE0FC[stor260[call.data[0 len calldata.size]].field_512] = 0
                stor260[call.data[0 len calldata.size]].field_0 = 0
                stor260[call.data[0 len calldata.size]].field_256 = 0
                stor260[call.data[0 len calldata.size]].field_512 = 0
                idx = 0
                while idx < stor261.length:
                    mem[0] = 261
                    if storE0FC[idx]:
                        require idx < stor261.length
                        mem[0] = storE0FC[idx]
                        mem[32] = 260
                        stor260[storE0FC[idx]].field_0 = 0
                        stor260[storE0FC[idx]].field_256 = 0
                        stor260[storE0FC[idx]].field_512 = 0
                    idx = idx + 1
                    continue 
                stor261.length = 0
                idx = 0xe0fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673
                while stor261.length - 0x1f039d54373f03b83d26d0a5136640749f0c8a7d71ebc6b276cba351ee56798d > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
                stor262 = arg1 or Mask(96, 160, stor262)
                emit OperatorChanged(operatorAddress, arg1);
}

function sub_5e7e26e8(?) payable {
    if locked:
        emit 0x56c12d7b: 9
    else:
        if stor259[address(msg.sender)] != 0:
            if not stor260[call.data[0 len calldata.size]].field_0:
                stor260[call.data[0 len calldata.size]].field_0 = sub_6c1a5f85
                stor260[call.data[0 len calldata.size]].field_256 = 0
                stor261.length++
                if not stor261.length <= stor261.length + 1:
                    idx = stor261.length + 1
                    while stor261.length > idx:
                        stor261[idx] = 0
                        idx = idx + 1
                        continue 
                stor260[call.data[0 len calldata.size]].field_512 = stor261.length
                require stor261.length < stor261.length
                storE0FC[stor261.length] = sha3(call.data[0 len calldata.size])
            if 0 == 2^stor259[address(msg.sender)] and stor260[call.data[0 len calldata.size]].field_256:
                emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
                if stor260[call.data[0 len calldata.size]].field_0 > 1:
                    stor260[call.data[0 len calldata.size]].field_0--
                    stor260[call.data[0 len calldata.size]].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]].field_256
                else:
                    require stor260[call.data[0 len calldata.size]].field_512 < stor261.length
                    storE0FC[stor260[call.data[0 len calldata.size]].field_512] = 0
                    stor260[call.data[0 len calldata.size]].field_0 = 0
                    stor260[call.data[0 len calldata.size]].field_256 = 0
                    stor260[call.data[0 len calldata.size]].field_512 = 0
                    idx = 0
                    while idx < stor261.length:
                        mem[0] = 261
                        if storE0FC[idx]:
                            require idx < stor261.length
                            mem[0] = storE0FC[idx]
                            mem[32] = 260
                            stor260[storE0FC[idx]].field_0 = 0
                            stor260[storE0FC[idx]].field_256 = 0
                            stor260[storE0FC[idx]].field_512 = 0
                        idx = idx + 1
                        continue 
                    stor261.length = 0
                    idx = 0xe0fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673
                    while stor261.length - 0x1f039d54373f03b83d26d0a5136640749f0c8a7d71ebc6b276cba351ee56798d > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                    sub_bfb2675b = arg1
}

function sub_16ce5d54(?) payable {
    if stor259[address(msg.sender)] != 0:
        if not stor260[call.data[0 len calldata.size]].field_0:
            stor260[call.data[0 len calldata.size]].field_0 = sub_6c1a5f85
            stor260[call.data[0 len calldata.size]].field_256 = 0
            stor261.length++
            if not stor261.length <= stor261.length + 1:
                idx = stor261.length + 1
                while stor261.length > idx:
                    stor261[idx] = 0
                    idx = idx + 1
                    continue 
            stor260[call.data[0 len calldata.size]].field_512 = stor261.length
            require stor261.length < stor261.length
            storE0FC[stor261.length] = sha3(call.data[0 len calldata.size])
        if 0 == 2^stor259[address(msg.sender)] and stor260[call.data[0 len calldata.size]].field_256:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor260[call.data[0 len calldata.size]].field_0 > 1:
                stor260[call.data[0 len calldata.size]].field_0--
                stor260[call.data[0 len calldata.size]].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]].field_256
            else:
                require stor260[call.data[0 len calldata.size]].field_512 < stor261.length
                storE0FC[stor260[call.data[0 len calldata.size]].field_512] = 0
                stor260[call.data[0 len calldata.size]].field_0 = 0
                stor260[call.data[0 len calldata.size]].field_256 = 0
                stor260[call.data[0 len calldata.size]].field_512 = 0
                if arg1 <= m_numOwners:
                    if arg2 <= arg1:
                        sub_5e59b39d = arg1
                        sub_6c1a5f85 = arg2
                        idx = 0
                        while idx < stor261.length:
                            mem[0] = 261
                            if storE0FC[idx]:
                                require idx < stor261.length
                                mem[0] = storE0FC[idx]
                                mem[32] = 260
                                stor260[storE0FC[idx]].field_0 = 0
                                stor260[storE0FC[idx]].field_256 = 0
                                stor260[storE0FC[idx]].field_512 = 0
                            idx = idx + 1
                            continue 
                        stor261.length = 0
                        idx = 0xe0fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673
                        while stor261.length - 0x1f039d54373f03b83d26d0a5136640749f0c8a7d71ebc6b276cba351ee56798d > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                        emit RequirementChanged(arg1, arg2);
}

function changeOwner(address arg1, address arg2) payable {
    if stor259[address(msg.sender)] != 0:
        if not stor260[call.data[0 len calldata.size]].field_0:
            stor260[call.data[0 len calldata.size]].field_0 = sub_6c1a5f85
            stor260[call.data[0 len calldata.size]].field_256 = 0
            stor261.length++
            if not stor261.length <= stor261.length + 1:
                idx = stor261.length + 1
                while stor261.length > idx:
                    stor261[idx] = 0
                    idx = idx + 1
                    continue 
            stor260[call.data[0 len calldata.size]].field_512 = stor261.length
            require stor261.length < stor261.length
            storE0FC[stor261.length] = sha3(call.data[0 len calldata.size])
        if 0 == 2^stor259[address(msg.sender)] and stor260[call.data[0 len calldata.size]].field_256:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor260[call.data[0 len calldata.size]].field_0 > 1:
                stor260[call.data[0 len calldata.size]].field_0--
                stor260[call.data[0 len calldata.size]].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]].field_256
            else:
                require stor260[call.data[0 len calldata.size]].field_512 < stor261.length
                storE0FC[stor260[call.data[0 len calldata.size]].field_512] = 0
                stor260[call.data[0 len calldata.size]].field_0 = 0
                stor260[call.data[0 len calldata.size]].field_256 = 0
                stor260[call.data[0 len calldata.size]].field_512 = 0
                if stor259[address(arg2)] <= 0:
                    if stor259[address(arg1)]:
                        idx = 0
                        while idx < stor261.length:
                            mem[0] = 261
                            if storE0FC[idx]:
                                require idx < stor261.length
                                mem[0] = storE0FC[idx]
                                mem[32] = 260
                                stor260[storE0FC[idx]].field_0 = 0
                                stor260[storE0FC[idx]].field_256 = 0
                                stor260[storE0FC[idx]].field_512 = 0
                            idx = idx + 1
                            continue 
                        stor261.length = 0
                        idx = 0xe0fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673
                        while stor261.length - 0x1f039d54373f03b83d26d0a5136640749f0c8a7d71ebc6b276cba351ee56798d > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                        require stor259[address(arg1)] < 256
                        address(stor3[stor259[address(arg1)]].field_0) = arg2
                        Mask(96, 0, stor3[stor259[address(arg1)]].field_160) = 0
                        stor259[address(arg1)] = 0
                        stor259[arg2] = stor259[address(arg1)]
                        emit OwnerChanged(address(arg1), arg2);
}

function removeOwner(address arg1) payable {
    if 0 == stor259[address(msg.sender)]:
    if stor260[call.data[0 len calldata.size]].field_0:
        if 2^stor259[address(msg.sender)] and stor260[call.data[0 len calldata.size]].field_256 != 0:
        emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
        if stor260[call.data[0 len calldata.size]].field_0 > 1:
            stor260[call.data[0 len calldata.size]].field_0--
            stor260[call.data[0 len calldata.size]].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]].field_256
        require stor260[call.data[0 len calldata.size]].field_512 < stor261.length
        storE0FC[stor260[call.data[0 len calldata.size]].field_512] = 0
        stor260[call.data[0 len calldata.size]].field_0 = 0
        stor260[call.data[0 len calldata.size]].field_256 = 0
        stor260[call.data[0 len calldata.size]].field_512 = 0
        if not stor259[address(arg1)]:
        if sub_5e59b39d > m_numOwners - 1:
        require stor259[address(arg1)] < 256
        stor3[stor259[address(arg1)]].field_0 = 0
        stor259[address(arg1)] = 0
        idx = 0
        while idx < stor261.length:
            mem[0] = 261
            if storE0FC[idx]:
                require idx < stor261.length
                mem[0] = storE0FC[idx]
                mem[32] = 260
                stor260[storE0FC[idx]].field_0 = 0
                stor260[storE0FC[idx]].field_256 = 0
                stor260[storE0FC[idx]].field_512 = 0
            idx = idx + 1
            continue 
        stor261.length = 0
        idx = 0xe0fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673
        while stor261.length - 0x1f039d54373f03b83d26d0a5136640749f0c8a7d71ebc6b276cba351ee56798d > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
        # nil
    else:
        stor260[call.data[0 len calldata.size]].field_0 = sub_6c1a5f85
        stor260[call.data[0 len calldata.size]].field_256 = 0
        stor261.length++
        if not stor261.length > stor261.length + 1:
            stor260[call.data[0 len calldata.size]].field_512 = stor261.length
            require stor261.length < stor261.length
            storE0FC[stor261.length] = sha3(call.data[0 len calldata.size])
            if 2^stor259[address(msg.sender)] and stor260[call.data[0 len calldata.size]].field_256 != 0:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor260[call.data[0 len calldata.size]].field_0 > 1:
                stor260[call.data[0 len calldata.size]].field_0--
                stor260[call.data[0 len calldata.size]].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]].field_256
            require stor260[call.data[0 len calldata.size]].field_512 < stor261.length
            storE0FC[stor260[call.data[0 len calldata.size]].field_512] = 0
            stor260[call.data[0 len calldata.size]].field_0 = 0
            stor260[call.data[0 len calldata.size]].field_256 = 0
            stor260[call.data[0 len calldata.size]].field_512 = 0
            if not stor259[address(arg1)]:
            if sub_5e59b39d > m_numOwners - 1:
            require stor259[address(arg1)] < 256
            stor3[stor259[address(arg1)]].field_0 = 0
            stor259[address(arg1)] = 0
            idx = 0
            while idx < stor261.length:
                mem[0] = 261
                if storE0FC[idx]:
                    require idx < stor261.length
                    mem[0] = storE0FC[idx]
                    mem[32] = 260
                    stor260[storE0FC[idx]].field_0 = 0
                    stor260[storE0FC[idx]].field_256 = 0
                    stor260[storE0FC[idx]].field_512 = 0
                idx = idx + 1
                continue 
            stor261.length = 0
            idx = 0xe0fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673
            while stor261.length - 0x1f039d54373f03b83d26d0a5136640749f0c8a7d71ebc6b276cba351ee56798d > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
            # nil
        else:
            idx = stor261.length + 1
            while stor261.length > idx:
                stor261[idx] = 0
                idx = idx + 1
                continue 
            stor260[call.data[0 len calldata.size]].field_512 = stor261.length
            require stor261.length < stor261.length
            storE0FC[stor261.length] = sha3(call.data[0 len calldata.size])
            if 2^stor259[address(msg.sender)] and stor260[call.data[0 len calldata.size]].field_256 != 0:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor260[call.data[0 len calldata.size]].field_0 > 1:
                stor260[call.data[0 len calldata.size]].field_0--
                stor260[call.data[0 len calldata.size]].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]].field_256
            require stor260[call.data[0 len calldata.size]].field_512 < stor261.length
            storE0FC[stor260[call.data[0 len calldata.size]].field_512] = 0
            stor260[call.data[0 len calldata.size]].field_0 = 0
            stor260[call.data[0 len calldata.size]].field_256 = 0
            stor260[call.data[0 len calldata.size]].field_512 = 0
            if not stor259[address(arg1)]:
            if sub_5e59b39d > m_numOwners - 1:
            require stor259[address(arg1)] < 256
            stor3[stor259[address(arg1)]].field_0 = 0
            stor259[address(arg1)] = 0
            idx = 0
            while idx < stor261.length:
                mem[0] = 261
                if storE0FC[idx]:
                    require idx < stor261.length
                    mem[0] = storE0FC[idx]
                    mem[32] = 260
                    stor260[storE0FC[idx]].field_0 = 0
                    stor260[storE0FC[idx]].field_256 = 0
                    stor260[storE0FC[idx]].field_512 = 0
                idx = idx + 1
                continue 
            stor261.length = 0
            idx = 0xe0fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673
            while stor261.length - 0x1f039d54373f03b83d26d0a5136640749f0c8a7d71ebc6b276cba351ee56798d > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
            if 1 < m_numOwners:
                # nil
            else:
                emit OwnerRemoved(arg1);
}

function addOwner(address arg1) payable {
    if 0 == stor259[address(msg.sender)]:
    if stor260[call.data[0 len calldata.size]].field_0:
        if 2^stor259[address(msg.sender)] and stor260[call.data[0 len calldata.size]].field_256 != 0:
        emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
        if stor260[call.data[0 len calldata.size]].field_0 > 1:
            stor260[call.data[0 len calldata.size]].field_0--
            stor260[call.data[0 len calldata.size]].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]].field_256
        require stor260[call.data[0 len calldata.size]].field_512 < stor261.length
        storE0FC[stor260[call.data[0 len calldata.size]].field_512] = 0
        stor260[call.data[0 len calldata.size]].field_0 = 0
        stor260[call.data[0 len calldata.size]].field_256 = 0
        stor260[call.data[0 len calldata.size]].field_512 = 0
        if stor259[address(arg1)] > 0:
        idx = 0
        while idx < stor261.length:
            mem[0] = 261
            if storE0FC[idx]:
                require idx < stor261.length
                mem[0] = storE0FC[idx]
                mem[32] = 260
                stor260[storE0FC[idx]].field_0 = 0
                stor260[storE0FC[idx]].field_256 = 0
                stor260[storE0FC[idx]].field_512 = 0
            idx = idx + 1
            continue 
        stor261.length = 0
        idx = 0xe0fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673
        while stor261.length - 0x1f039d54373f03b83d26d0a5136640749f0c8a7d71ebc6b276cba351ee56798d > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
        if m_numOwners >= 250:
            # nil
        else:
            m_numOwners++
            require m_numOwners + 1 < 256
            address(stor4[stor2].field_0) = arg1
            Mask(96, 0, stor4[stor2].field_160) = 0
            stor259[address(arg1)] = m_numOwners
            emit OwnerAdded(arg1);
    else:
        stor260[call.data[0 len calldata.size]].field_0 = sub_6c1a5f85
        stor260[call.data[0 len calldata.size]].field_256 = 0
        stor261.length++
        if not stor261.length > stor261.length + 1:
            stor260[call.data[0 len calldata.size]].field_512 = stor261.length
            require stor261.length < stor261.length
            storE0FC[stor261.length] = sha3(call.data[0 len calldata.size])
            if 2^stor259[address(msg.sender)] and stor260[call.data[0 len calldata.size]].field_256 != 0:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor260[call.data[0 len calldata.size]].field_0 > 1:
                stor260[call.data[0 len calldata.size]].field_0--
                stor260[call.data[0 len calldata.size]].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]].field_256
            require stor260[call.data[0 len calldata.size]].field_512 < stor261.length
            storE0FC[stor260[call.data[0 len calldata.size]].field_512] = 0
            stor260[call.data[0 len calldata.size]].field_0 = 0
            stor260[call.data[0 len calldata.size]].field_256 = 0
            stor260[call.data[0 len calldata.size]].field_512 = 0
            if stor259[address(arg1)] > 0:
            idx = 0
            while idx < stor261.length:
                mem[0] = 261
                if storE0FC[idx]:
                    require idx < stor261.length
                    mem[0] = storE0FC[idx]
                    mem[32] = 260
                    stor260[storE0FC[idx]].field_0 = 0
                    stor260[storE0FC[idx]].field_256 = 0
                    stor260[storE0FC[idx]].field_512 = 0
                idx = idx + 1
                continue 
            stor261.length = 0
            idx = 0xe0fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673
            while stor261.length - 0x1f039d54373f03b83d26d0a5136640749f0c8a7d71ebc6b276cba351ee56798d > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
            if m_numOwners >= 250:
                # nil
            else:
                m_numOwners++
                require m_numOwners + 1 < 256
                address(stor4[stor2].field_0) = arg1
                Mask(96, 0, stor4[stor2].field_160) = 0
                stor259[address(arg1)] = m_numOwners
                emit OwnerAdded(arg1);
        else:
            idx = stor261.length + 1
            while stor261.length > idx:
                stor261[idx] = 0
                idx = idx + 1
                continue 
            stor260[call.data[0 len calldata.size]].field_512 = stor261.length
            require stor261.length < stor261.length
            storE0FC[stor261.length] = sha3(call.data[0 len calldata.size])
            if 2^stor259[address(msg.sender)] and stor260[call.data[0 len calldata.size]].field_256 != 0:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor260[call.data[0 len calldata.size]].field_0 > 1:
                stor260[call.data[0 len calldata.size]].field_0--
                stor260[call.data[0 len calldata.size]].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]].field_256
            require stor260[call.data[0 len calldata.size]].field_512 < stor261.length
            storE0FC[stor260[call.data[0 len calldata.size]].field_512] = 0
            stor260[call.data[0 len calldata.size]].field_0 = 0
            stor260[call.data[0 len calldata.size]].field_256 = 0
            stor260[call.data[0 len calldata.size]].field_512 = 0
            if stor259[address(arg1)] > 0:
            idx = 0
            while idx < stor261.length:
                mem[0] = 261
                if storE0FC[idx]:
                    require idx < stor261.length
                    mem[0] = storE0FC[idx]
                    mem[32] = 260
                    stor260[storE0FC[idx]].field_0 = 0
                    stor260[storE0FC[idx]].field_256 = 0
                    stor260[storE0FC[idx]].field_512 = 0
                idx = idx + 1
                continue 
            stor261.length = 0
            idx = 0xe0fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673
            while stor261.length - 0x1f039d54373f03b83d26d0a5136640749f0c8a7d71ebc6b276cba351ee56798d > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
            if m_numOwners < 250:
                m_numOwners++
                require m_numOwners + 1 < 256
                address(stor4[stor2].field_0) = arg1
                Mask(96, 0, stor4[stor2].field_160) = 0
                stor259[address(arg1)] = m_numOwners
                emit OwnerAdded(arg1);
            if 1 < m_numOwners:
                # nil
            else:
                if m_numOwners < 250:
                    m_numOwners++
                    require m_numOwners + 1 < 256
                    address(stor4[stor2].field_0) = arg1
                    Mask(96, 0, stor4[stor2].field_160) = 0
                    stor259[address(arg1)] = m_numOwners
                    emit OwnerAdded(arg1);
}



}
