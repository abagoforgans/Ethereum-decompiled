contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint128 stor3; offset 160
address stor3;
array of struct stor4;
mapping of uint256 stor258;
uint256 stor263;
uint256 stor264;
uint256 stor265;
uint256 stor266;
address stor267;
uint256 stor267;

function _fallback() payable {
    mem[96 len -5675] = code.data[6226 len -5675]
    mem[64] = -5579
    stor1 = mem[mem[96] + 96] + 1
    address(stor3.field_0) = msg.sender
    Mask(96, 0, stor3.field_160) = 0
    stor258[address(msg.sender)] = 1
    idx = 0
    while idx < mem[mem[96] + 96]:
        require idx < mem[mem[96] + 96]
        require idx + 2 < 256
        stor4[idx].field_0 = mem[(32 * idx) + mem[96] + 140 len 20]
        stor4[idx].field_160 = 0
        require idx < mem[mem[96] + 96]
        mem[0] = mem[(32 * idx) + mem[96] + 140 len 20]
        mem[32] = 258
        stor258[mem[(32 * idx) + mem[96] + 140 len 20]] = idx + 2
        idx = idx + 1
        continue 
    stor0 = mem[128]
    stor263 = mem[160]
    stor264 = mem[192]
    stor266 = mem[224]
    stor265 = 52000
    uint256(stor267) = mem[256]
    call address(stor267).forked() with:
         gas gas_remaining - 25050 wei
    if ext_call.success:
        if bool(mem[288]) == bool(ext_call.return_data[0]):
            return code.data[551 len 5675]
    revert 
}



// =====================  Runtime code  =====================


uint256 m_required;
uint256 m_numOwners;
array of struct stor2;
array of struct stor3;
mapping of uint256 stor258;
mapping of struct stor259;
array of uint256 stor260;
uint8 locked;
uint256 total;
address sub_5807dc88Address;
uint256 stor263;
address sub_c8a6f915Address;
uint256 stor264;
uint256 sub_be37757a;
address apiAddress;
uint256 stor266;
address sub_95a5e831Address;
mapping of uint8 stor268;
mapping of uint256 balances;
mapping of address tokens;

function balances(address arg1) payable {
    return balances[arg1]
}

function total() payable {
    return total
}

function m_numOwners() payable {
    return m_numOwners
}

function sub_5807dc88(?) payable {
    return address(sub_5807dc88Address)
}

function accounts(address arg1) payable {
    return bool(stor268[arg1])
}

function m_required() payable {
    return m_required
}

function sub_95a5e831(?) payable {
    return sub_95a5e831Address
}

function sub_be37757a(?) payable {
    return sub_be37757a
}

function sub_c8a6f915(?) payable {
    return address(sub_c8a6f915Address)
}

function locked() payable {
    return bool(locked)
}

function tokens(address arg1) payable {
    return address(tokens[arg1])
}

function apiAddress() payable {
    return address(apiAddress)
}

function _fallback() payable {
  stop
}

function isOwner(address arg1) payable {
    return (stor258[address(arg1)] > 0)
}

function lock() payable {
    if stor258[address(msg.sender)] > 0:
        locked = 1
        emit 0x6d8db0d9: 1
}

function hasConfirmed(bytes32 arg1, address arg2) payable {
    if stor258[address(arg2)] != 0:
        return 2^stor258[address(arg2)] and stor259[arg1].field_256 != 0
    else:
        return 0
}

function sub_351e8478(?) payable {
    if stor268[address(msg.sender)]:
        if not locked:
            require msg.value <= 0
            balances[address(msg.sender)] += arg2
            emit Deposit(address(arg1), msg.sender, arg2, arg3);
}

function getColdAddress() payable {
    call sub_95a5e831Address.forked() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if not ext_call.return_data[0]:
        return address(sub_c8a6f915Address)
    return address(sub_5807dc88Address)
}

function sub_bfdcc9e7(?) payable {
    if msg.sender == address(apiAddress):
        if not locked:
            require msg.value <= 0
            call arg2.0x2efa44e with:
                 gas gas_remaining - 25050 wei
                args address(arg1), arg3
            require ext_call.success
}

