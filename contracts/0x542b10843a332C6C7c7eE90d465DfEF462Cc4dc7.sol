contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
uint256 stor3;
uint256 stor4;
address stor5;

function _fallback() payable {
    stor0 = 100000
    bool(stor1.length) = 0
    stor1.length.field_1 = 15
    stor1.length.field_8 = 'AmirNessSpecial' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 4
    stor2.length.field_8 = 'Amir' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = 460
    stor4 = 10
    require not msg.value
    stor5 = msg.sender
    require ext_code.size(0x692a70d2e424a56d2c6c27aa97d1a86395877b3a)
    delegate 0x692a70d2e424a56d2c6c27aa97d1a86395877b3a.0x3f94d1b0 with:
         gas gas_remaining - 710 wei
        args 6, stor5, stor0
    require delegate.return_code
    return code.data[694 len 10022]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
uint256 stor3;
uint256 stor4;
address stor5;
mapping of uint256 allowance;
mapping of uint256 approvedDividendsOf;

function totalSupply() {
    return totalSupply
}

function approvedDividendsOf(address arg1) {
    return approvedDividendsOf[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function setCurrentExchangeRate(uint256 arg1) {
    if msg.sender == stor5:
        stor3 = arg1
}

function withdraw(uint256 arg1) {
    if msg.sender == stor5:
        call stor5 with:
           value 10^18 * arg1 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function balanceOf(address arg1) {
    require ext_code.size(0x692a70d2e424a56d2c6c27aa97d1a86395877b3a)
    delegate 0x692a70d2e424a56d2c6c27aa97d1a86395877b3a.0xf5b79462 with:
         gas gas_remaining - 710 wei
        args 6, arg1
    require delegate.return_code
    return delegate.return_data[0]
}

function approve(address arg1, uint256 arg2) {
    if not arg2:
        return 0
    require ext_code.size(0x692a70d2e424a56d2c6c27aa97d1a86395877b3a)
    delegate 0x692a70d2e424a56d2c6c27aa97d1a86395877b3a.0xf5b79462 with:
         gas gas_remaining - 710 wei
        args 6, msg.sender
    require delegate.return_code
    if delegate.return_data[0] < arg2:
        return 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burnUnsold() {
    if stor5 != msg.sender:
        return 0
    require ext_code.size(0x692a70d2e424a56d2c6c27aa97d1a86395877b3a)
    delegate 0x692a70d2e424a56d2c6c27aa97d1a86395877b3a.0xf5b79462 with:
         gas gas_remaining - 710 wei
        args 6, stor5
    require delegate.return_code
    totalSupply -= delegate.return_data[0]
    require ext_code.size(0x692a70d2e424a56d2c6c27aa97d1a86395877b3a)
    delegate 0x692a70d2e424a56d2c6c27aa97d1a86395877b3a.0x3f94d1b0 with:
         gas gas_remaining - 710 wei
        args 6, stor5, 0
    require delegate.return_code
    emit Burned(delegate.return_data[0], stor5);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require ext_code.size(0x692a70d2e424a56d2c6c27aa97d1a86395877b3a)
    delegate 0x692a70d2e424a56d2c6c27aa97d1a86395877b3a.0xf5b79462 with:
         gas gas_remaining - 710 wei
        args 6, msg.sender
    require delegate.return_code
    if delegate.return_data[0] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    require ext_code.size(0x692a70d2e424a56d2c6c27aa97d1a86395877b3a)
    delegate 0x692a70d2e424a56d2c6c27aa97d1a86395877b3a.0xf5b79462 with:
         gas gas_remaining - 710 wei
        args 6, msg.sender
    require delegate.return_code
    require ext_code.size(0x692a70d2e424a56d2c6c27aa97d1a86395877b3a)
    delegate 0x692a70d2e424a56d2c6c27aa97d1a86395877b3a.0x3f94d1b0 with:
         gas gas_remaining - 710 wei
        args 6, msg.sender, delegate.return_data[0] - arg2
    require delegate.return_code
    require ext_code.size(0x692a70d2e424a56d2c6c27aa97d1a86395877b3a)
    delegate 0x692a70d2e424a56d2c6c27aa97d1a86395877b3a.0xcbb69492 with:
         gas gas_remaining - 710 wei
        args 6, arg1
    require delegate.return_code
    require ext_code.size(0x692a70d2e424a56d2c6c27aa97d1a86395877b3a)
    if not delegate.return_data[0]:
        delegate 0x692a70d2e424a56d2c6c27aa97d1a86395877b3a.0x3f94d1b0 with:
             gas gas_remaining - 710 wei
            args 6, address(arg1), arg2
    else:
        delegate 0x692a70d2e424a56d2c6c27aa97d1a86395877b3a.0xf5b79462 with:
             gas gas_remaining - 710 wei
            args 6, arg1
        require delegate.return_code
        require ext_code.size(0x692a70d2e424a56d2c6c27aa97d1a86395877b3a)
        delegate 0x692a70d2e424a56d2c6c27aa97d1a86395877b3a.0x3f94d1b0 with:
             gas gas_remaining - 710 wei
            args 6, address(arg1), delegate.return_data[0] + arg2
    require delegate.return_code
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require ext_code.size(0x692a70d2e424a56d2c6c27aa97d1a86395877b3a)
    delegate 0x692a70d2e424a56d2c6c27aa97d1a86395877b3a.0xf5b79462 with:
         gas gas_remaining - 710 wei
        args 6, arg1
    require delegate.return_code
    if delegate.return_data[0] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    require ext_code.size(0x692a70d2e424a56d2c6c27aa97d1a86395877b3a)
    delegate 0x692a70d2e424a56d2c6c27aa97d1a86395877b3a.0xcbb69492 with:
         gas gas_remaining - 710 wei
        args 6, arg2
    require delegate.return_code
    require ext_code.size(0x692a70d2e424a56d2c6c27aa97d1a86395877b3a)
    if not delegate.return_data[0]:
        delegate 0x692a70d2e424a56d2c6c27aa97d1a86395877b3a.0x3f94d1b0 with:
             gas gas_remaining - 710 wei
            args 6, address(arg2), arg3
    else:
        delegate 0x692a70d2e424a56d2c6c27aa97d1a86395877b3a.0xf5b79462 with:
             gas gas_remaining - 710 wei
            args 6, arg2
        require delegate.return_code
        require ext_code.size(0x692a70d2e424a56d2c6c27aa97d1a86395877b3a)
        delegate 0x692a70d2e424a56d2c6c27aa97d1a86395877b3a.0x3f94d1b0 with:
             gas gas_remaining - 710 wei
            args 6, address(arg2), arg3 + delegate.return_data[0]
    require delegate.return_code
    require ext_code.size(0x692a70d2e424a56d2c6c27aa97d1a86395877b3a)
    delegate 0x692a70d2e424a56d2c6c27aa97d1a86395877b3a.0xf5b79462 with:
         gas gas_remaining - 710 wei
        args 6, arg1
    require delegate.return_code
    require ext_code.size(0x692a70d2e424a56d2c6c27aa97d1a86395877b3a)
    delegate 0x692a70d2e424a56d2c6c27aa97d1a86395877b3a.0x3f94d1b0 with:
         gas gas_remaining - 710 wei
        args 6, address(arg1), delegate.return_data[0] - arg3
    require delegate.return_code
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require stor4
    require ext_code.size(0x692a70d2e424a56d2c6c27aa97d1a86395877b3a)
    delegate 0x692a70d2e424a56d2c6c27aa97d1a86395877b3a.0xf5b79462 with:
         gas gas_remaining - 710 wei
        args 6, stor5
    require delegate.return_code
    if delegate.return_data[0] >= msg.value * stor3 / 10^18 / stor4:
        require ext_code.size(0x692a70d2e424a56d2c6c27aa97d1a86395877b3a)
        delegate 0x692a70d2e424a56d2c6c27aa97d1a86395877b3a.0xcbb69492 with:
             gas gas_remaining - 710 wei
            args 6, msg.sender
        require delegate.return_code
        require ext_code.size(0x692a70d2e424a56d2c6c27aa97d1a86395877b3a)
        if not delegate.return_data[0]:
            delegate 0x692a70d2e424a56d2c6c27aa97d1a86395877b3a.0x3f94d1b0 with:
                 gas gas_remaining - 710 wei
                args 6, msg.sender, msg.value * stor3 / 10^18 / stor4
        else:
            delegate 0x692a70d2e424a56d2c6c27aa97d1a86395877b3a.0xf5b79462 with:
                 gas gas_remaining - 710 wei
                args 6, msg.sender
            require delegate.return_code
            require ext_code.size(0x692a70d2e424a56d2c6c27aa97d1a86395877b3a)
            delegate 0x692a70d2e424a56d2c6c27aa97d1a86395877b3a.0x3f94d1b0 with:
                 gas gas_remaining - 710 wei
                args 6, msg.sender, delegate.return_data[0] + (msg.value * stor3 / 10^18 / stor4)
        require delegate.return_code
        require ext_code.size(0x692a70d2e424a56d2c6c27aa97d1a86395877b3a)
        delegate 0x692a70d2e424a56d2c6c27aa97d1a86395877b3a.0xf5b79462 with:
             gas gas_remaining - 710 wei
            args 6, stor5
        require delegate.return_code
        require ext_code.size(0x692a70d2e424a56d2c6c27aa97d1a86395877b3a)
        delegate 0x692a70d2e424a56d2c6c27aa97d1a86395877b3a.0x3f94d1b0 with:
             gas gas_remaining - 710 wei
            args 6, stor5, delegate.return_data[0] - (msg.value * stor3 / 10^18 / stor4)
        require delegate.return_code
        emit Transfer((msg.value * stor3 / 10^18 / stor4), stor5, msg.sender);
}

function transferAllDividends() payable {
    mem[64] = 96
    require not msg.value
    if msg.sender == stor5:
        require ext_code.size(0x692a70d2e424a56d2c6c27aa97d1a86395877b3a)
        delegate 0x692a70d2e424a56d2c6c27aa97d1a86395877b3a.0x49027dc5 with:
             gas gas_remaining - 710 wei
            args 6
        require delegate.return_code
        mem[96] = 0x8169bc0600000000000000000000000000000000000000000000000000000000
        mem[100] = 6
        mem[132] = var17002
        require ext_code.size(0x692a70d2e424a56d2c6c27aa97d1a86395877b3a)
        delegate 0x692a70d2e424a56d2c6c27aa97d1a86395877b3a.mem[var19002 len 4] with:
             gas gas_remaining - 710 wei
            args mem[var19002 + 4 len var19003 - 4]
        mem[var19004] = delegate.return_data[0]
        require delegate.return_code
        mem[96] = 0x1ad0c0f600000000000000000000000000000000000000000000000000000000
        mem[100] = 6
        mem[132] = var23002
        require ext_code.size(0x692a70d2e424a56d2c6c27aa97d1a86395877b3a)
        delegate 0x692a70d2e424a56d2c6c27aa97d1a86395877b3a.mem[var25002 len 4] with:
             gas gas_remaining - 710 wei
            args mem[var25002 + 4 len var25003 - 4]
        require delegate.return_code
        require approvedDividendsOf[0] >= 0
        call 0x0 with:
           value approvedDividendsOf[0] wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit DividendsTransfered(0, approvedDividendsOf[0]);
        approvedDividendsOf[0] = 0
        require ext_code.size(0x692a70d2e424a56d2c6c27aa97d1a86395877b3a)
        delegate 0x692a70d2e424a56d2c6c27aa97d1a86395877b3a.0x37756462 with:
             gas gas_remaining - 710 wei
            args 6, var27005
        require delegate.return_code
        require ext_code.size(0x692a70d2e424a56d2c6c27aa97d1a86395877b3a)
        delegate 0x692a70d2e424a56d2c6c27aa97d1a86395877b3a.0x8169bc06 with:
             gas gas_remaining - 710 wei
            args 6, delegate.return_data[0]
        require delegate.return_code
        s = 0x1ad0c0f600000000000000000000000000000000000000000000000000000000
        s = var27005
        while delegate.return_data[0]:
            require ext_code.size(0x692a70d2e424a56d2c6c27aa97d1a86395877b3a)
            delegate 0x692a70d2e424a56d2c6c27aa97d1a86395877b3a.0x1ad0c0f6 with:
                 gas gas_remaining - 710 wei
                args 6, delegate.return_data[0]
            require delegate.return_code
            require approvedDividendsOf[address(delegate.return_data[0])] >= 0
            call address(delegate.return_data[0]) with:
               value approvedDividendsOf[address(delegate.return_data[0])] wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit DividendsTransfered(address(delegate.return_data[0]), approvedDividendsOf[0]);
            mem[0] = address(delegate.return_data[0])
            mem[32] = 10
            approvedDividendsOf[address(delegate.return_data[0])] = 0
            require ext_code.size(0x692a70d2e424a56d2c6c27aa97d1a86395877b3a)
            delegate 0x692a70d2e424a56d2c6c27aa97d1a86395877b3a.0x37756462 with:
                 gas gas_remaining - 710 wei
                args 6, delegate.return_data[0]
            require delegate.return_code
            mem[100] = 6
            mem[132] = delegate.return_data[0]
            require ext_code.size(0x692a70d2e424a56d2c6c27aa97d1a86395877b3a)
            delegate 0x692a70d2e424a56d2c6c27aa97d1a86395877b3a.0x8169bc06 with:
                 gas gas_remaining - 710 wei
                args 6, delegate.return_data[0]
            mem[96] = delegate.return_data[0]
            require delegate.return_code
            s = delegate.return_data[0]
            s = delegate.return_data[0]
            continue 
}

function approveDividends(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    if stor5 != msg.sender:
    require totalSupply
    require ext_code.size(0x692a70d2e424a56d2c6c27aa97d1a86395877b3a)
    delegate 0x692a70d2e424a56d2c6c27aa97d1a86395877b3a.0x49027dc5 with:
         gas gas_remaining - 710 wei
        args 6
    require delegate.return_code
    mem[96] = 0x8169bc0600000000000000000000000000000000000000000000000000000000
    mem[100] = 6
    mem[132] = var18002
    require ext_code.size(0x692a70d2e424a56d2c6c27aa97d1a86395877b3a)
    delegate 0x692a70d2e424a56d2c6c27aa97d1a86395877b3a.mem[var20002 len 4] with:
         gas gas_remaining - 710 wei
        args mem[var20002 + 4 len var20003 - 4]
    mem[var20004] = delegate.return_data[0]
    require delegate.return_code
    mem[96] = 0x1ad0c0f600000000000000000000000000000000000000000000000000000000
    mem[100] = 6
    mem[132] = var24002
    require ext_code.size(0x692a70d2e424a56d2c6c27aa97d1a86395877b3a)
    delegate 0x692a70d2e424a56d2c6c27aa97d1a86395877b3a.mem[var26002 len 4] with:
         gas gas_remaining - 710 wei
        args mem[var26002 + 4 len var26003 - 4]
    mem[var26004] = delegate.return_data[0]
    require delegate.return_code
    mem[96] = 0xf5b7946200000000000000000000000000000000000000000000000000000000
    mem[100] = 6
    mem[132] = 0
    require ext_code.size(0x692a70d2e424a56d2c6c27aa97d1a86395877b3a)
    delegate 0x692a70d2e424a56d2c6c27aa97d1a86395877b3a.mem[var30002 len 4] with:
         gas gas_remaining - 710 wei
        args mem[var30002 + 4 len var30003 - 4]
    mem[var30004] = delegate.return_data[0]
    require delegate.return_code
    mem[0] = address(var32005)
    mem[32] = 10
    approvedDividendsOf[address(var32005)] = 0xf5b7946200000000000000000000000000000000000000000000000000000000 * 10^18 * arg1 / totalSupply
    mem[96] = 0x3775646200000000000000000000000000000000000000000000000000000000
    mem[100] = 6
    mem[132] = var32006
    require ext_code.size(0x692a70d2e424a56d2c6c27aa97d1a86395877b3a)
    delegate 0x692a70d2e424a56d2c6c27aa97d1a86395877b3a.mem[var34002 len 4] with:
         gas gas_remaining - 710 wei
        args mem[var34002 + 4 len var34003 - 4]
    mem[var34004] = delegate.return_data[0]
    require delegate.return_code
    mem[96] = 0x8169bc0600000000000000000000000000000000000000000000000000000000
    mem[100] = 6
    mem[132] = var38002
    require ext_code.size(0x692a70d2e424a56d2c6c27aa97d1a86395877b3a)
    delegate 0x692a70d2e424a56d2c6c27aa97d1a86395877b3a.mem[var40002 len 4] with:
         gas gas_remaining - 710 wei
        args mem[var40002 + 4 len var40003 - 4]
    mem[var40004] = delegate.return_data[0]
    require delegate.return_code
    mem[96] = 0x1ad0c0f600000000000000000000000000000000000000000000000000000000
    mem[100] = 6
    mem[132] = var44002
    require ext_code.size(0x692a70d2e424a56d2c6c27aa97d1a86395877b3a)
    delegate 0x692a70d2e424a56d2c6c27aa97d1a86395877b3a.mem[var46002 len 4] with:
         gas gas_remaining - 710 wei
        args mem[var46002 + 4 len var46003 - 4]
    mem[var46004] = delegate.return_data[0]
    require delegate.return_code
    mem[96] = 0xf5b7946200000000000000000000000000000000000000000000000000000000
    mem[100] = 6
    mem[132] = 0
    require ext_code.size(0x692a70d2e424a56d2c6c27aa97d1a86395877b3a)
    delegate 0x692a70d2e424a56d2c6c27aa97d1a86395877b3a.mem[var50002 len 4] with:
         gas gas_remaining - 710 wei
        args mem[var50002 + 4 len var50003 - 4]
    mem[var50004] = delegate.return_data[0]
    require delegate.return_code
    mem[0] = address(var52005)
    mem[32] = 10
    approvedDividendsOf[address(var52005)] = 0xf5b7946200000000000000000000000000000000000000000000000000000000 * 10^18 * arg1 / totalSupply
    mem[96] = 0x3775646200000000000000000000000000000000000000000000000000000000
    mem[100] = 6
    mem[132] = var52006
    require ext_code.size(0x692a70d2e424a56d2c6c27aa97d1a86395877b3a)
    delegate 0x692a70d2e424a56d2c6c27aa97d1a86395877b3a.mem[var54002 len 4] with:
         gas gas_remaining - 710 wei
        args mem[var54002 + 4 len var54003 - 4]
    require delegate.return_code
    # nil
}



}
