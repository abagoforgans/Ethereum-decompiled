contract main {


// =======================  Init code  ======================


uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
uint256 stor4;
uint256 stor5;
address stor6;

function _fallback() payable {
    stor1 = 75 * 3600
    bool(stor2.length) = 0
    stor2.length.field_1 = 7
    stor2.length.field_8 = 'snkCoin' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor3.length) = 0
    stor3.length.field_1 = 4
    stor3.length.field_8 = 'SNKC' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 226
    stor5 = 10
    require not msg.value
    stor6 = msg.sender
    require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
    delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0x3f94d1b0 with:
         gas gas_remaining - 710 wei
        args 9, stor6, stor1
    require delegate.return_code
    return code.data[695 len 10038]
}



// =====================  Runtime code  =====================


uint8 stor0;
uint256 totalSupply;
mapping of uint256 allowance;
mapping of uint256 approvedDividendsOf;
array of uint8 stor14;
uint256 stor4;
uint256 stor5;
address stor6;
uint256 stor7;
uint256 stor8;

function totalSupply() {
    return totalSupply
}

function approvedDividendsOf(address arg1) {
    return approvedDividendsOf[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function lock() {
    stor0 = 1
    emit Locked()
}

function unlock() {
    stor0 = 0
    emit Unlocked()
}

function setCurrentExchangeRate(uint256 arg1) {
    if msg.sender == stor6:
        stor4 = arg1
}

function sub_475dfdc8(?) {
    if msg.sender == stor6:
        stor8 = arg1
        stor7 = block.timestamp
}

function withdraw(uint256 arg1) {
    if msg.sender == stor6:
        call stor6 with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function balanceOf(address arg1) {
    if stor0:
        return 0
    require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
    delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0xf5b79462 with:
         gas gas_remaining - 710 wei
        args 9, arg1
    require delegate.return_code
    return delegate.return_data[0]
}

function approve(address arg1, uint256 arg2) {
    if stor0:
        return 0
    require arg2
    require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
    delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0xf5b79462 with:
         gas gas_remaining - 710 wei
        args 9, msg.sender
    require delegate.return_code
    require delegate.return_data[0] >= arg2
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_cf78fcc4(?) {
    mem[132] = 9
    mem[164] = msg.sender
    require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
    delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0xcbb69492 with:
         gas gas_remaining - 710 wei
        args 9, msg.sender
    require delegate.return_code
    if not delegate.return_data[0]:
        return ''
    if not uint256(stor14[address(msg.sender)]):
        mem[(32 * uint256(stor14[address(msg.sender)])) + 160] = 32
        mem[(32 * uint256(stor14[address(msg.sender)])) + 192] = uint256(stor14[address(msg.sender)])
        mem[(32 * uint256(stor14[address(msg.sender)])) + 224 len floor32(uint256(stor14[address(msg.sender)]))] = mem[160 len floor32(uint256(stor14[address(msg.sender)]))]
        return memory
          from (32 * uint256(stor14[address(msg.sender)])) + 160
           len (96 * uint256(stor14[address(msg.sender)])) + 64
    mem[160] = bool(uint8(stor14[address(msg.sender)]))
    idx = 160
    s = 0
    while (32 * uint256(stor14[address(msg.sender)])) + 128 > idx:
        mem[idx + 32] = bool(stor('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor14', 14))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1])
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    mem[(32 * uint256(stor14[address(msg.sender)])) + 224 len floor32(uint256(stor14[address(msg.sender)]))] = mem[160 len floor32(uint256(stor14[address(msg.sender)]))]
    return Array(len=uint256(stor14[address(msg.sender)]), data=mem[160 len floor32(uint256(stor14[address(msg.sender)]))], mem[(32 * uint256(stor14[address(msg.sender)])) + floor32(uint256(stor14[address(msg.sender)])) + 224 len (32 * uint256(stor14[address(msg.sender)])) - floor32(uint256(stor14[address(msg.sender)]))]), 
}

function sub_523d5322(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
    delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0xcbb69492 with:
         gas gas_remaining - 710 wei
        args 9, msg.sender
    mem[(32 * arg1.length) + 128] = delegate.return_data[0]
    require delegate.return_code
    if delegate.return_data[0]:
        if stor8:
            require stor8
            require 24 * 3600 * stor8 / stor8 == 24 * 3600
        require stor7 + (24 * 3600 * stor8) >= stor7
        if block.timestamp <= stor7 + (24 * 3600 * stor8):
            uint256(stor14[address(msg.sender)]) = arg1.length
            if not arg1.length:
                idx = 0
                while uint256(stor14[address(msg.sender)]) + 31 / 32 > idx:
                    uint8(stor14[address(msg.sender)][idx]) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 128
                while (32 * arg1.length) + 128 > idx:
                    uint256(stor14[address(msg.sender)]) = bool(mem[idx]) * 256^s or !(255 * 256^s) and uint256(stor14[address(msg.sender)])
                    s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
                s = sha3(sha3(address(msg.sender), 14))
                while idx:
                    stor[s] = !(255 * 256^idx) and stor[s]
                    idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                    s = (idx + 1 / 32) + s
                    continue 
                idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg1.length) + 31) >> 5 * None + 3 / 32)
                while uint256(stor14[address(msg.sender)]) + 31 / 32 > idx:
                    uint8(stor14[address(msg.sender)][idx]) = 0
                    idx = idx + 1
                    continue 
}