function sub_2d609e62(?) payable {
    if msg.sender == address(apiAddress):
        if not locked:
            require msg.value <= 0
            call arg1.0x54812bf3 with:
                 gas gas_remaining - 25050 wei
                args arg2, address(arg3), arg4
            require ext_call.success
}

function revoke(bytes32 arg1) payable {
    if stor258[address(msg.sender)] != 0:
        if 2^stor258[address(msg.sender)] and stor259[arg1].field_256 > 0:
            stor259[arg1].field_0++
            stor259[arg1].field_256 -= 2^stor258[address(msg.sender)]
            emit Revoke(msg.sender, arg1);
}

function add() payable {
    if address(apiAddress) != msg.sender:
        return 0
    if locked:
        return 0
    require msg.value <= 0
    create contract with 0 wei
                    code: code.data[4460 len 1183], address(this.address)
    stor268[address(create.new_address)] = 1
    emit AccountCreated(address(create.new_address));
    return address(create.new_address)
}

function unlock() payable {
    if stor258[address(msg.sender)] != 0:
        if not stor259[call.data[0 len calldata.size]].field_0:
            stor259[call.data[0 len calldata.size]].field_0 = m_required
            stor259[call.data[0 len calldata.size]].field_256 = 0
            stor260.length++
            if not stor260.length <= stor260.length + 1:
                idx = stor260.length + 1
                while stor260.length > idx:
                    stor260[idx] = 0
                    idx = idx + 1
                    continue 
            stor259[call.data[0 len calldata.size]].field_512 = stor260.length
            require stor260.length < stor260.length
            stor[code.data[5643 len 32] + stor260.length] = sha3(call.data[0 len calldata.size])
        if 0 == 2^stor258[address(msg.sender)] and stor259[call.data[0 len calldata.size]].field_256:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor259[call.data[0 len calldata.size]].field_0 > 1:
                stor259[call.data[0 len calldata.size]].field_0--
                stor259[call.data[0 len calldata.size]].field_256 = 2^stor258[address(msg.sender)] or stor259[call.data[0 len calldata.size]].field_256
            else:
                require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
                stor[code.data[5643 len 32] + stor259[call.data[0 len calldata.size]].field_512] = 0
                stor259[call.data[0 len calldata.size]].field_0 = 0
                stor259[call.data[0 len calldata.size]].field_256 = 0
                stor259[call.data[0 len calldata.size]].field_512 = 0
                locked = 0
                emit 0x6d8db0d9: 0
}

function sub_557fe771(?) payable {
    if stor258[address(msg.sender)] != 0:
        if not stor259[call.data[0 len calldata.size]].field_0:
            stor259[call.data[0 len calldata.size]].field_0 = m_required
            stor259[call.data[0 len calldata.size]].field_256 = 0
            stor260.length++
            if not stor260.length <= stor260.length + 1:
                idx = stor260.length + 1
                while stor260.length > idx:
                    stor260[idx] = 0
                    idx = idx + 1
                    continue 
            stor259[call.data[0 len calldata.size]].field_512 = stor260.length
            require stor260.length < stor260.length
            stor[code.data[5643 len 32] + stor260.length] = sha3(call.data[0 len calldata.size])
        if 0 == 2^stor258[address(msg.sender)] and stor259[call.data[0 len calldata.size]].field_256:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor259[call.data[0 len calldata.size]].field_0 > 1:
                stor259[call.data[0 len calldata.size]].field_0--
                stor259[call.data[0 len calldata.size]].field_256 = 2^stor258[address(msg.sender)] or stor259[call.data[0 len calldata.size]].field_256
            else:
                require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
                stor[code.data[5643 len 32] + stor259[call.data[0 len calldata.size]].field_512] = 0
                stor259[call.data[0 len calldata.size]].field_0 = 0
                stor259[call.data[0 len calldata.size]].field_256 = 0
                stor259[call.data[0 len calldata.size]].field_512 = 0
                if not locked:
                    require msg.value <= 0
                    uint256(stor263) = arg1 or Mask(96, 160, uint256(stor263))
}

