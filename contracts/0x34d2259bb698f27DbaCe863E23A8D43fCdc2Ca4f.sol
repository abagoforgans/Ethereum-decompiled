contract main {




// =====================  Runtime code  =====================


const FEE_COLLECTOR = 1


address stor0;
address tokenAddress;
address feeProviderAddress;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balances;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function decimals() {
    return decimals
}

function feeProvider() {
    return feeProviderAddress
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if not arg1:
        emit Error('To cannot be zero');
        return 0
    if arg2 > balances[address(msg.sender)]:
        emit Error('Insufficient balance');
        return 0
    balances[address(msg.sender)] -= arg2
    balances[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not arg2:
        emit Error('To cannot be zero');
        return 0
    if arg3 > balances[address(arg1)]:
        emit Error('Insufficient balance');
        return 0
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        emit Error('Not enough allowance');
        return 0
    balances[address(arg1)] -= arg3
    balances[arg2] += arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function updateFeeProvider(address arg1) {
    if not stor0:
        return 0
    require ext_code.size(stor0)
    call stor0.hasRole(address arg1, bytes32 arg2, address arg3) with:
         gas gas_remaining wei
        args address(this.address), 'admin', msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if not arg1:
        emit Error('Cannot set fee provider to 0');
        return 0
    feeProviderAddress = arg1
    emit FeeProviderUpdated(arg1);
    return 1
}

function setupAmbi2(address arg1) {
    if stor0:
        return 0
    require ext_code.size(arg1)
    call arg1.claimFor(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(arg1)
        call arg1.isOwner(address arg1, address arg2) with:
             gas gas_remaining wei
            args address(this.address), msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            return 0
    stor0 = arg1
    return 1
}

function withdrawFee(address arg1, uint256 arg2) {
    if not stor0:
        return 0
    require ext_code.size(stor0)
    call stor0.hasRole(address arg1, bytes32 arg2, address arg3) with:
         gas gas_remaining wei
        args address(this.address), 'admin', msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if arg2 <= 0:
        emit Error('Cannot withdraw 0');
        return 0
    if arg2 > balances[1]:
        emit Error('Insufficient balance');
        return 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    balances[1] -= arg2
    totalSupply -= arg2
    emit Transfer(address arg1, address arg2, uint256 arg3):
                  arg2,
    emit 0x1: arg2
    emit 0x0: arg2
    return 1
}

function withdraw(address arg1, uint256 arg2) {
    if not arg1:
        emit Error('To cannot be zero');
        return 0
    if arg2 <= 0:
        emit Error('Cannot withdraw 0');
        return 0
    if arg2 > balances[address(msg.sender)]:
        emit Error('Insufficient balance');
        return 0
    balances[address(msg.sender)] -= arg2
    require ext_code.size(feeProviderAddress)
    call feeProviderAddress.0x5722dee0 with:
         gas gas_remaining wei
        args tokenAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 <= ext_call.return_data[0]:
        if arg2 > 0:
            balances[1] += arg2
            emit Transfer(arg2, msg.sender, 1);
    else:
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), arg2 - ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        totalSupply = totalSupply - arg2 + ext_call.return_data[0]
        emit Transfer((arg2 - ext_call.return_data[0]), msg.sender, 0);
        if ext_call.return_data[0] > 0:
            balances[1] += ext_call.return_data[0]
            emit Transfer(ext_call.return_data[0], msg.sender, 1);
    return 1
}

function deposit(uint256 arg1) {
    if arg1 <= 0:
        emit Error('Cannot deposit 0');
        return 0
    require ext_code.size(feeProviderAddress)
    call feeProviderAddress.0xde0d3e77 with:
         gas gas_remaining wei
        args tokenAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    totalSupply += arg1
    if arg1 <= ext_call.return_data[0]:
        if arg1:
            balances[1] += arg1
            emit Transfer(address arg1, address arg2, uint256 arg3):
                          arg1,
            emit 0x0: arg1
            emit 0x1: arg1
    else:
        if arg1 - ext_call.return_data[0]:
            balances[address(msg.sender)] = arg1 - ext_call.return_data[0] + balances[address(msg.sender)]
            emit Transfer((arg1 - ext_call.return_data[0]), 0, msg.sender);
        if ext_call.return_data[0]:
            balances[1] += ext_call.return_data[0]
            emit Transfer(address arg1, address arg2, uint256 arg3):
                          ext_call.return_data[0],
            emit 0x0: ext_call.return_data[0]
            emit 0x1: ext_call.return_data[0]
    return 1
}



}
