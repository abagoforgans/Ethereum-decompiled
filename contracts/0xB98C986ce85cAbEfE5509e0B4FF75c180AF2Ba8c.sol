contract main {




// =====================  Runtime code  =====================


#
#  - sub_abb8e3ec(?)
#
address owner;
address sub_0f080470Address;
address sub_8f793831Address;
address sub_6084dc6bAddress;
address ETHAddress;
uint256 stor4;
address sub_4e60860eAddress;
uint256 stor5;
address DAIAddress;
uint256 stor6;
address sub_251f414cAddress;
uint256 stor7;
uint32 stor8;
address marketAddress;
address proxyAddress;
address WETHAddress;
uint256 sub_d934bc71;
uint256 threshold;
array of struct sub_d31f1a3e;

function sub_0f080470(?) {
    return sub_0f080470Address
}

function sub_251f414c(?) {
    return address(sub_251f414cAddress)
}

function threshold() {
    return threshold
}

function sub_4e60860e(?) {
    return address(sub_4e60860eAddress)
}

function sub_6084dc6b(?) {
    return sub_6084dc6bAddress
}

function Market() {
    return address(marketAddress)
}

function ETH() {
    return address(ETHAddress)
}

function owner() {
    return owner
}

function sub_8f793831(?) {
    return sub_8f793831Address
}

function WETH() {
    return WETHAddress
}

function sub_d31f1a3e(?) {
    require arg1 < sub_d31f1a3e.length
    return sub_d31f1a3e[arg1].field_0
}

function sub_d934bc71(?) {
    return sub_d934bc71
}

function DAI() {
    return address(DAIAddress)
}

function Proxy() {
    return proxyAddress
}

function _fallback() payable {
  stop
}

function sub_d10dbdf5(?) {
    require msg.sender == owner
    sub_d934bc71 = arg1
}

function setWETH(address arg1) {
    require msg.sender == owner
    WETHAddress = arg1
}

function setThreshold(uint256 arg1) {
    require msg.sender == owner
    threshold = arg1
}

function setMarket(address arg1) {
    require msg.sender == owner
    address(marketAddress) = arg1
}

function setOwner(address arg1) {
    require msg.sender == owner
    if owner == arg1:
        revert with 0, 'Invalid new owner value.'
    if not arg1:
        revert with 0, 'Invalid new owner value.'
    owner = arg1
}

function withdraw() {
    require msg.sender == owner
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferERC20Token(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_d61958f0(?) {
    require msg.sender == owner
    if sub_0f080470Address == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Invalid new trigger account value.'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Invalid new trigger account value.'
    sub_0f080470Address = arg1
}

function sub_46f8e7c7(?) {
    require ext_code.size(address(marketAddress))
    call address(marketAddress).getBuyAmount(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args WETHAddress, address(DAIAddress), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_6839bb0a(?) {
    require ext_code.size(address(marketAddress))
    call address(marketAddress).getBuyAmount(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(DAIAddress), WETHAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_3ddbcf84(?) {
    require msg.sender == owner
    sub_6084dc6bAddress = arg1
    require ext_code.size(arg1)
    call arg1.connectorTokens(uint256 arg1) with:
         gas gas_remaining wei
        args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor4) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor4))
    require ext_code.size(sub_6084dc6bAddress)
    call sub_6084dc6bAddress.0xfc0c546a with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor5) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor5))
}

function sub_42ab07bc(?) {
    require msg.sender == owner
    sub_8f793831Address = arg1
    require ext_code.size(arg1)
    call arg1.connectorTokens(uint256 arg1) with:
         gas gas_remaining wei
        args 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor6) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor6))
    require ext_code.size(sub_8f793831Address)
    call sub_8f793831Address.0xfc0c546a with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor7) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor7))
}