function sub_5d65760b(?) payable {
    if stor258[address(msg.sender)] != 0:
        if not stor259[call.data[0 len calldata.size]].field_0:
            stor259[call.data[0 len calldata.size]].field_0 = m_required
            stor259[call.data[0 len calldata.size]].field_256 = 0
            stor260.length++
            if not stor260.length <= stor260.length + 1:
                idx = stor260.length + 1
                while stor260.length > idx:
                    stor260[idx] = 0
                    idx = idx + 1
                    continue 
            stor259[call.data[0 len calldata.size]].field_512 = stor260.length
            require stor260.length < stor260.length
            stor[code.data[5643 len 32] + stor260.length] = sha3(call.data[0 len calldata.size])
        if 0 == 2^stor258[address(msg.sender)] and stor259[call.data[0 len calldata.size]].field_256:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor259[call.data[0 len calldata.size]].field_0 > 1:
                stor259[call.data[0 len calldata.size]].field_0--
                stor259[call.data[0 len calldata.size]].field_256 = 2^stor258[address(msg.sender)] or stor259[call.data[0 len calldata.size]].field_256
            else:
                require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
                stor[code.data[5643 len 32] + stor259[call.data[0 len calldata.size]].field_512] = 0
                stor259[call.data[0 len calldata.size]].field_0 = 0
                stor259[call.data[0 len calldata.size]].field_256 = 0
                stor259[call.data[0 len calldata.size]].field_512 = 0
                if not locked:
                    require msg.value <= 0
                    uint256(stor264) = arg1 or Mask(96, 160, uint256(stor264))
}

function sub_ad80e451(?) payable {
    if stor258[address(msg.sender)] != 0:
        if not stor259[call.data[0 len calldata.size]].field_0:
            stor259[call.data[0 len calldata.size]].field_0 = m_required
            stor259[call.data[0 len calldata.size]].field_256 = 0
            stor260.length++
            if not stor260.length <= stor260.length + 1:
                idx = stor260.length + 1
                while stor260.length > idx:
                    stor260[idx] = 0
                    idx = idx + 1
                    continue 
            stor259[call.data[0 len calldata.size]].field_512 = stor260.length
            require stor260.length < stor260.length
            stor[code.data[5643 len 32] + stor260.length] = sha3(call.data[0 len calldata.size])
        if 0 == 2^stor258[address(msg.sender)] and stor259[call.data[0 len calldata.size]].field_256:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor259[call.data[0 len calldata.size]].field_0 > 1:
                stor259[call.data[0 len calldata.size]].field_0--
                stor259[call.data[0 len calldata.size]].field_256 = 2^stor258[address(msg.sender)] or stor259[call.data[0 len calldata.size]].field_256
            else:
                require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
                stor[code.data[5643 len 32] + stor259[call.data[0 len calldata.size]].field_512] = 0
                stor259[call.data[0 len calldata.size]].field_0 = 0
                stor259[call.data[0 len calldata.size]].field_256 = 0
                stor259[call.data[0 len calldata.size]].field_512 = 0
                if not locked:
                    require msg.value <= 0
                    sub_be37757a = arg1
                    emit 0xb6ee1e44: arg1
}

