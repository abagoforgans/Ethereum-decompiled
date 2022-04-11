contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
uint256 stor3;
uint256 stor4;
address stor5;

function _fallback() payable {
    stor0 = 75 * 3600
    bool(stor1.length) = 0
    stor1.length.field_1 = 7
    stor1.length.field_8 = 'snkCoin' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 4
    stor2.length.field_8 = 'SNKC' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = 226
    stor4 = 10
    require not msg.value
    stor5 = msg.sender
    require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
    delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0x3f94d1b0 with:
         gas gas_remaining - 710 wei
        args 8, stor5, stor0
    require delegate.return_code
    return code.data[695 len 9640]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 allowance;
mapping of uint256 approvedDividendsOf;
array of uint8 stor13;
uint256 stor3;
uint256 stor4;
address stor5;
uint256 stor6;
uint256 stor7;

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

function setCurrentExchangeRate(uint256 arg1) {
    if msg.sender == stor5:
        stor3 = arg1
}

function sub_475dfdc8(?) {
    if msg.sender == stor5:
        stor7 = arg1
        stor6 = block.timestamp
}

function withdraw(uint256 arg1) {
    if msg.sender == stor5:
        call stor5 with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function balanceOf(address arg1) {
    require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
    delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0xf5b79462 with:
         gas gas_remaining - 710 wei
        args 8, arg1
    require delegate.return_code
    return delegate.return_data[0]
}

function approve(address arg1, uint256 arg2) {
    require arg2
    require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
    delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0xf5b79462 with:
         gas gas_remaining - 710 wei
        args 8, msg.sender
    require delegate.return_code
    require delegate.return_data[0] >= arg2
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_cf78fcc4(?) {
    mem[132] = 8
    mem[164] = msg.sender
    require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
    delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0xcbb69492 with:
         gas gas_remaining - 710 wei
        args 8, msg.sender
    require delegate.return_code
    if not delegate.return_data[0]:
        return ''
    if not uint256(stor13[address(msg.sender)]):
        mem[(32 * uint256(stor13[address(msg.sender)])) + 160] = 32
        mem[(32 * uint256(stor13[address(msg.sender)])) + 192] = uint256(stor13[address(msg.sender)])
        mem[(32 * uint256(stor13[address(msg.sender)])) + 224 len floor32(uint256(stor13[address(msg.sender)]))] = mem[160 len floor32(uint256(stor13[address(msg.sender)]))]
        return memory
          from (32 * uint256(stor13[address(msg.sender)])) + 160
           len (96 * uint256(stor13[address(msg.sender)])) + 64
    mem[160] = bool(uint8(stor13[address(msg.sender)]))
    idx = 160
    s = 0
    while (32 * uint256(stor13[address(msg.sender)])) + 128 > idx:
        mem[idx + 32] = bool(stor('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor13', 13))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1])
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    mem[(32 * uint256(stor13[address(msg.sender)])) + 224 len floor32(uint256(stor13[address(msg.sender)]))] = mem[160 len floor32(uint256(stor13[address(msg.sender)]))]
    return Array(len=uint256(stor13[address(msg.sender)]), data=mem[160 len floor32(uint256(stor13[address(msg.sender)]))], mem[(32 * uint256(stor13[address(msg.sender)])) + floor32(uint256(stor13[address(msg.sender)])) + 224 len (32 * uint256(stor13[address(msg.sender)])) - floor32(uint256(stor13[address(msg.sender)]))]), 
}

function transfer(address arg1, uint256 arg2) {
    require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
    delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0xf5b79462 with:
         gas gas_remaining - 710 wei
        args 8, msg.sender
    require delegate.return_code
    if delegate.return_data[0] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
    delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0xf5b79462 with:
         gas gas_remaining - 710 wei
        args 8, msg.sender
    require delegate.return_code
    require arg2 <= delegate.return_data[0]
    require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
    delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0x3f94d1b0 with:
         gas gas_remaining - 710 wei
        args 8, msg.sender, delegate.return_data[0] - arg2
    require delegate.return_code
    require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
    delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0xcbb69492 with:
         gas gas_remaining - 710 wei
        args 8, arg1
    require delegate.return_code
    require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
    if not delegate.return_data[0]:
        delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0x3f94d1b0 with:
             gas gas_remaining - 710 wei
            args 8, address(arg1), arg2
    else:
        delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0xf5b79462 with:
             gas gas_remaining - 710 wei
            args 8, arg1
        require delegate.return_code
        require delegate.return_data[0] + arg2 >= delegate.return_data[0]
        require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
        delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0x3f94d1b0 with:
             gas gas_remaining - 710 wei
            args 8, address(arg1), delegate.return_data[0] + arg2
    require delegate.return_code
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_523d5322(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
    delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0xcbb69492 with:
         gas gas_remaining - 710 wei
        args 8, msg.sender
    mem[(32 * arg1.length) + 128] = delegate.return_data[0]
    require delegate.return_code
    if delegate.return_data[0]:
        if stor7:
            require stor7
            require 24 * 3600 * stor7 / stor7 == 24 * 3600
        require stor6 + (24 * 3600 * stor7) >= stor6
        if block.timestamp <= stor6 + (24 * 3600 * stor7):
            uint256(stor13[address(msg.sender)]) = arg1.length
            if not arg1.length:
                idx = 0
                while uint256(stor13[address(msg.sender)]) + 31 / 32 > idx:
                    uint8(stor13[address(msg.sender)][idx]) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 128
                while (32 * arg1.length) + 128 > idx:
                    uint256(stor13[address(msg.sender)]) = bool(mem[idx]) * 256^s or !(255 * 256^s) and uint256(stor13[address(msg.sender)])
                    s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
                s = sha3(sha3(address(msg.sender), 13))
                while idx:
                    stor[s] = !(255 * 256^idx) and stor[s]
                    idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                    s = (idx + 1 / 32) + s
                    continue 
                idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg1.length) + 31) >> 5 * None + 3 / 32)
                while uint256(stor13[address(msg.sender)]) + 31 / 32 > idx:
                    uint8(stor13[address(msg.sender)][idx]) = 0
                    idx = idx + 1
                    continue 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
    delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0xf5b79462 with:
         gas gas_remaining - 710 wei
        args 8, arg1
    require delegate.return_code
    if delegate.return_data[0] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
    delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0xcbb69492 with:
         gas gas_remaining - 710 wei
        args 8, arg2
    require delegate.return_code
    require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
    if not delegate.return_data[0]:
        delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0x3f94d1b0 with:
             gas gas_remaining - 710 wei
            args 8, address(arg2), arg3
    else:
        delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0xf5b79462 with:
             gas gas_remaining - 710 wei
            args 8, arg2
        require delegate.return_code
        require arg3 + delegate.return_data[0] >= arg3
        require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
        delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0x3f94d1b0 with:
             gas gas_remaining - 710 wei
            args 8, address(arg2), arg3 + delegate.return_data[0]
    require delegate.return_code
    require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
    delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0xf5b79462 with:
         gas gas_remaining - 710 wei
        args 8, arg1
    require delegate.return_code
    require arg3 <= delegate.return_data[0]
    require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
    delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0x3f94d1b0 with:
         gas gas_remaining - 710 wei
        args 8, address(arg1), delegate.return_data[0] - arg3
    require delegate.return_code
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transferAllDividends() payable {
    mem[64] = 96
    require not msg.value
    if msg.sender == stor5:
        require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
        delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0x49027dc5 with:
             gas gas_remaining - 710 wei
            args 8
        require delegate.return_code
        mem[96] = 0x8169bc0600000000000000000000000000000000000000000000000000000000
        mem[100] = 8
        mem[132] = var18002
        require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
        delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.mem[var20002 len 4] with:
             gas gas_remaining - 710 wei
            args mem[var20002 + 4 len var20003 - 4]
        mem[var20004] = delegate.return_data[0]
        require delegate.return_code
        mem[96] = 0x1ad0c0f600000000000000000000000000000000000000000000000000000000
        mem[100] = 8
        mem[132] = var24002
        require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
        delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.mem[var26002 len 4] with:
             gas gas_remaining - 710 wei
            args mem[var26002 + 4 len var26003 - 4]
        require delegate.return_code
        require approvedDividendsOf[0] >= 0
        call 0x0 with:
           value approvedDividendsOf[0] wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        approvedDividendsOf[0] = 0
        require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
        delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0x37756462 with:
             gas gas_remaining - 710 wei
            args 8, var28005
        require delegate.return_code
        require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
        delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0x8169bc06 with:
             gas gas_remaining - 710 wei
            args 8, delegate.return_data[0]
        require delegate.return_code
        s = 0x1ad0c0f600000000000000000000000000000000000000000000000000000000
        s = var28005
        while delegate.return_data[0]:
            require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
            delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0x1ad0c0f6 with:
                 gas gas_remaining - 710 wei
                args 8, delegate.return_data[0]
            require delegate.return_code
            require approvedDividendsOf[address(delegate.return_data[0])] >= 0
            call address(delegate.return_data[0]) with:
               value approvedDividendsOf[address(delegate.return_data[0])] wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            mem[0] = address(delegate.return_data[0])
            mem[32] = 12
            approvedDividendsOf[address(delegate.return_data[0])] = 0
            require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
            delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0x37756462 with:
                 gas gas_remaining - 710 wei
                args 8, delegate.return_data[0]
            require delegate.return_code
            mem[100] = 8
            mem[132] = delegate.return_data[0]
            require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
            delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0x8169bc06 with:
                 gas gas_remaining - 710 wei
                args 8, delegate.return_data[0]
            mem[96] = delegate.return_data[0]
            require delegate.return_code
            s = delegate.return_data[0]
            s = delegate.return_data[0]
            continue 
}