function transfer(address arg1, uint256 arg2) {
    if stor0:
        return 0
    require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
    delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0xf5b79462 with:
         gas gas_remaining - 710 wei
        args 9, msg.sender
    require delegate.return_code
    if delegate.return_data[0] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
    delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0xf5b79462 with:
         gas gas_remaining - 710 wei
        args 9, msg.sender
    require delegate.return_code
    require arg2 <= delegate.return_data[0]
    require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
    delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0x3f94d1b0 with:
         gas gas_remaining - 710 wei
        args 9, msg.sender, delegate.return_data[0] - arg2
    require delegate.return_code
    require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
    delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0xcbb69492 with:
         gas gas_remaining - 710 wei
        args 9, arg1
    require delegate.return_code
    require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
    if not delegate.return_data[0]:
        delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0x3f94d1b0 with:
             gas gas_remaining - 710 wei
            args 9, address(arg1), arg2
    else:
        delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0xf5b79462 with:
             gas gas_remaining - 710 wei
            args 9, arg1
        require delegate.return_code
        require delegate.return_data[0] + arg2 >= delegate.return_data[0]
        require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
        delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0x3f94d1b0 with:
             gas gas_remaining - 710 wei
            args 9, address(arg1), delegate.return_data[0] + arg2
    require delegate.return_code
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if stor0:
        return 0
    require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
    delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0xf5b79462 with:
         gas gas_remaining - 710 wei
        args 9, arg1
    require delegate.return_code
    if delegate.return_data[0] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
    delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0xcbb69492 with:
         gas gas_remaining - 710 wei
        args 9, arg2
    require delegate.return_code
    require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
    if not delegate.return_data[0]:
        delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0x3f94d1b0 with:
             gas gas_remaining - 710 wei
            args 9, address(arg2), arg3
    else:
        delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0xf5b79462 with:
             gas gas_remaining - 710 wei
            args 9, arg2
        require delegate.return_code
        require arg3 + delegate.return_data[0] >= arg3
        require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
        delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0x3f94d1b0 with:
             gas gas_remaining - 710 wei
            args 9, address(arg2), arg3 + delegate.return_data[0]
    require delegate.return_code
    require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
    delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0xf5b79462 with:
         gas gas_remaining - 710 wei
        args 9, arg1
    require delegate.return_code
    require arg3 <= delegate.return_data[0]
    require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
    delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0x3f94d1b0 with:
         gas gas_remaining - 710 wei
        args 9, address(arg1), delegate.return_data[0] - arg3
    require delegate.return_code
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transferAllDividends() payable {
    mem[64] = 96
    require not msg.value
    if msg.sender == stor6:
        require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
        delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0x49027dc5 with:
             gas gas_remaining - 710 wei
            args 9
        require delegate.return_code
        mem[96] = 0x8169bc0600000000000000000000000000000000000000000000000000000000
        mem[100] = 9
        mem[132] = var18002
        require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
        delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.mem[var20002 len 4] with:
             gas gas_remaining - 710 wei
            args mem[var20002 + 4 len var20003 - 4]
        mem[var20004] = delegate.return_data[0]
        require delegate.return_code
        mem[96] = 0x1ad0c0f600000000000000000000000000000000000000000000000000000000
        mem[100] = 9
        mem[132] = var24002
        require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
        delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.mem[var26002 len 4] with:
             gas gas_remaining - 710 wei
            args mem[var26002 + 4 len var26003 - 4]
        require delegate.return_code
        require approvedDividendsOf[0] >= 0
        call 0x0 with:
           value approvedDividendsOf[0] wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        approvedDividendsOf[0] = 0
        require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
        delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0x37756462 with:
             gas gas_remaining - 710 wei
            args 9, var28005
        require delegate.return_code
        require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
        delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0x8169bc06 with:
             gas gas_remaining - 710 wei
            args 9, delegate.return_data[0]
        require delegate.return_code
        s = 0x1ad0c0f600000000000000000000000000000000000000000000000000000000
        s = var28005
        while delegate.return_data[0]:
            require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
            delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0x1ad0c0f6 with:
                 gas gas_remaining - 710 wei
                args 9, delegate.return_data[0]
            require delegate.return_code
            require approvedDividendsOf[address(delegate.return_data[0])] >= 0
            call address(delegate.return_data[0]) with:
               value approvedDividendsOf[address(delegate.return_data[0])] wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            mem[0] = address(delegate.return_data[0])
            mem[32] = 13
            approvedDividendsOf[address(delegate.return_data[0])] = 0
            require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
            delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0x37756462 with:
                 gas gas_remaining - 710 wei
                args 9, delegate.return_data[0]
            require delegate.return_code
            mem[100] = 9
            mem[132] = delegate.return_data[0]
            require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
            delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0x8169bc06 with:
                 gas gas_remaining - 710 wei
                args 9, delegate.return_data[0]
            mem[96] = delegate.return_data[0]
            require delegate.return_code
            s = delegate.return_data[0]
            s = delegate.return_data[0]
            continue 
}

function sub_023b50cc(?) payable {
    if not stor0:
        if msg.value:
            require msg.value
            require msg.value * stor4 / msg.value == stor4
        require msg.value * stor4 == (10^18 * msg.value * stor4 / 10^18) + (msg.value * stor4 % 10^18)
        require stor5 > 0
        require stor5
        require msg.value * stor4 / 10^18 == (stor5 * msg.value * stor4 / 10^18 / stor5) + (msg.value * stor4 / 10^18 % stor5)
        require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
        delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0xf5b79462 with:
             gas gas_remaining - 710 wei
            args 9, stor6
        require delegate.return_code
        require delegate.return_data[0] >= msg.value * stor4 / 10^18 / stor5
        allowance[stor6][address(msg.sender)] = msg.value * stor4 / 10^18 / stor5
        emit Approval((msg.value * stor4 / 10^18 / stor5), stor6, msg.sender);
        if not stor0:
            require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
            delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0xf5b79462 with:
                 gas gas_remaining - 710 wei
                args 9, stor6
            require delegate.return_code
            if delegate.return_data[0] >= msg.value * stor4 / 10^18 / stor5:
                if allowance[stor6][address(msg.sender)] >= msg.value * stor4 / 10^18 / stor5:
                    if msg.value * stor4 / 10^18 / stor5 > 0:
                        require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
                        delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0xcbb69492 with:
                             gas gas_remaining - 710 wei
                            args 9, msg.sender
                        require delegate.return_code
                        require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
                        if not delegate.return_data[0]:
                            delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0x3f94d1b0 with:
                                 gas gas_remaining - 710 wei
                                args 9, msg.sender, msg.value * stor4 / 10^18 / stor5
                        else:
                            delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0xf5b79462 with:
                                 gas gas_remaining - 710 wei
                                args 9, msg.sender
                            require delegate.return_code
                            require (msg.value * stor4 / 10^18 / stor5) + delegate.return_data[0] >= msg.value * stor4 / 10^18 / stor5
                            require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
                            delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0x3f94d1b0 with:
                                 gas gas_remaining - 710 wei
                                args 9, msg.sender, (msg.value * stor4 / 10^18 / stor5) + delegate.return_data[0]
                        require delegate.return_code
                        require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
                        delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0xf5b79462 with:
                             gas gas_remaining - 710 wei
                            args 9, stor6
                        require delegate.return_code
                        require msg.value * stor4 / 10^18 / stor5 <= delegate.return_data[0]
                        require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
                        delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0x3f94d1b0 with:
                             gas gas_remaining - 710 wei
                            args 9, stor6, delegate.return_data[0] - (msg.value * stor4 / 10^18 / stor5)
                        require delegate.return_code
                        require msg.value * stor4 / 10^18 / stor5 <= allowance[stor6][address(msg.sender)]
                        allowance[stor6][address(msg.sender)] -= msg.value * stor4 / 10^18 / stor5
                        emit Transfer((msg.value * stor4 / 10^18 / stor5), stor6, msg.sender);
}

function approveDividends(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    if not stor0:
        if msg.sender == stor6:
            if not arg1:
                require totalSupply > 0
                require totalSupply
                require 10^18 * arg1 == (totalSupply * 10^18 * arg1 / totalSupply) + (10^18 * arg1 % totalSupply)
                stor0 = 1
                emit Locked()
                require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
                delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0x49027dc5 with:
                     gas gas_remaining - 710 wei
                    args 9
                require delegate.return_code
                mem[96] = 0x8169bc0600000000000000000000000000000000000000000000000000000000
                mem[100] = 9
                mem[132] = var53002
                require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
                delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.mem[var55002 len 4] with:
                     gas gas_remaining - 710 wei
                    args mem[var55002 + 4 len var55003 - 4]
                mem[var55004] = delegate.return_data[0]
                require delegate.return_code
                mem[96] = 0x1ad0c0f600000000000000000000000000000000000000000000000000000000
                mem[100] = 9
                mem[132] = var59002
                require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
                delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.mem[var61002 len 4] with:
                     gas gas_remaining - 710 wei
                    args mem[var61002 + 4 len var61003 - 4]
                mem[var61004] = delegate.return_data[0]
                require delegate.return_code
                mem[96] = 0xf5b7946200000000000000000000000000000000000000000000000000000000
                mem[100] = 9
                mem[132] = 0
                require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
                delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.mem[var65002 len 4] with:
                     gas gas_remaining - 710 wei
                    args mem[var65002 + 4 len var65003 - 4]
                require delegate.return_code
                if not var69002:
                    require not var69002
                    approvedDividendsOf[address(var69004)] = var69002 * 10^18 * arg1 / totalSupply
                    require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
                    delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0x37756462 with:
                         gas gas_remaining - 710 wei
                        args 9, var69005
                    require delegate.return_code
                    require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
                    delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0x8169bc06 with:
                         gas gas_remaining - 710 wei
                        args 9, delegate.return_data[0]
                    require delegate.return_code
                    s = not var69002
                    s = var69002 * 10^18 * arg1 / totalSupply
                    s = var69002
                    s = var69004
                    s = var69005
                    while delegate.return_data[0]:
                        require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
                        delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0x1ad0c0f6 with:
                             gas gas_remaining - 710 wei
                            args 9, delegate.return_data[0]
                        require delegate.return_code
                        require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
                        delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0xf5b79462 with:
                             gas gas_remaining - 710 wei
                            args 9, address(delegate.return_data[0])
                        require delegate.return_code
                        if not delegate.return_data[0]:
                            require not delegate.return_data[0]
                            mem[0] = address(delegate.return_data[0])
                            mem[32] = 13
                            approvedDividendsOf[address(delegate.return_data[0])] = delegate.return_data[0] * 10^18 * arg1 / totalSupply
                            require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
                            delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0x37756462 with:
                                 gas gas_remaining - 710 wei
                                args 9, delegate.return_data[0]
                            require delegate.return_code
                            mem[100] = 9
                            mem[132] = delegate.return_data[0]
                            require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
                            delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0x8169bc06 with:
                                 gas gas_remaining - 710 wei
                                args 9, delegate.return_data[0]
                            mem[96] = delegate.return_data[0]
                            require delegate.return_code
                            s = not delegate.return_data[0]
                            s = delegate.return_data[0] * 10^18 * arg1 / totalSupply
                            s = delegate.return_data[0]
                            s = delegate.return_data[0]
                            s = delegate.return_data[0]
                            continue 
                        require delegate.return_data[0]
                        require delegate.return_data[0] * 10^18 * arg1 / totalSupply / delegate.return_data[0] == 10^18 * arg1 / totalSupply
                        mem[0] = address(delegate.return_data[0])
                        mem[32] = 13
                        approvedDividendsOf[address(delegate.return_data[0])] = delegate.return_data[0] * 10^18 * arg1 / totalSupply
                        require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
                        delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0x37756462 with:
                             gas gas_remaining - 710 wei
                            args 9, delegate.return_data[0]
                        require delegate.return_code
                        mem[100] = 9
                        mem[132] = delegate.return_data[0]
                        require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
                        delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0x8169bc06 with:
                             gas gas_remaining - 710 wei
                            args 9, delegate.return_data[0]
                        mem[96] = delegate.return_data[0]
                        require delegate.return_code
                        s = delegate.return_data[0] * 10^18 * arg1 / totalSupply / delegate.return_data[0] == 10^18 * arg1 / totalSupply
                        s = delegate.return_data[0] * 10^18 * arg1 / totalSupply
                        s = delegate.return_data[0]
                        s = delegate.return_data[0]
                        s = delegate.return_data[0]
                        continue 
                else:
                    require var71006
                    require var73001 / var73002 == 10^18 * arg1 / totalSupply
                    approvedDividendsOf[address(var73010)] = var73005
                    require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
                    delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0x37756462 with:
                         gas gas_remaining - 710 wei
                        args 9, var73011
                    require delegate.return_code
                    require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
                    delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0x8169bc06 with:
                         gas gas_remaining - 710 wei
                        args 9, delegate.return_data[0]
                    require delegate.return_code
                    s = var73001 / var73002 == 10^18 * arg1 / totalSupply
                    s = var73005
                    s = var73008
                    s = var73010
                    s = var73011
                    while delegate.return_data[0]:
                        require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
                        delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0x1ad0c0f6 with:
                             gas gas_remaining - 710 wei
                            args 9, delegate.return_data[0]
                        require delegate.return_code
                        require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
                        delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0xf5b79462 with:
                             gas gas_remaining - 710 wei
                            args 9, address(delegate.return_data[0])
                        require delegate.return_code
                        if not delegate.return_data[0]:
                            require not delegate.return_data[0]
                            mem[0] = address(delegate.return_data[0])
                            mem[32] = 13
                            approvedDividendsOf[address(delegate.return_data[0])] = delegate.return_data[0] * 10^18 * arg1 / totalSupply
                            require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
                            delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0x37756462 with:
                                 gas gas_remaining - 710 wei
                                args 9, delegate.return_data[0]
                            require delegate.return_code
                            mem[100] = 9
                            mem[132] = delegate.return_data[0]
                            require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
                            delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0x8169bc06 with:
                                 gas gas_remaining - 710 wei
                                args 9, delegate.return_data[0]
                            mem[96] = delegate.return_data[0]
                            require delegate.return_code
                            s = not delegate.return_data[0]
                            s = delegate.return_data[0] * 10^18 * arg1 / totalSupply
                            s = delegate.return_data[0]
                            s = delegate.return_data[0]
                            s = delegate.return_data[0]
                            continue 
                        require delegate.return_data[0]
                        require delegate.return_data[0] * 10^18 * arg1 / totalSupply / delegate.return_data[0] == 10^18 * arg1 / totalSupply
                        mem[0] = address(delegate.return_data[0])
                        mem[32] = 13
                        approvedDividendsOf[address(delegate.return_data[0])] = delegate.return_data[0] * 10^18 * arg1 / totalSupply
                        require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
                        delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0x37756462 with:
                             gas gas_remaining - 710 wei
                            args 9, delegate.return_data[0]
                        require delegate.return_code
                        mem[100] = 9
                        mem[132] = delegate.return_data[0]
                        require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
                        delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0x8169bc06 with:
                             gas gas_remaining - 710 wei
                            args 9, delegate.return_data[0]
                        mem[96] = delegate.return_data[0]
                        require delegate.return_code
                        s = delegate.return_data[0] * 10^18 * arg1 / totalSupply / delegate.return_data[0] == 10^18 * arg1 / totalSupply
                        s = delegate.return_data[0] * 10^18 * arg1 / totalSupply
                        s = delegate.return_data[0]
                        s = delegate.return_data[0]
                        s = delegate.return_data[0]
                        continue 
            else:
                require arg1
                require 10^18 * arg1 / arg1 == 10^18
                require totalSupply > 0
                require totalSupply
                require 10^18 * arg1 == (totalSupply * 10^18 * arg1 / totalSupply) + (10^18 * arg1 % totalSupply)
                stor0 = 1
                emit Locked()
                require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
                delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0x49027dc5 with:
                     gas gas_remaining - 710 wei
                    args 9
                require delegate.return_code
                mem[96] = 0x8169bc0600000000000000000000000000000000000000000000000000000000
                mem[100] = 9
                mem[132] = var55002
                require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
                delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.mem[var57002 len 4] with:
                     gas gas_remaining - 710 wei
                    args mem[var57002 + 4 len var57003 - 4]
                mem[var57004] = delegate.return_data[0]
                require delegate.return_code
                mem[96] = 0x1ad0c0f600000000000000000000000000000000000000000000000000000000
                mem[100] = 9
                mem[132] = var61002
                require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
                delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.mem[var63002 len 4] with:
                     gas gas_remaining - 710 wei
                    args mem[var63002 + 4 len var63003 - 4]
                mem[var63004] = delegate.return_data[0]
                require delegate.return_code
                mem[96] = 0xf5b7946200000000000000000000000000000000000000000000000000000000
                mem[100] = 9
                mem[132] = 0
                require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
                delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.mem[var67002 len 4] with:
                     gas gas_remaining - 710 wei
                    args mem[var67002 + 4 len var67003 - 4]
                require delegate.return_code
                if not var71002:
                    require not var71002
                    approvedDividendsOf[address(var71004)] = var71002 * 10^18 * arg1 / totalSupply
                    require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
                    delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0x37756462 with:
                         gas gas_remaining - 710 wei
                        args 9, var71005
                    require delegate.return_code
                    require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
                    delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0x8169bc06 with:
                         gas gas_remaining - 710 wei
                        args 9, delegate.return_data[0]
                    require delegate.return_code
                    s = not var71002
                    s = var71002 * 10^18 * arg1 / totalSupply
                    s = var71002
                    s = var71004
                    s = var71005
                    while delegate.return_data[0]:
                        require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
                        delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0x1ad0c0f6 with:
                             gas gas_remaining - 710 wei
                            args 9, delegate.return_data[0]
                        require delegate.return_code
                        require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
                        delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0xf5b79462 with:
                             gas gas_remaining - 710 wei
                            args 9, address(delegate.return_data[0])
                        require delegate.return_code
                        if not delegate.return_data[0]:
                            require not delegate.return_data[0]
                            mem[0] = address(delegate.return_data[0])
                            mem[32] = 13
                            approvedDividendsOf[address(delegate.return_data[0])] = delegate.return_data[0] * 10^18 * arg1 / totalSupply
                            require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
                            delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0x37756462 with:
                                 gas gas_remaining - 710 wei
                                args 9, delegate.return_data[0]
                            require delegate.return_code
                            mem[100] = 9
                            mem[132] = delegate.return_data[0]
                            require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
                            delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0x8169bc06 with:
                                 gas gas_remaining - 710 wei
                                args 9, delegate.return_data[0]
                            mem[96] = delegate.return_data[0]
                            require delegate.return_code
                            s = not delegate.return_data[0]
                            s = delegate.return_data[0] * 10^18 * arg1 / totalSupply
                            s = delegate.return_data[0]
                            s = delegate.return_data[0]
                            s = delegate.return_data[0]
                            continue 
                        require delegate.return_data[0]
                        require delegate.return_data[0] * 10^18 * arg1 / totalSupply / delegate.return_data[0] == 10^18 * arg1 / totalSupply
                        mem[0] = address(delegate.return_data[0])
                        mem[32] = 13
                        approvedDividendsOf[address(delegate.return_data[0])] = delegate.return_data[0] * 10^18 * arg1 / totalSupply
                        require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
                        delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0x37756462 with:
                             gas gas_remaining - 710 wei
                            args 9, delegate.return_data[0]
                        require delegate.return_code
                        mem[100] = 9
                        mem[132] = delegate.return_data[0]
                        require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
                        delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0x8169bc06 with:
                             gas gas_remaining - 710 wei
                            args 9, delegate.return_data[0]
                        mem[96] = delegate.return_data[0]
                        require delegate.return_code
                        s = delegate.return_data[0] * 10^18 * arg1 / totalSupply / delegate.return_data[0] == 10^18 * arg1 / totalSupply
                        s = delegate.return_data[0] * 10^18 * arg1 / totalSupply
                        s = delegate.return_data[0]
                        s = delegate.return_data[0]
                        s = delegate.return_data[0]
                        continue 
                else:
                    require var73006
                    require var75001 / var75002 == 10^18 * arg1 / totalSupply
                    approvedDividendsOf[address(var75010)] = var75005
                    require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
                    delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0x37756462 with:
                         gas gas_remaining - 710 wei
                        args 9, var75011
                    require delegate.return_code
                    require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
                    delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0x8169bc06 with:
                         gas gas_remaining - 710 wei
                        args 9, delegate.return_data[0]
                    require delegate.return_code
                    s = var75001 / var75002 == 10^18 * arg1 / totalSupply
                    s = var75005
                    s = var75008
                    s = var75010
                    s = var75011
                    while delegate.return_data[0]:
                        require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
                        delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0x1ad0c0f6 with:
                             gas gas_remaining - 710 wei
                            args 9, delegate.return_data[0]
                        require delegate.return_code
                        require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
                        delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0xf5b79462 with:
                             gas gas_remaining - 710 wei
                            args 9, address(delegate.return_data[0])
                        require delegate.return_code
                        if not delegate.return_data[0]:
                            require not delegate.return_data[0]
                            mem[0] = address(delegate.return_data[0])
                            mem[32] = 13
                            approvedDividendsOf[address(delegate.return_data[0])] = delegate.return_data[0] * 10^18 * arg1 / totalSupply
                            require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
                            delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0x37756462 with:
                                 gas gas_remaining - 710 wei
                                args 9, delegate.return_data[0]
                            require delegate.return_code
                            mem[100] = 9
                            mem[132] = delegate.return_data[0]
                            require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
                            delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0x8169bc06 with:
                                 gas gas_remaining - 710 wei
                                args 9, delegate.return_data[0]
                            mem[96] = delegate.return_data[0]
                            require delegate.return_code
                            s = not delegate.return_data[0]
                            s = delegate.return_data[0] * 10^18 * arg1 / totalSupply
                            s = delegate.return_data[0]
                            s = delegate.return_data[0]
                            s = delegate.return_data[0]
                            continue 
                        require delegate.return_data[0]
                        require delegate.return_data[0] * 10^18 * arg1 / totalSupply / delegate.return_data[0] == 10^18 * arg1 / totalSupply
                        mem[0] = address(delegate.return_data[0])
                        mem[32] = 13
                        approvedDividendsOf[address(delegate.return_data[0])] = delegate.return_data[0] * 10^18 * arg1 / totalSupply
                        require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
                        delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0x37756462 with:
                             gas gas_remaining - 710 wei
                            args 9, delegate.return_data[0]
                        require delegate.return_code
                        mem[100] = 9
                        mem[132] = delegate.return_data[0]
                        require ext_code.size(0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e)
                        delegate 0xd30be5668ca06b3f6d0c52cac7057f7abd3dfa5e.0x8169bc06 with:
                             gas gas_remaining - 710 wei
                            args 9, delegate.return_data[0]
                        mem[96] = delegate.return_data[0]
                        require delegate.return_code
                        s = delegate.return_data[0] * 10^18 * arg1 / totalSupply / delegate.return_data[0] == 10^18 * arg1 / totalSupply
                        s = delegate.return_data[0] * 10^18 * arg1 / totalSupply
                        s = delegate.return_data[0]
                        s = delegate.return_data[0]
                        s = delegate.return_data[0]
                        continue 
            stor0 = 0
            emit Unlocked()
}



}