function setApiAddress(address arg1) payable {
    if stor258[address(msg.sender)] != 0:
        if not stor259[call.data[0 len calldata.size]].field_0:
            stor259[call.data[0 len calldata.size]].field_0 = m_required
            stor259[call.data[0 len calldata.size]].field_256 = 0
            stor260.length++
            if not stor260.length <= stor260.length + 1:
                idx = stor260.length + 1
                while stor260.length > idx:
                    stor260[idx] = 0
                    idx = idx + 1
                    continue 
            stor259[call.data[0 len calldata.size]].field_512 = stor260.length
            require stor260.length < stor260.length
            stor[code.data[5643 len 32] + stor260.length] = sha3(call.data[0 len calldata.size])
        if 0 == 2^stor258[address(msg.sender)] and stor259[call.data[0 len calldata.size]].field_256:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor259[call.data[0 len calldata.size]].field_0 > 1:
                stor259[call.data[0 len calldata.size]].field_0--
                stor259[call.data[0 len calldata.size]].field_256 = 2^stor258[address(msg.sender)] or stor259[call.data[0 len calldata.size]].field_256
            else:
                require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
                stor[code.data[5643 len 32] + stor259[call.data[0 len calldata.size]].field_512] = 0
                stor259[call.data[0 len calldata.size]].field_0 = 0
                stor259[call.data[0 len calldata.size]].field_256 = 0
                stor259[call.data[0 len calldata.size]].field_512 = 0
                if not locked:
                    require msg.value <= 0
                    uint256(stor266) = arg1 or Mask(96, 160, uint256(stor266))
                    emit 0x528e1ebe: arg1
}

function setToken(address arg1, address arg2) payable {
    if stor258[address(msg.sender)] != 0:
        if not stor259[call.data[0 len calldata.size]].field_0:
            stor259[call.data[0 len calldata.size]].field_0 = m_required
            stor259[call.data[0 len calldata.size]].field_256 = 0
            stor260.length++
            if not stor260.length <= stor260.length + 1:
                idx = stor260.length + 1
                while stor260.length > idx:
                    stor260[idx] = 0
                    idx = idx + 1
                    continue 
            stor259[call.data[0 len calldata.size]].field_512 = stor260.length
            require stor260.length < stor260.length
            stor[code.data[5643 len 32] + stor260.length] = sha3(call.data[0 len calldata.size])
        if 0 == 2^stor258[address(msg.sender)] and stor259[call.data[0 len calldata.size]].field_256:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor259[call.data[0 len calldata.size]].field_0 > 1:
                stor259[call.data[0 len calldata.size]].field_0--
                stor259[call.data[0 len calldata.size]].field_256 = 2^stor258[address(msg.sender)] or stor259[call.data[0 len calldata.size]].field_256
            else:
                require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
                stor[code.data[5643 len 32] + stor259[call.data[0 len calldata.size]].field_512] = 0
                stor259[call.data[0 len calldata.size]].field_0 = 0
                stor259[call.data[0 len calldata.size]].field_256 = 0
                stor259[call.data[0 len calldata.size]].field_512 = 0
                if not locked:
                    require msg.value <= 0
                    uint256(tokens[address(arg1)]) = arg2 or Mask(96, 160, uint256(tokens[address(arg1)]))
                    emit TokenSet(address(arg1), arg2);
}

function changeRequirement(uint256 arg1) payable {
    if stor258[address(msg.sender)] != 0:
        if not stor259[call.data[0 len calldata.size]].field_0:
            stor259[call.data[0 len calldata.size]].field_0 = m_required
            stor259[call.data[0 len calldata.size]].field_256 = 0
            stor260.length++
            if not stor260.length <= stor260.length + 1:
                idx = stor260.length + 1
                while stor260.length > idx:
                    stor260[idx] = 0
                    idx = idx + 1
                    continue 
            stor259[call.data[0 len calldata.size]].field_512 = stor260.length
            require stor260.length < stor260.length
            stor[code.data[5643 len 32] + stor260.length] = sha3(call.data[0 len calldata.size])
        if 0 == 2^stor258[address(msg.sender)] and stor259[call.data[0 len calldata.size]].field_256:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor259[call.data[0 len calldata.size]].field_0 > 1:
                stor259[call.data[0 len calldata.size]].field_0--
                stor259[call.data[0 len calldata.size]].field_256 = 2^stor258[address(msg.sender)] or stor259[call.data[0 len calldata.size]].field_256
            else:
                require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
                stor[code.data[5643 len 32] + stor259[call.data[0 len calldata.size]].field_512] = 0
                stor259[call.data[0 len calldata.size]].field_0 = 0
                stor259[call.data[0 len calldata.size]].field_256 = 0
                stor259[call.data[0 len calldata.size]].field_512 = 0
                if arg1 <= m_numOwners:
                    m_required = arg1
                    idx = 0
                    while idx < stor260.length:
                        mem[0] = 260
                        if stor[code.data[5643 len 32] + idx]:
                            require idx < stor260.length
                            mem[0] = stor[code.data[5643 len 32] + idx]
                            mem[32] = 259
                            stor259[stor[code.data[5643 len 32] + idx]].field_0 = 0
                            stor259[stor[code.data[5643 len 32] + idx]].field_256 = 0
                            stor259[stor[code.data[5643 len 32] + idx]].field_512 = 0
                        idx = idx + 1
                        continue 
                    stor260.length = 0
                    idx = code.data[5643 len 32]
                    while code.data[5643 len 32] + stor260.length > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                    emit RequirementChanged(arg1);
}

