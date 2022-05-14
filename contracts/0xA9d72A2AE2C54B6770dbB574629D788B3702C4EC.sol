contract main {




// =====================  Runtime code  =====================


const weiBalance = eth.balance(this.address)


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address oracleAddress; offset 8
uint256 sub_94ab8a8b;
uint256 sub_0bbe1e80;
uint256 sub_c129e7ab;
uint256 sub_cd059e5a;
uint256 sub_57651d86;
uint256 sub_4ba8dfc6;
uint256 sub_491a1200;
uint256 sub_7ffc8a66;
uint256 sub_94f8a7da;

function name() {
    return name[0 len name.length]
}

function sub_0bbe1e80(?) {
    return sub_0bbe1e80
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function sub_491a1200(?) {
    return sub_491a1200
}

function sub_4ba8dfc6(?) {
    return sub_4ba8dfc6
}

function sub_57651d86(?) {
    return sub_57651d86
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function oracle() {
    return oracleAddress
}

function sub_7ffc8a66(?) {
    return sub_7ffc8a66
}

function owner() {
    return owner
}

function sub_94ab8a8b(?) {
    return sub_94ab8a8b
}

function sub_94f8a7da(?) {
    return sub_94f8a7da
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_c129e7ab(?) {
    return sub_c129e7ab
}

function sub_cd059e5a(?) {
    return sub_cd059e5a
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function setOracleAddress(address arg1) {
    require msg.sender == owner
    oracleAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_20b9bffc(?) {
    require msg.sender == owner
    require arg2 <= sub_491a1200
    require arg1
    sub_491a1200 -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    return 1
}

function weiToOwner(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 <= eth.balance(this.address)
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require block.timestamp >= sub_94f8a7da
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
    require block.timestamp >= sub_94f8a7da
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    if msg.value < 5 * 10^14:
        revert with 0, 'tx value'
    if block.timestamp > sub_57651d86:
        revert with 0, 'second phase ended'
    require ext_code.size(oracleAddress)
    call oracleAddress.0xc1ceee55 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp >= sub_cd059e5a:
        require sub_c129e7ab
        if msg.value * ext_call.return_data[0] / sub_c129e7ab <= 0:
            revert with 0, 'token num less or equal to zero'
        if sub_94ab8a8b + (msg.value * ext_call.return_data[0] / sub_c129e7ab) > totalSupply - sub_7ffc8a66:
            revert with 0, 'tokens limit'
        balanceOf[address(msg.sender)] += msg.value * ext_call.return_data[0] / sub_c129e7ab
        sub_94ab8a8b += msg.value * ext_call.return_data[0] / sub_c129e7ab
        emit Transfer((msg.value * ext_call.return_data[0] / sub_c129e7ab), 0, msg.sender);
    else:
        if sub_94ab8a8b >= totalSupply - sub_4ba8dfc6 - sub_7ffc8a66:
            require sub_c129e7ab
            if msg.value * ext_call.return_data[0] / sub_c129e7ab <= 0:
                revert with 0, 'token num less or equal to zero'
            if sub_94ab8a8b + (msg.value * ext_call.return_data[0] / sub_c129e7ab) > totalSupply - sub_7ffc8a66:
                revert with 0, 'tokens limit'
            balanceOf[address(msg.sender)] += msg.value * ext_call.return_data[0] / sub_c129e7ab
            sub_94ab8a8b += msg.value * ext_call.return_data[0] / sub_c129e7ab
            emit Transfer((msg.value * ext_call.return_data[0] / sub_c129e7ab), 0, msg.sender);
        else:
            require sub_0bbe1e80
            if totalSupply - sub_4ba8dfc6 - sub_7ffc8a66 >= sub_94ab8a8b + (msg.value * ext_call.return_data[0] / sub_0bbe1e80):
                if msg.value * ext_call.return_data[0] / sub_0bbe1e80 <= 0:
                    revert with 0, 'token num less or equal to zero'
                if sub_94ab8a8b + (msg.value * ext_call.return_data[0] / sub_0bbe1e80) > totalSupply - sub_7ffc8a66:
                    revert with 0, 'tokens limit'
                balanceOf[address(msg.sender)] += msg.value * ext_call.return_data[0] / sub_0bbe1e80
                sub_94ab8a8b += msg.value * ext_call.return_data[0] / sub_0bbe1e80
                emit Transfer((msg.value * ext_call.return_data[0] / sub_0bbe1e80), 0, msg.sender);
            else:
                if sub_94ab8a8b + (msg.value * ext_call.return_data[0] / sub_0bbe1e80) - totalSupply + sub_4ba8dfc6 + sub_7ffc8a66 <= 0:
                    if msg.value * ext_call.return_data[0] / sub_0bbe1e80 <= 0:
                        revert with 0, 'token num less or equal to zero'
                    if sub_94ab8a8b + (msg.value * ext_call.return_data[0] / sub_0bbe1e80) > totalSupply - sub_7ffc8a66:
                        revert with 0, 'tokens limit'
                    balanceOf[address(msg.sender)] += msg.value * ext_call.return_data[0] / sub_0bbe1e80
                    sub_94ab8a8b += msg.value * ext_call.return_data[0] / sub_0bbe1e80
                    emit Transfer((msg.value * ext_call.return_data[0] / sub_0bbe1e80), 0, msg.sender);
                else:
                    require ext_call.return_data[0]
                    require sub_c129e7ab
                    if -sub_94ab8a8b + totalSupply - sub_4ba8dfc6 - sub_7ffc8a66 + ((sub_94ab8a8b * sub_0bbe1e80) + (msg.value * ext_call.return_data[0] / sub_0bbe1e80 * sub_0bbe1e80) - (totalSupply * sub_0bbe1e80) + (sub_4ba8dfc6 * sub_0bbe1e80) + (sub_7ffc8a66 * sub_0bbe1e80) / ext_call.return_data[0] * ext_call.return_data[0] / sub_c129e7ab) <= 0:
                        revert with 0, 'token num less or equal to zero'
                    if -sub_4ba8dfc6 + ((sub_94ab8a8b * sub_0bbe1e80) + (msg.value * ext_call.return_data[0] / sub_0bbe1e80 * sub_0bbe1e80) - (totalSupply * sub_0bbe1e80) + (sub_4ba8dfc6 * sub_0bbe1e80) + (sub_7ffc8a66 * sub_0bbe1e80) / ext_call.return_data[0] * ext_call.return_data[0] / sub_c129e7ab) > 0:
                        revert with 0, 'tokens limit'
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - sub_94ab8a8b + totalSupply - sub_4ba8dfc6 - sub_7ffc8a66 + ((sub_94ab8a8b * sub_0bbe1e80) + (msg.value * ext_call.return_data[0] / sub_0bbe1e80 * sub_0bbe1e80) - (totalSupply * sub_0bbe1e80) + (sub_4ba8dfc6 * sub_0bbe1e80) + (sub_7ffc8a66 * sub_0bbe1e80) / ext_call.return_data[0] * ext_call.return_data[0] / sub_c129e7ab)
                    sub_94ab8a8b = totalSupply - sub_4ba8dfc6 - sub_7ffc8a66 + ((sub_94ab8a8b * sub_0bbe1e80) + (msg.value * ext_call.return_data[0] / sub_0bbe1e80 * sub_0bbe1e80) - (totalSupply * sub_0bbe1e80) + (sub_4ba8dfc6 * sub_0bbe1e80) + (sub_7ffc8a66 * sub_0bbe1e80) / ext_call.return_data[0] * ext_call.return_data[0] / sub_c129e7ab)
                    emit Transfer((-sub_94ab8a8b + totalSupply - sub_4ba8dfc6 - sub_7ffc8a66 + ((sub_94ab8a8b * sub_0bbe1e80) + (msg.value * ext_call.return_data[0] / sub_0bbe1e80 * sub_0bbe1e80) - (totalSupply * sub_0bbe1e80) + (sub_4ba8dfc6 * sub_0bbe1e80) + (sub_7ffc8a66 * sub_0bbe1e80) / ext_call.return_data[0] * ext_call.return_data[0] / sub_c129e7ab)), 0, msg.sender);
}



}
