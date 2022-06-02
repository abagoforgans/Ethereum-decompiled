contract main {




// =====================  Runtime code  =====================


const minContribution = 10^16


address stor0;
mapping of uint256 balanceOf;
mapping of uint256 stor2;
address sub_6dea52baAddress;
address sub_b9484e92Address;
address stor6;
uint256 tokensPerEth;
uint256 sub_c59f12d5;
uint256 sub_1fcc49aa;

function sub_1fcc49aa(?) {
    return sub_1fcc49aa
}

function sub_6dea52ba(?) {
    return sub_6dea52baAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function sub_b9484e92(?) {
    return sub_b9484e92Address
}

function sub_c59f12d5(?) {
    return sub_c59f12d5
}

function tokensPerEth() {
    return tokensPerEth
}

function resetAirdrop() {
    require msg.sender == stor0
    sub_1fcc49aa = 0
}

function sub_03f9f93c(?) {
    require msg.sender == stor0
    sub_c59f12d5 = arg1
    emit 0x9443349c: arg1
}

function transferOwnership(address arg1) {
    require msg.sender == stor0
    if arg1:
        stor0 = arg1
}

function updateTokensPerEth(uint256 arg1) {
    require msg.sender == stor0
    tokensPerEth = arg1
    emit TokensPerEthUpdated(arg1);
}

function withdraw() {
    require msg.sender == stor0
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getTokenBalance(address arg1, address arg2) {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= stor2[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= stor2[address(arg1)][address(msg.sender)]
    stor2[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function withdrawAltcoinTokens(address arg1) {
    require msg.sender == stor0
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function _fallback() payable {
    if msg.value < 10^16:
        sub_1fcc49aa++
        require sub_1fcc49aa < 500
        require ext_code.size(stor6)
        call stor6.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, sub_c59f12d5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    else:
        if not tokensPerEth:
            require ext_code.size(stor6)
            call stor6.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 0
        else:
            require tokensPerEth
            require tokensPerEth * msg.value / tokensPerEth == msg.value
            require ext_code.size(stor6)
            call stor6.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, tokensPerEth * msg.value / 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        call stor0 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