function sub_023b50cc(?) payable {
    if msg.value:
        require msg.value
        require msg.value * stor3 / msg.value == stor3
    require msg.value * stor3 == (10^18 * msg.value * stor3 / 10^18) + (msg.value * stor3 % 10^18)
    require stor4 > 0
    require stor4
    require msg.value * stor3 / 10^18 == (stor4 * msg.value * stor3 / 10^18 / stor4) + (msg.value * stor3 / 10^18 % stor4)
    require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
    delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0xf5b79462 with:
         gas gas_remaining - 710 wei
        args 8, stor5
    require delegate.return_code
    require delegate.return_data[0] >= msg.value * stor3 / 10^18 / stor4
    allowance[stor5][address(msg.sender)] = msg.value * stor3 / 10^18 / stor4
    emit Approval((msg.value * stor3 / 10^18 / stor4), stor5, msg.sender);
    require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
    delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0xf5b79462 with:
         gas gas_remaining - 710 wei
        args 8, stor5
    require delegate.return_code
    if delegate.return_data[0] >= msg.value * stor3 / 10^18 / stor4:
        if allowance[stor5][address(msg.sender)] >= msg.value * stor3 / 10^18 / stor4:
            if msg.value * stor3 / 10^18 / stor4 > 0:
                require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
                delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0xcbb69492 with:
                     gas gas_remaining - 710 wei
                    args 8, msg.sender
                require delegate.return_code
                require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
                if not delegate.return_data[0]:
                    delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0x3f94d1b0 with:
                         gas gas_remaining - 710 wei
                        args 8, msg.sender, msg.value * stor3 / 10^18 / stor4
                else:
                    delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0xf5b79462 with:
                         gas gas_remaining - 710 wei
                        args 8, msg.sender
                    require delegate.return_code
                    require (msg.value * stor3 / 10^18 / stor4) + delegate.return_data[0] >= msg.value * stor3 / 10^18 / stor4
                    require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
                    delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0x3f94d1b0 with:
                         gas gas_remaining - 710 wei
                        args 8, msg.sender, (msg.value * stor3 / 10^18 / stor4) + delegate.return_data[0]
                require delegate.return_code
                require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
                delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0xf5b79462 with:
                     gas gas_remaining - 710 wei
                    args 8, stor5
                require delegate.return_code
                require msg.value * stor3 / 10^18 / stor4 <= delegate.return_data[0]
                require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
                delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0x3f94d1b0 with:
                     gas gas_remaining - 710 wei
                    args 8, stor5, delegate.return_data[0] - (msg.value * stor3 / 10^18 / stor4)
                require delegate.return_code
                require msg.value * stor3 / 10^18 / stor4 <= allowance[stor5][address(msg.sender)]
                allowance[stor5][address(msg.sender)] -= msg.value * stor3 / 10^18 / stor4
                emit Transfer((msg.value * stor3 / 10^18 / stor4), stor5, msg.sender);
}