function sub_87f9e9cb(?) {
    require ext_code.size(sub_8f793831Address)
    call sub_8f793831Address.getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(DAIAddress), address(sub_4e60860eAddress), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6084dc6bAddress)
    call sub_6084dc6bAddress.getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(sub_4e60860eAddress), address(ETHAddress), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_d22403a6(?) {
    require ext_code.size(sub_6084dc6bAddress)
    call sub_6084dc6bAddress.getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(ETHAddress), address(sub_4e60860eAddress), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_8f793831Address)
    call sub_8f793831Address.getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(sub_4e60860eAddress), address(DAIAddress), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_9d333720(?) {
    require ext_code.size(address(DAIAddress))
    call address(DAIAddress).0xdd62ed3e with:
         gas gas_remaining wei
        args this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(DAIAddress))
    if ext_call.return_data[0] != arg2:
        call address(DAIAddress).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    call address(DAIAddress).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_9872ab1e(?) payable {
    if arg1 > eth.balance(this.address):
        revert with 0, 'Insufficient ETH balance.'
    require ext_code.size(address(marketAddress))
    if arg1:
        call address(marketAddress).getBuyAmount(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(DAIAddress), WETHAddress, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(proxyAddress)
        call proxyAddress.sellAllAmountPayEth(address arg1, address arg2, address arg3, uint256 arg4) with:
           value arg1 wei
             gas gas_remaining wei
            args 0, uint32(stor8), WETHAddress, address(DAIAddress), ext_call.return_data[0]
    else:
        call address(marketAddress).getBuyAmount(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(DAIAddress), WETHAddress, eth.balance(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(proxyAddress)
        call proxyAddress.sellAllAmountPayEth(address arg1, address arg2, address arg3, uint256 arg4) with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
            args 0, uint32(stor8), WETHAddress, address(DAIAddress), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0
}

function compareStrings(string arg1, string arg2) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[ceil32(arg1.length) + arg2.length + 160 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    _21 = sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len arg2.length % 32])
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] = mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] and 256^(-(arg1.length % 32) + 32) - 1 or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]) == _21
    return memory
      from ceil32(arg1.length) + ceil32(arg2.length) + 160
       len 32
}

function sub_530b7efe(?) {
    if owner != msg.sender:
        require msg.sender == sub_0f080470Address
    require ext_code.size(address(marketAddress))
    call address(marketAddress).getBuyAmount(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args WETHAddress, address(DAIAddress), sub_d934bc71
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6084dc6bAddress)
    call sub_6084dc6bAddress.getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(ETHAddress), address(sub_4e60860eAddress), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_8f793831Address)
    call sub_8f793831Address.getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(sub_4e60860eAddress), address(DAIAddress), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= threshold + sub_d934bc71:
        return 1, 96, 160, 5, 'oasis' << 216, 6, 'bancor' % 281474976710656
    require ext_code.size(sub_8f793831Address)
    call sub_8f793831Address.getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(DAIAddress), address(sub_4e60860eAddress), sub_d934bc71
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6084dc6bAddress)
    call sub_6084dc6bAddress.getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(sub_4e60860eAddress), address(ETHAddress), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(marketAddress))
    call address(marketAddress).getBuyAmount(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(DAIAddress), WETHAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < threshold + sub_d934bc71:
        return 0, 96, 128, 0, 0
    return 1, 96, 160, 6, 'bancor' << 208, 5, 'oasis' % 1099511627776
}