function changeOwner(address arg1, address arg2) payable {
    if stor258[address(msg.sender)] != 0:
        if not stor259[call.data[0 len calldata.size]].field_0:
            stor259[call.data[0 len calldata.size]].field_0 = m_required
            stor259[call.data[0 len calldata.size]].field_256 = 0
            stor260.length++
            if not stor260.length <= stor260.length + 1:
                idx = stor260.length + 1
                while stor260.length > idx:
                    stor260[idx] = 0
                    idx = idx + 1
                    continue 
            stor259[call.data[0 len calldata.size]].field_512 = stor260.length
            require stor260.length < stor260.length
            stor[code.data[5643 len 32] + stor260.length] = sha3(call.data[0 len calldata.size])
        if 0 == 2^stor258[address(msg.sender)] and stor259[call.data[0 len calldata.size]].field_256:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor259[call.data[0 len calldata.size]].field_0 > 1:
                stor259[call.data[0 len calldata.size]].field_0--
                stor259[call.data[0 len calldata.size]].field_256 = 2^stor258[address(msg.sender)] or stor259[call.data[0 len calldata.size]].field_256
            else:
                require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
                stor[code.data[5643 len 32] + stor259[call.data[0 len calldata.size]].field_512] = 0
                stor259[call.data[0 len calldata.size]].field_0 = 0
                stor259[call.data[0 len calldata.size]].field_256 = 0
                stor259[call.data[0 len calldata.size]].field_512 = 0
                if stor258[address(arg2)] <= 0:
                    if stor258[address(arg1)]:
                        idx = 0
                        while idx < stor260.length:
                            mem[0] = 260
                            if stor[code.data[5643 len 32] + idx]:
                                require idx < stor260.length
                                mem[0] = stor[code.data[5643 len 32] + idx]
                                mem[32] = 259
                                stor259[stor[code.data[5643 len 32] + idx]].field_0 = 0
                                stor259[stor[code.data[5643 len 32] + idx]].field_256 = 0
                                stor259[stor[code.data[5643 len 32] + idx]].field_512 = 0
                            idx = idx + 1
                            continue 
                        stor260.length = 0
                        idx = code.data[5643 len 32]
                        while code.data[5643 len 32] + stor260.length > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                        require stor258[address(arg1)] < 256
                        address(stor2[stor258[address(arg1)]].field_0) = arg2
                        Mask(96, 0, stor2[stor258[address(arg1)]].field_160) = 0
                        stor258[address(arg1)] = 0
                        stor258[arg2] = stor258[address(arg1)]
                        emit OwnerChanged(address(arg1), arg2);
}

