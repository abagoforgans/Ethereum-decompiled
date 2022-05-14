contract main {




// =====================  Runtime code  =====================


const name = 'T Token Wrapped'

const decimals = 18

const standard = 'Token 0.1'

const symbol = 'WT'

const SOC = 0xf41b89c5ffb1208e9d4559b3941c4fb2e91a35ca


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
mapping of address personalDeposit;

function totalSupply() {
    return totalSupply
}

function getPersonalDepositAddress(address arg1) {
    return personalDeposit[address(arg1)]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    require arg2 > 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function createPersonalDepositAddress() {
    if not personalDeposit[address(msg.sender)]:
        create contract with 0 wei
                        code: code.data[5225 len 1112], address(this.address)
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        personalDeposit[address(msg.sender)] = address(create.new_address)
    return personalDeposit[address(msg.sender)]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2 != this.address
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if arg1 != this.address:
        if balanceOf[address(msg.sender)] < arg2:
            return 0
        if arg2 <= 0:
            return 0
        balanceOf[address(msg.sender)] -= arg2
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        require balanceOf[address(msg.sender)] >= arg2
        require totalSupply >= arg2
        balanceOf[address(msg.sender)] -= arg2
        totalSupply -= arg2
        require ext_code.size(0xf41b89c5ffb1208e9d4559b3941c4fb2e91a35ca)
        call 0xf41b89c5ffb1208e9d4559b3941c4fb2e91a35ca.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Transfer(arg2, msg.sender, this.address);
    return 1
}

function processDeposit() {
    require personalDeposit[address(msg.sender)]
    require ext_code.size(personalDeposit[address(msg.sender)])
    call personalDeposit[address(msg.sender)].collect() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xf41b89c5ffb1208e9d4559b3941c4fb2e91a35ca)
    call 0xf41b89c5ffb1208e9d4559b3941c4fb2e91a35ca.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > totalSupply
    totalSupply = ext_call.return_data[0]
    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + ext_call.return_data[0] - totalSupply
    emit Transfer((ext_call.return_data[0] - totalSupply), this.address, msg.sender);
}



}