function approveDividends(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    if msg.sender == stor5:
        if not arg1:
            require totalSupply > 0
            require totalSupply
            require 10^18 * arg1 == (totalSupply * 10^18 * arg1 / totalSupply) + (10^18 * arg1 % totalSupply)
            require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
            delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0x49027dc5 with:
                 gas gas_remaining - 710 wei
                args 8
            require delegate.return_code
            mem[96] = 0x8169bc0600000000000000000000000000000000000000000000000000000000
            mem[100] = 8
            mem[132] = var49002
            require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
            delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.mem[var51002 len 4] with:
                 gas gas_remaining - 710 wei
                args mem[var51002 + 4 len var51003 - 4]
            mem[var51004] = delegate.return_data[0]
            require delegate.return_code
            mem[96] = 0x1ad0c0f600000000000000000000000000000000000000000000000000000000
            mem[100] = 8
            mem[132] = var55002
            require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
            delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.mem[var57002 len 4] with:
                 gas gas_remaining - 710 wei
                args mem[var57002 + 4 len var57003 - 4]
            mem[var57004] = delegate.return_data[0]
            require delegate.return_code
            mem[96] = 0xf5b7946200000000000000000000000000000000000000000000000000000000
            mem[100] = 8
            mem[132] = 0
            require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
            delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.mem[var61002 len 4] with:
                 gas gas_remaining - 710 wei
                args mem[var61002 + 4 len var61003 - 4]
            require delegate.return_code
            if not var65002:
                require not var65002
                approvedDividendsOf[address(var65004)] = var65002 * 10^18 * arg1 / totalSupply
                require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
                delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0x37756462 with:
                     gas gas_remaining - 710 wei
                    args 8, var65005
                require delegate.return_code
                require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
                delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0x8169bc06 with:
                     gas gas_remaining - 710 wei
                    args 8, delegate.return_data[0]
                require delegate.return_code
                s = not var65002
                s = var65002 * 10^18 * arg1 / totalSupply
                s = var65002
                s = var65004
                s = var65005
                while delegate.return_data[0]:
                    require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
                    delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0x1ad0c0f6 with:
                         gas gas_remaining - 710 wei
                        args 8, delegate.return_data[0]
                    require delegate.return_code
                    require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
                    delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0xf5b79462 with:
                         gas gas_remaining - 710 wei
                        args 8, address(delegate.return_data[0])
                    require delegate.return_code
                    if not delegate.return_data[0]:
                        require not delegate.return_data[0]
                        mem[0] = address(delegate.return_data[0])
                        mem[32] = 12
                        approvedDividendsOf[address(delegate.return_data[0])] = delegate.return_data[0] * 10^18 * arg1 / totalSupply
                        require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
                        delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0x37756462 with:
                             gas gas_remaining - 710 wei
                            args 8, delegate.return_data[0]
                        require delegate.return_code
                        mem[100] = 8
                        mem[132] = delegate.return_data[0]
                        require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
                        delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0x8169bc06 with:
                             gas gas_remaining - 710 wei
                            args 8, delegate.return_data[0]
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
                    mem[32] = 12
                    approvedDividendsOf[address(delegate.return_data[0])] = delegate.return_data[0] * 10^18 * arg1 / totalSupply
                    require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
                    delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0x37756462 with:
                         gas gas_remaining - 710 wei
                        args 8, delegate.return_data[0]
                    require delegate.return_code
                    mem[100] = 8
                    mem[132] = delegate.return_data[0]
                    require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
                    delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0x8169bc06 with:
                         gas gas_remaining - 710 wei
                        args 8, delegate.return_data[0]
                    mem[96] = delegate.return_data[0]
                    require delegate.return_code
                    s = delegate.return_data[0] * 10^18 * arg1 / totalSupply / delegate.return_data[0] == 10^18 * arg1 / totalSupply
                    s = delegate.return_data[0] * 10^18 * arg1 / totalSupply
                    s = delegate.return_data[0]
                    s = delegate.return_data[0]
                    s = delegate.return_data[0]
                    continue 
            else:
                require var67006
                require var69001 / var69002 == 10^18 * arg1 / totalSupply
                approvedDividendsOf[address(var69010)] = var69005
                require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
                delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0x37756462 with:
                     gas gas_remaining - 710 wei
                    args 8, var69011
                require delegate.return_code
                require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
                delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0x8169bc06 with:
                     gas gas_remaining - 710 wei
                    args 8, delegate.return_data[0]
                require delegate.return_code
                s = var69001 / var69002 == 10^18 * arg1 / totalSupply
                s = var69005
                s = var69008
                s = var69010
                s = var69011
                while delegate.return_data[0]:
                    require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
                    delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0x1ad0c0f6 with:
                         gas gas_remaining - 710 wei
                        args 8, delegate.return_data[0]
                    require delegate.return_code
                    require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
                    delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0xf5b79462 with:
                         gas gas_remaining - 710 wei
                        args 8, address(delegate.return_data[0])
                    require delegate.return_code
                    if not delegate.return_data[0]:
                        require not delegate.return_data[0]
                        mem[0] = address(delegate.return_data[0])
                        mem[32] = 12
                        approvedDividendsOf[address(delegate.return_data[0])] = delegate.return_data[0] * 10^18 * arg1 / totalSupply
                        require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
                        delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0x37756462 with:
                             gas gas_remaining - 710 wei
                            args 8, delegate.return_data[0]
                        require delegate.return_code
                        mem[100] = 8
                        mem[132] = delegate.return_data[0]
                        require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
                        delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0x8169bc06 with:
                             gas gas_remaining - 710 wei
                            args 8, delegate.return_data[0]
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
                    mem[32] = 12
                    approvedDividendsOf[address(delegate.return_data[0])] = delegate.return_data[0] * 10^18 * arg1 / totalSupply
                    require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
                    delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0x37756462 with:
                         gas gas_remaining - 710 wei
                        args 8, delegate.return_data[0]
                    require delegate.return_code
                    mem[100] = 8
                    mem[132] = delegate.return_data[0]
                    require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
                    delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0x8169bc06 with:
                         gas gas_remaining - 710 wei
                        args 8, delegate.return_data[0]
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
            require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
            delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0x49027dc5 with:
                 gas gas_remaining - 710 wei
                args 8
            require delegate.return_code
            mem[96] = 0x8169bc0600000000000000000000000000000000000000000000000000000000
            mem[100] = 8
            mem[132] = var51002
            require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
            delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.mem[var53002 len 4] with:
                 gas gas_remaining - 710 wei
                args mem[var53002 + 4 len var53003 - 4]
            mem[var53004] = delegate.return_data[0]
            require delegate.return_code
            mem[96] = 0x1ad0c0f600000000000000000000000000000000000000000000000000000000
            mem[100] = 8
            mem[132] = var57002
            require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
            delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.mem[var59002 len 4] with:
                 gas gas_remaining - 710 wei
                args mem[var59002 + 4 len var59003 - 4]
            mem[var59004] = delegate.return_data[0]
            require delegate.return_code
            mem[96] = 0xf5b7946200000000000000000000000000000000000000000000000000000000
            mem[100] = 8
            mem[132] = 0
            require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
            delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.mem[var63002 len 4] with:
                 gas gas_remaining - 710 wei
                args mem[var63002 + 4 len var63003 - 4]
            require delegate.return_code
            if not var67002:
                require not var67002
                approvedDividendsOf[address(var67004)] = var67002 * 10^18 * arg1 / totalSupply
                require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
                delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0x37756462 with:
                     gas gas_remaining - 710 wei
                    args 8, var67005
                require delegate.return_code
                require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
                delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0x8169bc06 with:
                     gas gas_remaining - 710 wei
                    args 8, delegate.return_data[0]
                require delegate.return_code
                s = not var67002
                s = var67002 * 10^18 * arg1 / totalSupply
                s = var67002
                s = var67004
                s = var67005
                while delegate.return_data[0]:
                    require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
                    delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0x1ad0c0f6 with:
                         gas gas_remaining - 710 wei
                        args 8, delegate.return_data[0]
                    require delegate.return_code
                    require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
                    delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0xf5b79462 with:
                         gas gas_remaining - 710 wei
                        args 8, address(delegate.return_data[0])
                    require delegate.return_code
                    if not delegate.return_data[0]:
                        require not delegate.return_data[0]
                        mem[0] = address(delegate.return_data[0])
                        mem[32] = 12
                        approvedDividendsOf[address(delegate.return_data[0])] = delegate.return_data[0] * 10^18 * arg1 / totalSupply
                        require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
                        delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0x37756462 with:
                             gas gas_remaining - 710 wei
                            args 8, delegate.return_data[0]
                        require delegate.return_code
                        mem[100] = 8
                        mem[132] = delegate.return_data[0]
                        require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
                        delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0x8169bc06 with:
                             gas gas_remaining - 710 wei
                            args 8, delegate.return_data[0]
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
                    mem[32] = 12
                    approvedDividendsOf[address(delegate.return_data[0])] = delegate.return_data[0] * 10^18 * arg1 / totalSupply
                    require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
                    delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0x37756462 with:
                         gas gas_remaining - 710 wei
                        args 8, delegate.return_data[0]
                    require delegate.return_code
                    mem[100] = 8
                    mem[132] = delegate.return_data[0]
                    require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
                    delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0x8169bc06 with:
                         gas gas_remaining - 710 wei
                        args 8, delegate.return_data[0]
                    mem[96] = delegate.return_data[0]
                    require delegate.return_code
                    s = delegate.return_data[0] * 10^18 * arg1 / totalSupply / delegate.return_data[0] == 10^18 * arg1 / totalSupply
                    s = delegate.return_data[0] * 10^18 * arg1 / totalSupply
                    s = delegate.return_data[0]
                    s = delegate.return_data[0]
                    s = delegate.return_data[0]
                    continue 
            else:
                require var69006
                require var71001 / var71002 == 10^18 * arg1 / totalSupply
                approvedDividendsOf[address(var71010)] = var71005
                require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
                delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0x37756462 with:
                     gas gas_remaining - 710 wei
                    args 8, var71011
                require delegate.return_code
                require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
                delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0x8169bc06 with:
                     gas gas_remaining - 710 wei
                    args 8, delegate.return_data[0]
                require delegate.return_code
                s = var71001 / var71002 == 10^18 * arg1 / totalSupply
                s = var71005
                s = var71008
                s = var71010
                s = var71011
                while delegate.return_data[0]:
                    require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
                    delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0x1ad0c0f6 with:
                         gas gas_remaining - 710 wei
                        args 8, delegate.return_data[0]
                    require delegate.return_code
                    require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
                    delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0xf5b79462 with:
                         gas gas_remaining - 710 wei
                        args 8, address(delegate.return_data[0])
                    require delegate.return_code
                    if not delegate.return_data[0]:
                        require not delegate.return_data[0]
                        mem[0] = address(delegate.return_data[0])
                        mem[32] = 12
                        approvedDividendsOf[address(delegate.return_data[0])] = delegate.return_data[0] * 10^18 * arg1 / totalSupply
                        require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
                        delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0x37756462 with:
                             gas gas_remaining - 710 wei
                            args 8, delegate.return_data[0]
                        require delegate.return_code
                        mem[100] = 8
                        mem[132] = delegate.return_data[0]
                        require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
                        delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0x8169bc06 with:
                             gas gas_remaining - 710 wei
                            args 8, delegate.return_data[0]
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
                    mem[32] = 12
                    approvedDividendsOf[address(delegate.return_data[0])] = delegate.return_data[0] * 10^18 * arg1 / totalSupply
                    require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
                    delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0x37756462 with:
                         gas gas_remaining - 710 wei
                        args 8, delegate.return_data[0]
                    require delegate.return_code
                    mem[100] = 8
                    mem[132] = delegate.return_data[0]
                    require ext_code.size(0xa31f8673df798878ee93ddbf4c009720cd8f8d35)
                    delegate 0xa31f8673df798878ee93ddbf4c009720cd8f8d35.0x8169bc06 with:
                         gas gas_remaining - 710 wei
                        args 8, delegate.return_data[0]
                    mem[96] = delegate.return_data[0]
                    require delegate.return_code
                    s = delegate.return_data[0] * 10^18 * arg1 / totalSupply / delegate.return_data[0] == 10^18 * arg1 / totalSupply
                    s = delegate.return_data[0] * 10^18 * arg1 / totalSupply
                    s = delegate.return_data[0]
                    s = delegate.return_data[0]
                    s = delegate.return_data[0]
                    continue 
}



}