function removeOwner(address arg1) payable {
    if 0 == stor258[address(msg.sender)]:
    if stor259[call.data[0 len calldata.size]].field_0:
        if 2^stor258[address(msg.sender)] and stor259[call.data[0 len calldata.size]].field_256 != 0:
        emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
        if stor259[call.data[0 len calldata.size]].field_0 > 1:
            stor259[call.data[0 len calldata.size]].field_0--
            stor259[call.data[0 len calldata.size]].field_256 = 2^stor258[address(msg.sender)] or stor259[call.data[0 len calldata.size]].field_256
        require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
        stor[code.data[5643 len 32] + stor259[call.data[0 len calldata.size]].field_512] = 0
        stor259[call.data[0 len calldata.size]].field_0 = 0
        stor259[call.data[0 len calldata.size]].field_256 = 0
        stor259[call.data[0 len calldata.size]].field_512 = 0
        if not stor258[address(arg1)]:
        if m_required > m_numOwners - 1:
        require stor258[address(arg1)] < 256
        stor2[stor258[address(arg1)]].field_0 = 0
        stor258[address(arg1)] = 0
        idx = 0
        while idx < stor260.length:
            mem[0] = 260
            if stor[code.data[5643 len 32] + idx]:
                require idx < stor260.length
                mem[0] = stor[code.data[5643 len 32] + idx]
                mem[32] = 259
                stor259[stor[code.data[5643 len 32] + idx]].field_0 = 0
                stor259[stor[code.data[5643 len 32] + idx]].field_256 = 0
                stor259[stor[code.data[5643 len 32] + idx]].field_512 = 0
            idx = idx + 1
            continue 
        stor260.length = 0
        idx = code.data[5643 len 32]
        while code.data[5643 len 32] + stor260.length > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
        # nil
    else:
        stor259[call.data[0 len calldata.size]].field_0 = m_required
        stor259[call.data[0 len calldata.size]].field_256 = 0
        stor260.length++
        if not stor260.length > stor260.length + 1:
            stor259[call.data[0 len calldata.size]].field_512 = stor260.length
            require stor260.length < stor260.length
            stor[code.data[5643 len 32] + stor260.length] = sha3(call.data[0 len calldata.size])
            if 2^stor258[address(msg.sender)] and stor259[call.data[0 len calldata.size]].field_256 != 0:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor259[call.data[0 len calldata.size]].field_0 > 1:
                stor259[call.data[0 len calldata.size]].field_0--
                stor259[call.data[0 len calldata.size]].field_256 = 2^stor258[address(msg.sender)] or stor259[call.data[0 len calldata.size]].field_256
            require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
            stor[code.data[5643 len 32] + stor259[call.data[0 len calldata.size]].field_512] = 0
            stor259[call.data[0 len calldata.size]].field_0 = 0
            stor259[call.data[0 len calldata.size]].field_256 = 0
            stor259[call.data[0 len calldata.size]].field_512 = 0
            if not stor258[address(arg1)]:
            if m_required > m_numOwners - 1:
            require stor258[address(arg1)] < 256
            stor2[stor258[address(arg1)]].field_0 = 0
            stor258[address(arg1)] = 0
            idx = 0
            while idx < stor260.length:
                mem[0] = 260
                if stor[code.data[5643 len 32] + idx]:
                    require idx < stor260.length
                    mem[0] = stor[code.data[5643 len 32] + idx]
                    mem[32] = 259
                    stor259[stor[code.data[5643 len 32] + idx]].field_0 = 0
                    stor259[stor[code.data[5643 len 32] + idx]].field_256 = 0
                    stor259[stor[code.data[5643 len 32] + idx]].field_512 = 0
                idx = idx + 1
                continue 
            stor260.length = 0
            idx = code.data[5643 len 32]
            while code.data[5643 len 32] + stor260.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
            # nil
        else:
            idx = stor260.length + 1
            while stor260.length > idx:
                stor260[idx] = 0
                idx = idx + 1
                continue 
            stor259[call.data[0 len calldata.size]].field_512 = stor260.length
            require stor260.length < stor260.length
            stor[code.data[5643 len 32] + stor260.length] = sha3(call.data[0 len calldata.size])
            if 2^stor258[address(msg.sender)] and stor259[call.data[0 len calldata.size]].field_256 != 0:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor259[call.data[0 len calldata.size]].field_0 > 1:
                stor259[call.data[0 len calldata.size]].field_0--
                stor259[call.data[0 len calldata.size]].field_256 = 2^stor258[address(msg.sender)] or stor259[call.data[0 len calldata.size]].field_256
            require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
            stor[code.data[5643 len 32] + stor259[call.data[0 len calldata.size]].field_512] = 0
            stor259[call.data[0 len calldata.size]].field_0 = 0
            stor259[call.data[0 len calldata.size]].field_256 = 0
            stor259[call.data[0 len calldata.size]].field_512 = 0
            if not stor258[address(arg1)]:
            if m_required > m_numOwners - 1:
            require stor258[address(arg1)] < 256
            stor2[stor258[address(arg1)]].field_0 = 0
            stor258[address(arg1)] = 0
            idx = 0
            while idx < stor260.length:
                mem[0] = 260
                if stor[code.data[5643 len 32] + idx]:
                    require idx < stor260.length
                    mem[0] = stor[code.data[5643 len 32] + idx]
                    mem[32] = 259
                    stor259[stor[code.data[5643 len 32] + idx]].field_0 = 0
                    stor259[stor[code.data[5643 len 32] + idx]].field_256 = 0
                    stor259[stor[code.data[5643 len 32] + idx]].field_512 = 0
                idx = idx + 1
                continue 
            stor260.length = 0
            idx = code.data[5643 len 32]
            while code.data[5643 len 32] + stor260.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
            if 1 < m_numOwners:
                # nil
            else:
                emit OwnerRemoved(arg1);
}