function sub_b9d88ee0(?) {
    require ext_code.size(address(DAIAddress))
    call address(DAIAddress).0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1:
        if arg1 > ext_call.return_data[0]:
            revert with 0, 'Insufficient DAI balance.'
        require ext_code.size(address(DAIAddress))
        call address(DAIAddress).0xdd62ed3e with:
             gas gas_remaining wei
            args this.address, proxyAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(DAIAddress))
        if ext_call.return_data[0] != arg1:
            call address(DAIAddress).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args proxyAddress, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        call address(DAIAddress).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args proxyAddress, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(marketAddress))
        call address(marketAddress).getBuyAmount(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args WETHAddress, address(DAIAddress), arg1
    else:
        if sub_d934bc71 > ext_call.return_data[0]:
            revert with 0, 'Insufficient DAI balance.'
        require ext_code.size(address(DAIAddress))
        call address(DAIAddress).0xdd62ed3e with:
             gas gas_remaining wei
            args this.address, proxyAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(DAIAddress))
        if ext_call.return_data[0] != sub_d934bc71:
            call address(DAIAddress).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args proxyAddress, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        call address(DAIAddress).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args proxyAddress, sub_d934bc71
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(marketAddress))
        call address(marketAddress).getBuyAmount(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args WETHAddress, address(DAIAddress), sub_d934bc71
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(proxyAddress)
    call proxyAddress.sellAllAmountBuyEth(address arg1, address arg2, uint256 arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 0, uint32(stor8), address(DAIAddress), sub_d934bc71, WETHAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0
}

function sub_034bf270(?) {
    if arg1 > eth.balance(this.address):
        revert with 0, 'Insufficient ETH balance.'
    require ext_code.size(sub_6084dc6bAddress)
    if arg1:
        call sub_6084dc6bAddress.getReturn(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(ETHAddress), address(sub_4e60860eAddress), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_8f793831Address)
        call sub_8f793831Address.getReturn(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(sub_4e60860eAddress), address(DAIAddress), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[96] = address(ETHAddress)
        mem[128] = address(sub_4e60860eAddress)
        mem[160] = address(sub_4e60860eAddress)
        mem[192] = address(sub_251f414cAddress)
        mem[224] = address(DAIAddress)
        sub_d31f1a3e.length = 5
        s = 0
        idx = 96
        while 256 > idx:
            sub_d31f1a3e[s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 5
        while sub_d31f1a3e.length > idx:
            sub_d31f1a3e[idx].field_0 = 0
            idx = idx + 1
            continue 
        if not sub_d31f1a3e.length:
            require ext_code.size(sub_6084dc6bAddress)
            call sub_6084dc6bAddress.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
               value arg1 wei
                 gas gas_remaining wei
                args 96, arg1, ext_call.return_data[0], sub_d31f1a3e.length
        else:
            mem[388] = address(sub_d31f1a3e.field_0)
            idx = 388
            s = 0
            while (32 * sub_d31f1a3e.length) + 388 > idx + 32:
                mem[idx + 32] = sub_d31f1a3e[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(sub_6084dc6bAddress)
            call sub_6084dc6bAddress.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
               value arg1 wei
                 gas gas_remaining wei
                args Array(len=sub_d31f1a3e.length, data=mem[388 len 32 * sub_d31f1a3e.length]), arg1, ext_call.return_data[0]
    else:
        call sub_6084dc6bAddress.getReturn(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(ETHAddress), address(sub_4e60860eAddress), eth.balance(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_8f793831Address)
        call sub_8f793831Address.getReturn(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(sub_4e60860eAddress), address(DAIAddress), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[96] = address(ETHAddress)
        mem[128] = address(sub_4e60860eAddress)
        mem[160] = address(sub_4e60860eAddress)
        mem[192] = address(sub_251f414cAddress)
        mem[224] = address(DAIAddress)
        sub_d31f1a3e.length = 5
        s = 0
        idx = 96
        while 256 > idx:
            sub_d31f1a3e[s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 5
        while sub_d31f1a3e.length > idx:
            sub_d31f1a3e[idx].field_0 = 0
            idx = idx + 1
            continue 
        if not sub_d31f1a3e.length:
            require ext_code.size(sub_6084dc6bAddress)
            call sub_6084dc6bAddress.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args 96, eth.balance(this.address), ext_call.return_data[0], sub_d31f1a3e.length
        else:
            mem[388] = address(sub_d31f1a3e.field_0)
            idx = 388
            s = 0
            while (32 * sub_d31f1a3e.length) + 388 > idx + 32:
                mem[idx + 32] = sub_d31f1a3e[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(sub_6084dc6bAddress)
            call sub_6084dc6bAddress.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args Array(len=sub_d31f1a3e.length, data=mem[388 len 32 * sub_d31f1a3e.length]), eth.balance(this.address), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0
}

function sub_33bee7a9(?) {
    require ext_code.size(address(DAIAddress))
    call address(DAIAddress).0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1:
        if arg1 > ext_call.return_data[0]:
            revert with 0, 'Insufficient DAI balance.'
        require ext_code.size(address(DAIAddress))
        call address(DAIAddress).0xdd62ed3e with:
             gas gas_remaining wei
            args this.address, sub_8f793831Address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(DAIAddress))
        if ext_call.return_data[0] != arg1:
            call address(DAIAddress).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_8f793831Address, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        call address(DAIAddress).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_8f793831Address, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_8f793831Address)
        call sub_8f793831Address.getReturn(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(DAIAddress), address(sub_4e60860eAddress), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_6084dc6bAddress)
        call sub_6084dc6bAddress.getReturn(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(sub_4e60860eAddress), address(ETHAddress), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[96] = address(DAIAddress)
        mem[128] = address(sub_251f414cAddress)
        mem[160] = address(sub_4e60860eAddress)
        mem[192] = address(sub_4e60860eAddress)
        mem[224] = address(ETHAddress)
        sub_d31f1a3e.length = 5
        s = 0
        idx = 96
        while 256 > idx:
            sub_d31f1a3e[s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 5
        while sub_d31f1a3e.length > idx:
            sub_d31f1a3e[idx].field_0 = 0
            idx = idx + 1
            continue 
        if not sub_d31f1a3e.length:
            require ext_code.size(sub_8f793831Address)
            call sub_8f793831Address.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args 96, arg1, ext_call.return_data[0], sub_d31f1a3e.length
        else:
            mem[388] = address(sub_d31f1a3e.field_0)
            idx = 388
            s = 0
            while (32 * sub_d31f1a3e.length) + 388 > idx + 32:
                mem[idx + 32] = sub_d31f1a3e[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(sub_8f793831Address)
            call sub_8f793831Address.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args Array(len=sub_d31f1a3e.length, data=mem[388 len 32 * sub_d31f1a3e.length]), arg1, ext_call.return_data[0]
    else:
        if sub_d934bc71 > ext_call.return_data[0]:
            revert with 0, 'Insufficient DAI balance.'
        require ext_code.size(address(DAIAddress))
        call address(DAIAddress).0xdd62ed3e with:
             gas gas_remaining wei
            args this.address, sub_8f793831Address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(DAIAddress))
        if ext_call.return_data[0] != sub_d934bc71:
            call address(DAIAddress).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_8f793831Address, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        call address(DAIAddress).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_8f793831Address, sub_d934bc71
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_8f793831Address)
        call sub_8f793831Address.getReturn(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(DAIAddress), address(sub_4e60860eAddress), sub_d934bc71
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_6084dc6bAddress)
        call sub_6084dc6bAddress.getReturn(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(sub_4e60860eAddress), address(ETHAddress), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[96] = address(DAIAddress)
        mem[128] = address(sub_251f414cAddress)
        mem[160] = address(sub_4e60860eAddress)
        mem[192] = address(sub_4e60860eAddress)
        mem[224] = address(ETHAddress)
        sub_d31f1a3e.length = 5
        s = 0
        idx = 96
        while 256 > idx:
            sub_d31f1a3e[s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 5
        while sub_d31f1a3e.length > idx:
            sub_d31f1a3e[idx].field_0 = 0
            idx = idx + 1
            continue 
        if not sub_d31f1a3e.length:
            require ext_code.size(sub_8f793831Address)
            call sub_8f793831Address.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args 96, sub_d934bc71, ext_call.return_data[0], sub_d31f1a3e.length
        else:
            mem[388] = address(sub_d31f1a3e.field_0)
            idx = 388
            s = 0
            while (32 * sub_d31f1a3e.length) + 388 > idx + 32:
                mem[idx + 32] = sub_d31f1a3e[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(sub_8f793831Address)
            call sub_8f793831Address.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args Array(len=sub_d31f1a3e.length, data=mem[388 len 32 * sub_d31f1a3e.length]), sub_d934bc71, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}



}
