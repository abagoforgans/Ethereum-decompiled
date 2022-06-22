contract main {




// =====================  Runtime code  =====================


address owner;
uint8 state;
address beneficiaryAddress; offset 8
mapping of struct refundees;
array of address stor4;
mapping of uint256 depositsOf;
mapping of uint256 sub_db4980d9;
uint256 sub_32ada1dd;
uint256 sub_a2e5b2ed;

function sub_32ada1dd(?) {
    return sub_32ada1dd
}

function beneficiary() {
    return beneficiaryAddress
}

function refundeesListLength() {
    require msg.sender == owner
    return stor4.length
}

function owner() {
    return owner
}

function sub_a2e5b2ed(?) {
    return sub_a2e5b2ed
}

function state() {
    require state <= 2
    return state
}

function sub_db4980d9(?) {
    return sub_db4980d9[address(arg1)]
}

function depositsOf(address arg1) {
    return depositsOf[address(arg1)]
}

function refundees(address arg1) {
    return bool(uint8(refundees[arg1].field_0)), refundees[arg1].field_256
}

function _fallback() payable {
    revert
}

function withdrawalAllowed(address arg1) {
    require state <= 2
    return (state == 1)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function close() {
    require msg.sender == owner
    require state <= 2
    require not state
    state = 2
    emit Closed()
}

function enableRefunds() {
    require msg.sender == owner
    require state <= 2
    require not state
    state = 1
    emit RefundsEnabled()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function deposit(address arg1) payable {
    require msg.value + sub_db4980d9[address(arg1)] >= sub_db4980d9[address(arg1)]
    sub_db4980d9[address(arg1)] += msg.value
    require msg.value + sub_32ada1dd >= sub_32ada1dd
    sub_32ada1dd += msg.value
}

function beneficiaryWithdraw() {
    require state <= 2
    require state == 2
    call beneficiaryAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_2e336644(?) {
    require msg.sender == owner
    require eth.balance(this.address) <= sub_32ada1dd
    sub_32ada1dd -= eth.balance(this.address)
    call beneficiaryAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_df31027a(?) {
    require msg.sender == owner
    if arg1 > eth.balance(this.address):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Withdraw part can not be more than current balance'
    require arg1 <= sub_32ada1dd
    sub_32ada1dd -= arg1
    call beneficiaryAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function depositFunds(address arg1, uint256 arg2) {
    require msg.sender == owner
    require state <= 2
    if state:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Funds deposition is possible only in the Active state.'
    require arg2 + depositsOf[address(arg1)] >= depositsOf[address(arg1)]
    depositsOf[address(arg1)] += arg2
    require arg2 + sub_a2e5b2ed >= sub_a2e5b2ed
    sub_a2e5b2ed += arg2
    emit Deposited(arg2, arg1);
    uint8(refundees[address(arg1)].field_0) = 0
    if not refundees[address(arg1)].field_256:
        stor4.length++
        address(stor4[stor4.length]) = arg1
        require 1 <= stor4.length
        refundees[address(arg1)].field_256 = stor4.length - 1
}

function sub_0d0b658a(?) {
    require msg.sender == owner
    if depositsOf[address(arg1)] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'An investor should have non-negative deposit for withdrawal.'
    if uint8(refundees[address(arg1)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'An investor should not be refunded.'
    depositsOf[address(arg1)] = 0
    uint8(refundees[address(arg1)].field_0) = 1
    if 0 < stor4.length:
        if refundees[address(arg1)].field_256 < stor4.length:
            require 1 <= stor4.length
            require stor4.length - 1 < stor4.length
            require refundees[address(arg1)].field_256 < stor4.length
            address(stor4[stor3[address(arg1)].field_256]) = address(stor4[stor4.length])
            stor4.length--
            if stor4.length > stor4.length - 1:
                idx = stor4.length - 1
                while stor4.length > idx:
                    uint256(stor4[idx]) = 0
                    idx = idx + 1
                    continue 
}

function withdraw(address arg1) {
    require msg.sender == owner
    require state <= 2
    if state != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Funds withdrawal is possible only in the Refunding state.'
    if depositsOf[address(arg1)] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'An investor should have non-negative deposit for withdrawal.'
    if uint8(refundees[address(arg1)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'An investor should not be refunded.'
    require depositsOf[address(arg1)] <= eth.balance(this.address)
    depositsOf[address(arg1)] = 0
    require depositsOf[address(arg1)] <= sub_a2e5b2ed
    sub_a2e5b2ed -= depositsOf[address(arg1)]
    call arg1 with:
       value depositsOf[address(arg1)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Withdrawn(depositsOf[address(arg1)], arg1);
    uint8(refundees[address(arg1)].field_0) = 1
    if 0 < stor4.length:
        if refundees[address(arg1)].field_256 < stor4.length:
            require 1 <= stor4.length
            require stor4.length - 1 < stor4.length
            require refundees[address(arg1)].field_256 < stor4.length
            address(stor4[stor3[address(arg1)].field_256]) = address(stor4[stor4.length])
            stor4.length--
            if stor4.length > stor4.length - 1:
                idx = stor4.length - 1
                while stor4.length > idx:
                    uint256(stor4[idx]) = 0
                    idx = idx + 1
                    continue 
}

function withdrawChunk(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    require state <= 2
    if state != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Funds withdrawal is possible only in the Refunding state.'
    require arg2 >= stor4.length
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transaction fee should be above zero.'
    if stor4.length <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'List of investors should not be empty.'
    if not arg2:
        if eth.balance(this.address) <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Account's ballance should allow to pay all tx fees.'
    else:
        require arg1 * arg2 / arg2 == arg1
        if eth.balance(this.address) <= arg1 * arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Account's ballance should allow to pay all tx fees.'
    if arg2:
        mem[128 len 32 * arg2] = code.data[5682 len 32 * arg2]
    s = 0
    t = 0
    u = 0
    u = 0
    idx = 0
    u = 0
    while idx < arg2:
        require idx < stor4.length
        mem[0] = address(stor4[idx])
        mem[32] = 3
        if uint8(refundees[address(stor4[idx])].field_0):
            s = s
            t = t
            u = sha3(address(stor4[idx]), 3)
            u = address(stor4[idx])
            idx = idx + 1
            u = u
            continue 
        mem[0] = address(stor4[idx])
        mem[32] = 5
        if depositsOf[address(stor4[idx])] <= arg1:
            s = s
            t = t
            u = sha3(address(stor4[idx]), 3)
            u = address(stor4[idx])
            idx = idx + 1
            u = u
            continue 
        mem[0] = address(stor4[idx])
        mem[32] = 5
        if depositsOf[address(stor4[idx])] <= arg1:
            s = s
            t = depositsOf[address(stor4[idx])]
            u = sha3(address(stor4[idx]), 3)
            u = address(stor4[idx])
            idx = idx + 1
            u = u
            continue 
        require depositsOf[address(stor4[idx])] + u >= u
        require arg1 <= depositsOf[address(stor4[idx])]
        call address(stor4[idx]) with:
           value depositsOf[address(stor4[idx])] - arg1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * arg2) + 128] = depositsOf[address(stor4[idx])] - arg1
        emit Withdrawn((depositsOf[address(stor4[idx])] - arg1), address(stor4[idx]));
        uint8(refundees[address(stor4[idx])].field_0) = 1
        require idx < arg2
        mem[(32 * idx) + 128] = address(stor4[idx])
        s = depositsOf[address(stor4[idx])] - arg1
        t = depositsOf[address(stor4[idx])]
        u = sha3(address(stor4[idx]), 3)
        u = address(stor4[idx])
        idx = idx + 1
        u = depositsOf[address(stor4[idx])] + u
        continue 
    s = 0
    idx = 0
    while idx < arg2:
        require idx < arg2
        if not mem[(32 * idx) + 140 len 20]:
            s = s
            idx = idx + 1
            continue 
        require idx < arg2
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 3
        if bool(uint8(refundees[mem[(32 * idx) + 140 len 20]].field_0)) != 1:
            revert with 0, 'Investors in this list should be refunded.'
        if 0 < stor4.length:
            if refundees[mem[(32 * idx) + 140 len 20]].field_256 < stor4.length:
                require 1 <= stor4.length
                require stor4.length - 1 < stor4.length
                require refundees[mem[(32 * idx) + 140 len 20]].field_256 < stor4.length
                mem[0] = 4
                address(stor4[stor3[mem[(32 * idx) + 140 len 20]].field_256]) = address(stor4[stor4.length])
                stor4.length--
                if stor4.length > stor4.length - 1:
                    mem[0] = 4
                    s = stor4.length + sha3(4) - 1
                    while sha3(4) + stor4.length > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
        s = sha3(mem[(32 * idx) + 140 len 20], 3)
        idx = idx + 1
        continue 
    mem[(32 * arg2) + 224 len floor32(arg2)] = mem[128 len floor32(arg2)]
    return u, 
           Array(len=arg2, data=mem[128 len floor32(arg2)], mem[(32 * arg2) + floor32(arg2) + 224 len (32 * arg2) - floor32(arg2)])
}

function withdrawEverything(uint256 arg1) {
    require msg.sender == owner
    require state <= 2
    if state != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Funds withdrawal is possible only in the Refunding state.'
    require msg.sender == owner
    require state <= 2
    if state != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Funds withdrawal is possible only in the Refunding state.'
    require stor4.length >= stor4.length
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transaction fee should be above zero.'
    if stor4.length <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'List of investors should not be empty.'
    if not stor4.length:
        if eth.balance(this.address) <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Account's ballance should allow to pay all tx fees.'
    else:
        require arg1 * stor4.length / stor4.length == arg1
        if eth.balance(this.address) <= arg1 * stor4.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Account's ballance should allow to pay all tx fees.'
    if stor4.length:
        mem[128 len 32 * stor4.length] = code.data[5682 len 32 * stor4.length]
    s = 0
    t = 0
    u = 0
    u = 0
    idx = 0
    u = 0
    while idx < stor4.length:
        mem[0] = address(stor4[idx])
        mem[32] = 3
        if uint8(refundees[address(stor4[idx])].field_0):
            s = s
            t = t
            u = sha3(address(stor4[idx]), 3)
            u = address(stor4[idx])
            idx = idx + 1
            u = u
            continue 
        mem[0] = address(stor4[idx])
        mem[32] = 5
        if depositsOf[address(stor4[idx])] <= arg1:
            s = s
            t = t
            u = sha3(address(stor4[idx]), 3)
            u = address(stor4[idx])
            idx = idx + 1
            u = u
            continue 
        mem[0] = address(stor4[idx])
        mem[32] = 5
        if depositsOf[address(stor4[idx])] <= arg1:
            s = s
            t = depositsOf[address(stor4[idx])]
            u = sha3(address(stor4[idx]), 3)
            u = address(stor4[idx])
            idx = idx + 1
            u = u
            continue 
        require depositsOf[address(stor4[idx])] + u >= u
        require arg1 <= depositsOf[address(stor4[idx])]
        call address(stor4[idx]) with:
           value depositsOf[address(stor4[idx])] - arg1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * stor4.length) + 128] = depositsOf[address(stor4[idx])] - arg1
        emit Withdrawn((depositsOf[address(stor4[idx])] - arg1), address(stor4[idx]));
        uint8(refundees[address(stor4[idx])].field_0) = 1
        require idx < stor4.length
        mem[(32 * idx) + 128] = address(stor4[idx])
        s = depositsOf[address(stor4[idx])] - arg1
        t = depositsOf[address(stor4[idx])]
        u = sha3(address(stor4[idx]), 3)
        u = address(stor4[idx])
        idx = idx + 1
        u = depositsOf[address(stor4[idx])] + u
        continue 
    s = 0
    idx = 0
    while idx < stor4.length:
        require idx < stor4.length
        if not mem[(32 * idx) + 140 len 20]:
            s = s
            idx = idx + 1
            continue 
        require idx < stor4.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 3
        if bool(uint8(refundees[mem[(32 * idx) + 140 len 20]].field_0)) != 1:
            revert with 0, 'Investors in this list should be refunded.'
        if 0 < stor4.length:
            if refundees[mem[(32 * idx) + 140 len 20]].field_256 < stor4.length:
                require 1 <= stor4.length
                require stor4.length - 1 < stor4.length
                require refundees[mem[(32 * idx) + 140 len 20]].field_256 < stor4.length
                mem[0] = 4
                address(stor4[stor3[mem[(32 * idx) + 140 len 20]].field_256]) = address(stor4[stor4.length])
                stor4.length--
                if stor4.length > stor4.length - 1:
                    mem[0] = 4
                    s = stor4.length + sha3(4) - 1
                    while sha3(4) + stor4.length > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
        s = sha3(mem[(32 * idx) + 140 len 20], 3)
        idx = idx + 1
        continue 
    mem[(32 * stor4.length) + 224 len floor32(stor4.length)] = mem[128 len floor32(stor4.length)]
    return u, 
           Array(len=stor4.length, data=mem[128 len floor32(stor4.length)], mem[(32 * stor4.length) + floor32(stor4.length) + 224 len (32 * stor4.length) - floor32(stor4.length)])
}



}
