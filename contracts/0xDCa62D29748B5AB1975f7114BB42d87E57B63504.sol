contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint128 stor4; offset 160
address stor4;
array of struct stor5;
mapping of uint256 stor259;

function _fallback() payable {
    mem[96 len -3921] = code.data[4206 len -3921]
    mem[64] = -3825
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
    return code.data[285 len 3921]
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
mapping of uint256 get;
uint256 totalBalance;
uint256 totalFee;
array of uint256 stor39344831440919775760473342295582518284578257124288186221050705286102524724851;

function totalFee() payable {
    return totalFee
}

function m_numOwners() payable {
    return m_numOwners
}

function balances(uint256 arg1) payable {
    return get[arg1]
}

function operator() payable {
    return operatorAddress
}

function sub_5e59b39d(?) payable {
    return sub_5e59b39d
}

function sub_6c1a5f85(?) payable {
    return sub_6c1a5f85
}

function get(uint256 arg1) payable {
    return get[arg1]
}

function totalBalance() payable {
    return totalBalance
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

function hasConfirmed(bytes32 arg1, address arg2) payable {
    if stor259[address(arg2)] != 0:
        return 2^stor259[address(arg2)] and stor260[arg1].field_256 != 0
    else:
        return 0
}

function sub_70de1c2c(?) payable {
    if locked:
        emit Error(9);
        return 0
    require msg.sender == operatorAddress
    get[arg1] += arg2
    totalBalance += arg2
    totalFee += arg3
    return 1
}

function checkWithdraw(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    if locked:
        emit Error(9);
        return 0
    if arg2 <= 0:
        return 0
    if arg3 < 0:
        return 0
    if arg2 + arg3 > get[arg1]:
        return 0
    return 1
}

function revoke(bytes32 arg1) payable {
    if stor259[address(msg.sender)] != 0:
        if 2^stor259[address(msg.sender)] and stor260[arg1].field_256 > 0:
            stor260[arg1].field_0++
            stor260[arg1].field_256 -= 2^stor259[address(msg.sender)]
            emit Revoke(msg.sender, arg1);
}

function deposit(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    if locked:
        emit Error(9);
        return 0
    require msg.sender == operatorAddress
    if arg2 < 0:
        return 0
    if arg3 < 0:
        return 0
    totalBalance += arg2
    totalFee += arg3
    get[arg1] += arg2
    return 1
}

function sub_ea5cff53(?) payable {
    if locked:
        emit Error(9);
        return 0
    require msg.sender == operatorAddress
    if arg2 <= 0:
        return 0
    if arg3 < 0:
        return 0
    if arg2 + arg3 > get[arg1]:
        return 0
    totalBalance = totalBalance - arg3 - arg2
    totalFee += arg3
    get[arg1] = get[arg1] - arg3 - arg2
    return 1
}

function withdraw(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    if locked:
        emit Error(9);
        return 0
    require msg.sender == operatorAddress
    if arg2 <= 0:
        return 0
    if arg3 < 0:
        return 0
    if arg2 + arg3 > get[arg1]:
        return 0
    totalBalance = totalBalance - arg3 - arg2
    totalFee += arg3
    get[arg1] = get[arg1] - arg3 - arg2
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
            stor56FC[stor261.length] = sha3(call.data[0 len calldata.size])
        if 0 == 2^stor259[address(msg.sender)] and stor260[call.data[0 len calldata.size]].field_256:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor260[call.data[0 len calldata.size]].field_0 > 1:
                stor260[call.data[0 len calldata.size]].field_0--
                stor260[call.data[0 len calldata.size]].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]].field_256
            else:
                require stor260[call.data[0 len calldata.size]].field_512 < stor261.length
                stor56FC[stor260[call.data[0 len calldata.size]].field_512] = 0
                stor260[call.data[0 len calldata.size]].field_0 = 0
                stor260[call.data[0 len calldata.size]].field_256 = 0
                stor260[call.data[0 len calldata.size]].field_512 = 0
                idx = 0
                while idx < stor261.length:
                    mem[0] = 261
                    if stor56FC[idx]:
                        require idx < stor261.length
                        mem[0] = stor56FC[idx]
                        mem[32] = 260
                        stor260[stor56FC[idx]].field_0 = 0
                        stor260[stor56FC[idx]].field_256 = 0
                        stor260[stor56FC[idx]].field_512 = 0
                    idx = idx + 1
                    continue 
                stor261.length = 0
                idx = 0x56fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673
                while stor261.length + 0x56fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673 > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
                locked = 0
                emit 0x6d8db0d9: 0
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
            stor56FC[stor261.length] = sha3(call.data[0 len calldata.size])
        if 0 == 2^stor259[address(msg.sender)] and stor260[call.data[0 len calldata.size]].field_256:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor260[call.data[0 len calldata.size]].field_0 > 1:
                stor260[call.data[0 len calldata.size]].field_0--
                stor260[call.data[0 len calldata.size]].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]].field_256
            else:
                require stor260[call.data[0 len calldata.size]].field_512 < stor261.length
                stor56FC[stor260[call.data[0 len calldata.size]].field_512] = 0
                stor260[call.data[0 len calldata.size]].field_0 = 0
                stor260[call.data[0 len calldata.size]].field_256 = 0
                stor260[call.data[0 len calldata.size]].field_512 = 0
                idx = 0
                while idx < stor261.length:
                    mem[0] = 261
                    if stor56FC[idx]:
                        require idx < stor261.length
                        mem[0] = stor56FC[idx]
                        mem[32] = 260
                        stor260[stor56FC[idx]].field_0 = 0
                        stor260[stor56FC[idx]].field_256 = 0
                        stor260[stor56FC[idx]].field_512 = 0
                    idx = idx + 1
                    continue 
                stor261.length = 0
                idx = 0x56fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673
                while stor261.length + 0x56fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673 > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
                stor262 = arg1 or Mask(96, 160, stor262)
                emit OperatorChanged(operatorAddress, arg1);
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
            stor56FC[stor261.length] = sha3(call.data[0 len calldata.size])
        if 0 == 2^stor259[address(msg.sender)] and stor260[call.data[0 len calldata.size]].field_256:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor260[call.data[0 len calldata.size]].field_0 > 1:
                stor260[call.data[0 len calldata.size]].field_0--
                stor260[call.data[0 len calldata.size]].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]].field_256
            else:
                require stor260[call.data[0 len calldata.size]].field_512 < stor261.length
                stor56FC[stor260[call.data[0 len calldata.size]].field_512] = 0
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
                            if stor56FC[idx]:
                                require idx < stor261.length
                                mem[0] = stor56FC[idx]
                                mem[32] = 260
                                stor260[stor56FC[idx]].field_0 = 0
                                stor260[stor56FC[idx]].field_256 = 0
                                stor260[stor56FC[idx]].field_512 = 0
                            idx = idx + 1
                            continue 
                        stor261.length = 0
                        idx = 0x56fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673
                        while stor261.length + 0x56fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673 > idx:
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
            stor56FC[stor261.length] = sha3(call.data[0 len calldata.size])
        if 0 == 2^stor259[address(msg.sender)] and stor260[call.data[0 len calldata.size]].field_256:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor260[call.data[0 len calldata.size]].field_0 > 1:
                stor260[call.data[0 len calldata.size]].field_0--
                stor260[call.data[0 len calldata.size]].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]].field_256
            else:
                require stor260[call.data[0 len calldata.size]].field_512 < stor261.length
                stor56FC[stor260[call.data[0 len calldata.size]].field_512] = 0
                stor260[call.data[0 len calldata.size]].field_0 = 0
                stor260[call.data[0 len calldata.size]].field_256 = 0
                stor260[call.data[0 len calldata.size]].field_512 = 0
                if stor259[address(arg2)] <= 0:
                    if stor259[address(arg1)]:
                        idx = 0
                        while idx < stor261.length:
                            mem[0] = 261
                            if stor56FC[idx]:
                                require idx < stor261.length
                                mem[0] = stor56FC[idx]
                                mem[32] = 260
                                stor260[stor56FC[idx]].field_0 = 0
                                stor260[stor56FC[idx]].field_256 = 0
                                stor260[stor56FC[idx]].field_512 = 0
                            idx = idx + 1
                            continue 
                        stor261.length = 0
                        idx = 0x56fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673
                        while stor261.length + 0x56fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673 > idx:
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
        stor56FC[stor260[call.data[0 len calldata.size]].field_512] = 0
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
            if stor56FC[idx]:
                require idx < stor261.length
                mem[0] = stor56FC[idx]
                mem[32] = 260
                stor260[stor56FC[idx]].field_0 = 0
                stor260[stor56FC[idx]].field_256 = 0
                stor260[stor56FC[idx]].field_512 = 0
            idx = idx + 1
            continue 
        stor261.length = 0
        idx = 0x56fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673
        while stor261.length + 0x56fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673 > idx:
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
            stor56FC[stor261.length] = sha3(call.data[0 len calldata.size])
            if 2^stor259[address(msg.sender)] and stor260[call.data[0 len calldata.size]].field_256 != 0:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor260[call.data[0 len calldata.size]].field_0 > 1:
                stor260[call.data[0 len calldata.size]].field_0--
                stor260[call.data[0 len calldata.size]].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]].field_256
            require stor260[call.data[0 len calldata.size]].field_512 < stor261.length
            stor56FC[stor260[call.data[0 len calldata.size]].field_512] = 0
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
                if stor56FC[idx]:
                    require idx < stor261.length
                    mem[0] = stor56FC[idx]
                    mem[32] = 260
                    stor260[stor56FC[idx]].field_0 = 0
                    stor260[stor56FC[idx]].field_256 = 0
                    stor260[stor56FC[idx]].field_512 = 0
                idx = idx + 1
                continue 
            stor261.length = 0
            idx = 0x56fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673
            while stor261.length + 0x56fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673 > idx:
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
            stor56FC[stor261.length] = sha3(call.data[0 len calldata.size])
            if 2^stor259[address(msg.sender)] and stor260[call.data[0 len calldata.size]].field_256 != 0:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor260[call.data[0 len calldata.size]].field_0 > 1:
                stor260[call.data[0 len calldata.size]].field_0--
                stor260[call.data[0 len calldata.size]].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]].field_256
            require stor260[call.data[0 len calldata.size]].field_512 < stor261.length
            stor56FC[stor260[call.data[0 len calldata.size]].field_512] = 0
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
                if stor56FC[idx]:
                    require idx < stor261.length
                    mem[0] = stor56FC[idx]
                    mem[32] = 260
                    stor260[stor56FC[idx]].field_0 = 0
                    stor260[stor56FC[idx]].field_256 = 0
                    stor260[stor56FC[idx]].field_512 = 0
                idx = idx + 1
                continue 
            stor261.length = 0
            idx = 0x56fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673
            while stor261.length + 0x56fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673 > idx:
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
        stor56FC[stor260[call.data[0 len calldata.size]].field_512] = 0
        stor260[call.data[0 len calldata.size]].field_0 = 0
        stor260[call.data[0 len calldata.size]].field_256 = 0
        stor260[call.data[0 len calldata.size]].field_512 = 0
        if stor259[address(arg1)] > 0:
        idx = 0
        while idx < stor261.length:
            mem[0] = 261
            if stor56FC[idx]:
                require idx < stor261.length
                mem[0] = stor56FC[idx]
                mem[32] = 260
                stor260[stor56FC[idx]].field_0 = 0
                stor260[stor56FC[idx]].field_256 = 0
                stor260[stor56FC[idx]].field_512 = 0
            idx = idx + 1
            continue 
        stor261.length = 0
        idx = 0x56fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673
        while stor261.length + 0x56fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673 > idx:
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
            stor56FC[stor261.length] = sha3(call.data[0 len calldata.size])
            if 2^stor259[address(msg.sender)] and stor260[call.data[0 len calldata.size]].field_256 != 0:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor260[call.data[0 len calldata.size]].field_0 > 1:
                stor260[call.data[0 len calldata.size]].field_0--
                stor260[call.data[0 len calldata.size]].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]].field_256
            require stor260[call.data[0 len calldata.size]].field_512 < stor261.length
            stor56FC[stor260[call.data[0 len calldata.size]].field_512] = 0
            stor260[call.data[0 len calldata.size]].field_0 = 0
            stor260[call.data[0 len calldata.size]].field_256 = 0
            stor260[call.data[0 len calldata.size]].field_512 = 0
            if stor259[address(arg1)] > 0:
            idx = 0
            while idx < stor261.length:
                mem[0] = 261
                if stor56FC[idx]:
                    require idx < stor261.length
                    mem[0] = stor56FC[idx]
                    mem[32] = 260
                    stor260[stor56FC[idx]].field_0 = 0
                    stor260[stor56FC[idx]].field_256 = 0
                    stor260[stor56FC[idx]].field_512 = 0
                idx = idx + 1
                continue 
            stor261.length = 0
            idx = 0x56fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673
            while stor261.length + 0x56fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673 > idx:
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
            stor56FC[stor261.length] = sha3(call.data[0 len calldata.size])
            if 2^stor259[address(msg.sender)] and stor260[call.data[0 len calldata.size]].field_256 != 0:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor260[call.data[0 len calldata.size]].field_0 > 1:
                stor260[call.data[0 len calldata.size]].field_0--
                stor260[call.data[0 len calldata.size]].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]].field_256
            require stor260[call.data[0 len calldata.size]].field_512 < stor261.length
            stor56FC[stor260[call.data[0 len calldata.size]].field_512] = 0
            stor260[call.data[0 len calldata.size]].field_0 = 0
            stor260[call.data[0 len calldata.size]].field_256 = 0
            stor260[call.data[0 len calldata.size]].field_512 = 0
            if stor259[address(arg1)] > 0:
            idx = 0
            while idx < stor261.length:
                mem[0] = 261
                if stor56FC[idx]:
                    require idx < stor261.length
                    mem[0] = stor56FC[idx]
                    mem[32] = 260
                    stor260[stor56FC[idx]].field_0 = 0
                    stor260[stor56FC[idx]].field_256 = 0
                    stor260[stor56FC[idx]].field_512 = 0
                idx = idx + 1
                continue 
            stor261.length = 0
            idx = 0x56fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673
            while stor261.length + 0x56fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673 > idx:
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
