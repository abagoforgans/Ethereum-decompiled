contract main {




// =====================  Runtime code  =====================


address sub_fdbd648cAddress;
address WETHAddress;
address sub_132afc26Address;
address controllerAddress;
address sub_48a30bf3Address;
array of uint256 sub_272a72bd;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699760;

function sub_132afc26(?) {
    return sub_132afc26Address
}

function sub_272a72bd(?) {
    require arg1 < sub_272a72bd.length
    return sub_272a72bd[arg1]
}

function sub_48a30bf3(?) {
    return sub_48a30bf3Address
}

function WETH() {
    return WETHAddress
}

function controller() {
    return controllerAddress
}

function sub_fdbd648c(?) {
    return sub_fdbd648cAddress
}

function kill() {
    if sub_fdbd648cAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    '#Controller onlyStaked Modifier: Only Staked can call this'
    require ext_code.size(WETHAddress)
    call WETHAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(WETHAddress)
    call WETHAddress.withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    selfdestruct(sub_fdbd648cAddress)
}

function _fallback() payable {
  stop
}

function getCurrentYield() {
    require ext_code.size(WETHAddress)
    call WETHAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[0] + eth.balance(this.address))
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require ext_code.size(sub_132afc26Address)
    call sub_132afc26Address.doesEntryExist(bytes32 arg1) with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        sub_272a72bd.length++
        stor36B6[stor5.length] = arg3
    return Mask(32, 224, sha3('onERC721Received(address,address', ',uint256,bytes)'))
}

function sub_2a74dbac(?) {
    if sub_fdbd648cAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    '#Controller onlyStaked Modifier: Only Staked can call this'
    if arg1 <= eth.balance(this.address):
        call sub_fdbd648cAddress with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(WETHAddress)
        call WETHAddress.withdraw(uint256 arg1) with:
             gas gas_remaining wei
            args (arg1 - eth.balance(this.address))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call sub_fdbd648cAddress with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
}

function sub_63a78101(?) {
    if controllerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    '#Treasury onlyStakedController Modifier: Only Staked Controller can call this'
    if arg1 <= eth.balance(this.address):
        call controllerAddress with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(WETHAddress)
        call WETHAddress.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg1 - eth.balance(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '#Treasury unwrapETH(): Not enough WETH balance'
        require ext_code.size(WETHAddress)
        call WETHAddress.withdraw(uint256 arg1) with:
             gas gas_remaining wei
            args (arg1 - eth.balance(this.address))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call controllerAddress with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
}



}