function addOwner(address arg1) payable {
    if 0 == stor258[address(msg.sender)]:
    if stor259[call.data[0 len calldata.size]].field_0:
        if 2^stor258[address(msg.sender)] and stor259[call.data[0 len calldata.size]].field_256 != 0:
        emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
        if stor259[call.data[0 len calldata.size]].field_0 > 1:
            stor259[call.data[0 len calldata.size]].field_0--
            stor259[call.data[0 len calldata.size]].field_256 = 2^stor258[address(msg.sender)] or stor259[call.data[0 len calldata.size]].field_256
        require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
        stor[code.data[5643 len 32] + stor259[call.data[0 len calldata.size]].field_512] = 0
        stor259[call.data[0 len calldata.size]].field_0 = 0
        stor259[call.data[0 len calldata.size]].field_256 = 0
        stor259[call.data[0 len calldata.size]].field_512 = 0
        if stor258[address(arg1)] > 0:
        idx = 0
        while idx < stor260.length:
            mem[0] = 260
            if stor[code.data[5643 len 32] + idx]:
                require idx < stor260.length
                mem[0] = stor[code.data[5643 len 32] + idx]
                mem[32] = 259
                stor259[stor[code.data[5643 len 32] + idx]].field_0 = 0
                stor259[stor[code.data[5643 len 32] + idx]].field_256 = 0
                stor259[stor[code.data[5643 len 32] + idx]].field_512 = 0
            idx = idx + 1
            continue 
        stor260.length = 0
        idx = code.data[5643 len 32]
        while code.data[5643 len 32] + stor260.length > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
        if m_numOwners >= 250:
            # nil
        else:
            m_numOwners++
            require m_numOwners + 1 < 256
            address(stor3[stor1].field_0) = arg1
            Mask(96, 0, stor3[stor1].field_160) = 0
            stor258[address(arg1)] = m_numOwners
            emit OwnerAdded(arg1);
    else:
        stor259[call.data[0 len calldata.size]].field_0 = m_required
        stor259[call.data[0 len calldata.size]].field_256 = 0
        stor260.length++
        if not stor260.length > stor260.length + 1:
            stor259[call.data[0 len calldata.size]].field_512 = stor260.length
            require stor260.length < stor260.length
            stor[code.data[5643 len 32] + stor260.length] = sha3(call.data[0 len calldata.size])
            if 2^stor258[address(msg.sender)] and stor259[call.data[0 len calldata.size]].field_256 != 0:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor259[call.data[0 len calldata.size]].field_0 > 1:
                stor259[call.data[0 len calldata.size]].field_0--
                stor259[call.data[0 len calldata.size]].field_256 = 2^stor258[address(msg.sender)] or stor259[call.data[0 len calldata.size]].field_256
            require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
            stor[code.data[5643 len 32] + stor259[call.data[0 len calldata.size]].field_512] = 0
            stor259[call.data[0 len calldata.size]].field_0 = 0
            stor259[call.data[0 len calldata.size]].field_256 = 0
            stor259[call.data[0 len calldata.size]].field_512 = 0
            if stor258[address(arg1)] > 0:
            idx = 0
            while idx < stor260.length:
                mem[0] = 260
                if stor[code.data[5643 len 32] + idx]:
                    require idx < stor260.length
                    mem[0] = stor[code.data[5643 len 32] + idx]
                    mem[32] = 259
                    stor259[stor[code.data[5643 len 32] + idx]].field_0 = 0
                    stor259[stor[code.data[5643 len 32] + idx]].field_256 = 0
                    stor259[stor[code.data[5643 len 32] + idx]].field_512 = 0
                idx = idx + 1
                continue 
            stor260.length = 0
            idx = code.data[5643 len 32]
            while code.data[5643 len 32] + stor260.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
            if m_numOwners >= 250:
                # nil
            else:
                m_numOwners++
                require m_numOwners + 1 < 256
                address(stor3[stor1].field_0) = arg1
                Mask(96, 0, stor3[stor1].field_160) = 0
                stor258[address(arg1)] = m_numOwners
                emit OwnerAdded(arg1);
        else:
            idx = stor260.length + 1
            while stor260.length > idx:
                stor260[idx] = 0
                idx = idx + 1
                continue 
            stor259[call.data[0 len calldata.size]].field_512 = stor260.length
            require stor260.length < stor260.length
            stor[code.data[5643 len 32] + stor260.length] = sha3(call.data[0 len calldata.size])
            if 2^stor258[address(msg.sender)] and stor259[call.data[0 len calldata.size]].field_256 != 0:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor259[call.data[0 len calldata.size]].field_0 > 1:
                stor259[call.data[0 len calldata.size]].field_0--
                stor259[call.data[0 len calldata.size]].field_256 = 2^stor258[address(msg.sender)] or stor259[call.data[0 len calldata.size]].field_256
            require stor259[call.data[0 len calldata.size]].field_512 < stor260.length
            stor[code.data[5643 len 32] + stor259[call.data[0 len calldata.size]].field_512] = 0
            stor259[call.data[0 len calldata.size]].field_0 = 0
            stor259[call.data[0 len calldata.size]].field_256 = 0
            stor259[call.data[0 len calldata.size]].field_512 = 0
            if stor258[address(arg1)] > 0:
            idx = 0
            while idx < stor260.length:
                mem[0] = 260
                if stor[code.data[5643 len 32] + idx]:
                    require idx < stor260.length
                    mem[0] = stor[code.data[5643 len 32] + idx]
                    mem[32] = 259
                    stor259[stor[code.data[5643 len 32] + idx]].field_0 = 0
                    stor259[stor[code.data[5643 len 32] + idx]].field_256 = 0
                    stor259[stor[code.data[5643 len 32] + idx]].field_512 = 0
                idx = idx + 1
                continue 
            stor260.length = 0
            idx = code.data[5643 len 32]
            while code.data[5643 len 32] + stor260.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
            if m_numOwners < 250:
                m_numOwners++
                require m_numOwners + 1 < 256
                address(stor3[stor1].field_0) = arg1
                Mask(96, 0, stor3[stor1].field_160) = 0
                stor258[address(arg1)] = m_numOwners
                emit OwnerAdded(arg1);
            if 1 < m_numOwners:
                # nil
            else:
                if m_numOwners < 250:
                    m_numOwners++
                    require m_numOwners + 1 < 256
                    address(stor3[stor1].field_0) = arg1
                    Mask(96, 0, stor3[stor1].field_160) = 0
                    stor258[address(arg1)] = m_numOwners
                    emit OwnerAdded(arg1);
}



}
