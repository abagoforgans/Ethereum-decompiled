contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 decimals; offset 8
address daiTokenAddress; offset 16
array of uint256 symbol;
array of uint256 name;
uint256 totalSupply;
uint256 sub_0f586cc5;
uint256 totalEthReceived;
uint256 sub_6c3d8558;
uint256 sub_9b45b66e;
mapping of uint256 allowance;
mapping of struct checkDividends;

function name() {
    return name[0 len name.length]
}

function sub_0f586cc5(?) {
    return sub_0f586cc5
}

function totalSupply() {
    return totalSupply
}

function checkDividends(address arg1) {
    require calldata.size - 4 >= 32
    require totalSupply
    return checkDividends[address(arg1)].field_256 + (totalEthReceived * checkDividends[address(arg1)].field_0) - (checkDividends[address(arg1)].field_512 * checkDividends[address(arg1)].field_0) / totalSupply, 
           (sub_9b45b66e * checkDividends[address(arg1)].field_0) - (checkDividends[address(arg1)].field_1024 * checkDividends[address(arg1)].field_0) + checkDividends[address(arg1)].field_768 / totalSupply
}

function decimals() {
    return decimals
}

function tokenHolders(address arg1) {
    require calldata.size - 4 >= 32
    return checkDividends[arg1].field_0, 
           checkDividends[arg1].field_256,
           checkDividends[arg1].field_512,
           checkDividends[arg1].field_768,
           checkDividends[arg1].field_1024
}

function sub_6c3d8558(?) {
    return sub_6c3d8558
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return checkDividends[address(arg1)].field_0
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_9b45b66e(?) {
    return sub_9b45b66e
}

function isLocked() {
    return bool(stor0)
}

function totalEthReceived() {
    return totalEthReceived
}

function daiToken() {
    return daiTokenAddress
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    require msg.value + sub_0f586cc5 >= sub_0f586cc5
    sub_0f586cc5 += msg.value
    require msg.value + totalEthReceived >= totalEthReceived
    totalEthReceived += msg.value
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require allowance[msg.sender][address(arg1)] >= arg2
    require msg.sender
    require arg1
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    require msg.sender
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2 + allowance[msg.sender][address(arg1)]
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function sub_aae9e3f9(?) {
    require ext_code.size(daiTokenAddress)
    staticcall daiTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= sub_6c3d8558
    sub_6c3d8558 = ext_call.return_data[0]
    require ext_call.return_data[0] - sub_6c3d8558 + sub_9b45b66e >= sub_9b45b66e
    sub_9b45b66e = ext_call.return_data[0] - sub_6c3d8558 + sub_9b45b66e
}

function sub_9876b94c(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(daiTokenAddress)
    call daiTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'failed to transfer dai'
    require arg1 + sub_6c3d8558 >= sub_6c3d8558
    sub_6c3d8558 += arg1
    require arg1 + sub_9b45b66e >= sub_9b45b66e
    sub_9b45b66e += arg1
}

function sub_133c9dd0(?) {
    require totalEthReceived >= checkDividends[address(msg.sender)].field_512
    if totalEthReceived - checkDividends[address(msg.sender)].field_512:
        require totalEthReceived - checkDividends[address(msg.sender)].field_512
        require (totalEthReceived * checkDividends[address(msg.sender)].field_0) - (checkDividends[address(msg.sender)].field_512 * checkDividends[address(msg.sender)].field_0) / totalEthReceived - checkDividends[address(msg.sender)].field_512 == checkDividends[address(msg.sender)].field_0
    require (totalEthReceived * checkDividends[address(msg.sender)].field_0) - (checkDividends[address(msg.sender)].field_512 * checkDividends[address(msg.sender)].field_0) + checkDividends[address(msg.sender)].field_256 >= checkDividends[address(msg.sender)].field_256
    checkDividends[address(msg.sender)].field_256 = (totalEthReceived * checkDividends[address(msg.sender)].field_0) - (checkDividends[address(msg.sender)].field_512 * checkDividends[address(msg.sender)].field_0) + checkDividends[address(msg.sender)].field_256
    checkDividends[address(msg.sender)].field_512 = totalEthReceived
    require sub_9b45b66e >= checkDividends[address(msg.sender)].field_1024
    if sub_9b45b66e - checkDividends[address(msg.sender)].field_1024:
        require sub_9b45b66e - checkDividends[address(msg.sender)].field_1024
        require (sub_9b45b66e * checkDividends[address(msg.sender)].field_0) - (checkDividends[address(msg.sender)].field_1024 * checkDividends[address(msg.sender)].field_0) / sub_9b45b66e - checkDividends[address(msg.sender)].field_1024 == checkDividends[address(msg.sender)].field_0
    require (sub_9b45b66e * checkDividends[address(msg.sender)].field_0) - (checkDividends[address(msg.sender)].field_1024 * checkDividends[address(msg.sender)].field_0) + checkDividends[address(msg.sender)].field_768 >= checkDividends[address(msg.sender)].field_768
    checkDividends[address(msg.sender)].field_768 = (sub_9b45b66e * checkDividends[address(msg.sender)].field_0) - (checkDividends[address(msg.sender)].field_1024 * checkDividends[address(msg.sender)].field_0) + checkDividends[address(msg.sender)].field_768
    checkDividends[address(msg.sender)].field_1024 = sub_9b45b66e
    require totalSupply
    if checkDividends[msg.sender].field_256 / totalSupply:
        require checkDividends[msg.sender].field_256 / totalSupply
        require totalSupply * checkDividends[msg.sender].field_256 / totalSupply / checkDividends[msg.sender].field_256 / totalSupply == totalSupply
    require checkDividends[msg.sender].field_256 >= totalSupply * checkDividends[msg.sender].field_256 / totalSupply
    checkDividends[msg.sender].field_256 += -1 * totalSupply * checkDividends[msg.sender].field_256 / totalSupply
    require sub_0f586cc5 >= checkDividends[msg.sender].field_256 / totalSupply
    sub_0f586cc5 -= checkDividends[msg.sender].field_256 / totalSupply
    call msg.sender with:
       value checkDividends[msg.sender].field_256 / totalSupply wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return (checkDividends[msg.sender].field_256 / totalSupply)
}

function sub_b57b3b62(?) {
    require totalEthReceived >= checkDividends[address(msg.sender)].field_512
    if totalEthReceived - checkDividends[address(msg.sender)].field_512:
        require totalEthReceived - checkDividends[address(msg.sender)].field_512
        require (totalEthReceived * checkDividends[address(msg.sender)].field_0) - (checkDividends[address(msg.sender)].field_512 * checkDividends[address(msg.sender)].field_0) / totalEthReceived - checkDividends[address(msg.sender)].field_512 == checkDividends[address(msg.sender)].field_0
    require (totalEthReceived * checkDividends[address(msg.sender)].field_0) - (checkDividends[address(msg.sender)].field_512 * checkDividends[address(msg.sender)].field_0) + checkDividends[address(msg.sender)].field_256 >= checkDividends[address(msg.sender)].field_256
    checkDividends[address(msg.sender)].field_256 = (totalEthReceived * checkDividends[address(msg.sender)].field_0) - (checkDividends[address(msg.sender)].field_512 * checkDividends[address(msg.sender)].field_0) + checkDividends[address(msg.sender)].field_256
    checkDividends[address(msg.sender)].field_512 = totalEthReceived
    require sub_9b45b66e >= checkDividends[address(msg.sender)].field_1024
    if sub_9b45b66e - checkDividends[address(msg.sender)].field_1024:
        require sub_9b45b66e - checkDividends[address(msg.sender)].field_1024
        require (sub_9b45b66e * checkDividends[address(msg.sender)].field_0) - (checkDividends[address(msg.sender)].field_1024 * checkDividends[address(msg.sender)].field_0) / sub_9b45b66e - checkDividends[address(msg.sender)].field_1024 == checkDividends[address(msg.sender)].field_0
    require (sub_9b45b66e * checkDividends[address(msg.sender)].field_0) - (checkDividends[address(msg.sender)].field_1024 * checkDividends[address(msg.sender)].field_0) + checkDividends[address(msg.sender)].field_768 >= checkDividends[address(msg.sender)].field_768
    checkDividends[address(msg.sender)].field_768 = (sub_9b45b66e * checkDividends[address(msg.sender)].field_0) - (checkDividends[address(msg.sender)].field_1024 * checkDividends[address(msg.sender)].field_0) + checkDividends[address(msg.sender)].field_768
    checkDividends[address(msg.sender)].field_1024 = sub_9b45b66e
    require totalSupply
    if checkDividends[msg.sender].field_768 / totalSupply:
        require checkDividends[msg.sender].field_768 / totalSupply
        require totalSupply * checkDividends[msg.sender].field_768 / totalSupply / checkDividends[msg.sender].field_768 / totalSupply == totalSupply
    require checkDividends[msg.sender].field_768 >= totalSupply * checkDividends[msg.sender].field_768 / totalSupply
    checkDividends[msg.sender].field_768 += -1 * totalSupply * checkDividends[msg.sender].field_768 / totalSupply
    require sub_6c3d8558 >= checkDividends[msg.sender].field_768 / totalSupply
    sub_6c3d8558 -= checkDividends[msg.sender].field_768 / totalSupply
    require ext_code.size(daiTokenAddress)
    call daiTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, checkDividends[msg.sender].field_768 / totalSupply
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'failed to transfer dai'
    return (checkDividends[msg.sender].field_768 / totalSupply)
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require totalEthReceived >= checkDividends[address(msg.sender)].field_512
    if totalEthReceived - checkDividends[address(msg.sender)].field_512:
        require totalEthReceived - checkDividends[address(msg.sender)].field_512
        require (totalEthReceived * checkDividends[address(msg.sender)].field_0) - (checkDividends[address(msg.sender)].field_512 * checkDividends[address(msg.sender)].field_0) / totalEthReceived - checkDividends[address(msg.sender)].field_512 == checkDividends[address(msg.sender)].field_0
    require (totalEthReceived * checkDividends[address(msg.sender)].field_0) - (checkDividends[address(msg.sender)].field_512 * checkDividends[address(msg.sender)].field_0) + checkDividends[address(msg.sender)].field_256 >= checkDividends[address(msg.sender)].field_256
    checkDividends[address(msg.sender)].field_256 = (totalEthReceived * checkDividends[address(msg.sender)].field_0) - (checkDividends[address(msg.sender)].field_512 * checkDividends[address(msg.sender)].field_0) + checkDividends[address(msg.sender)].field_256
    checkDividends[address(msg.sender)].field_512 = totalEthReceived
    require sub_9b45b66e >= checkDividends[address(msg.sender)].field_1024
    if sub_9b45b66e - checkDividends[address(msg.sender)].field_1024:
        require sub_9b45b66e - checkDividends[address(msg.sender)].field_1024
        require (sub_9b45b66e * checkDividends[address(msg.sender)].field_0) - (checkDividends[address(msg.sender)].field_1024 * checkDividends[address(msg.sender)].field_0) / sub_9b45b66e - checkDividends[address(msg.sender)].field_1024 == checkDividends[address(msg.sender)].field_0
    require (sub_9b45b66e * checkDividends[address(msg.sender)].field_0) - (checkDividends[address(msg.sender)].field_1024 * checkDividends[address(msg.sender)].field_0) + checkDividends[address(msg.sender)].field_768 >= checkDividends[address(msg.sender)].field_768
    checkDividends[address(msg.sender)].field_768 = (sub_9b45b66e * checkDividends[address(msg.sender)].field_0) - (checkDividends[address(msg.sender)].field_1024 * checkDividends[address(msg.sender)].field_0) + checkDividends[address(msg.sender)].field_768
    checkDividends[address(msg.sender)].field_1024 = sub_9b45b66e
    require checkDividends[address(msg.sender)].field_0 >= arg2
    checkDividends[address(msg.sender)].field_0 -= arg2
    if not checkDividends[arg1].field_512:
        checkDividends[address(arg1)].field_512 = totalEthReceived
    if not checkDividends[address(arg1)].field_1024:
        checkDividends[address(arg1)].field_1024 = sub_9b45b66e
    require totalEthReceived >= checkDividends[address(arg1)].field_512
    if totalEthReceived - checkDividends[address(arg1)].field_512:
        require totalEthReceived - checkDividends[address(arg1)].field_512
        require (totalEthReceived * checkDividends[address(arg1)].field_0) - (checkDividends[address(arg1)].field_512 * checkDividends[address(arg1)].field_0) / totalEthReceived - checkDividends[address(arg1)].field_512 == checkDividends[address(arg1)].field_0
    require (totalEthReceived * checkDividends[address(arg1)].field_0) - (checkDividends[address(arg1)].field_512 * checkDividends[address(arg1)].field_0) + checkDividends[address(arg1)].field_256 >= checkDividends[address(arg1)].field_256
    checkDividends[address(arg1)].field_256 = (totalEthReceived * checkDividends[address(arg1)].field_0) - (checkDividends[address(arg1)].field_512 * checkDividends[address(arg1)].field_0) + checkDividends[address(arg1)].field_256
    checkDividends[address(arg1)].field_512 = totalEthReceived
    require sub_9b45b66e >= checkDividends[address(arg1)].field_1024
    if sub_9b45b66e - checkDividends[address(arg1)].field_1024:
        require sub_9b45b66e - checkDividends[address(arg1)].field_1024
        require (sub_9b45b66e * checkDividends[address(arg1)].field_0) - (checkDividends[address(arg1)].field_1024 * checkDividends[address(arg1)].field_0) / sub_9b45b66e - checkDividends[address(arg1)].field_1024 == checkDividends[address(arg1)].field_0
    require (sub_9b45b66e * checkDividends[address(arg1)].field_0) - (checkDividends[address(arg1)].field_1024 * checkDividends[address(arg1)].field_0) + checkDividends[address(arg1)].field_768 >= checkDividends[address(arg1)].field_768
    checkDividends[address(arg1)].field_768 = (sub_9b45b66e * checkDividends[address(arg1)].field_0) - (checkDividends[address(arg1)].field_1024 * checkDividends[address(arg1)].field_0) + checkDividends[address(arg1)].field_768
    checkDividends[address(arg1)].field_1024 = sub_9b45b66e
    require arg2 + checkDividends[address(arg1)].field_0 >= checkDividends[address(arg1)].field_0
    checkDividends[address(arg1)].field_0 += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg2
    require totalEthReceived >= checkDividends[address(arg1)].field_512
    if totalEthReceived - checkDividends[address(arg1)].field_512:
        require totalEthReceived - checkDividends[address(arg1)].field_512
        require (totalEthReceived * checkDividends[address(arg1)].field_0) - (checkDividends[address(arg1)].field_512 * checkDividends[address(arg1)].field_0) / totalEthReceived - checkDividends[address(arg1)].field_512 == checkDividends[address(arg1)].field_0
    require (totalEthReceived * checkDividends[address(arg1)].field_0) - (checkDividends[address(arg1)].field_512 * checkDividends[address(arg1)].field_0) + checkDividends[address(arg1)].field_256 >= checkDividends[address(arg1)].field_256
    checkDividends[address(arg1)].field_256 = (totalEthReceived * checkDividends[address(arg1)].field_0) - (checkDividends[address(arg1)].field_512 * checkDividends[address(arg1)].field_0) + checkDividends[address(arg1)].field_256
    checkDividends[address(arg1)].field_512 = totalEthReceived
    require sub_9b45b66e >= checkDividends[address(arg1)].field_1024
    if sub_9b45b66e - checkDividends[address(arg1)].field_1024:
        require sub_9b45b66e - checkDividends[address(arg1)].field_1024
        require (sub_9b45b66e * checkDividends[address(arg1)].field_0) - (checkDividends[address(arg1)].field_1024 * checkDividends[address(arg1)].field_0) / sub_9b45b66e - checkDividends[address(arg1)].field_1024 == checkDividends[address(arg1)].field_0
    require (sub_9b45b66e * checkDividends[address(arg1)].field_0) - (checkDividends[address(arg1)].field_1024 * checkDividends[address(arg1)].field_0) + checkDividends[address(arg1)].field_768 >= checkDividends[address(arg1)].field_768
    checkDividends[address(arg1)].field_768 = (sub_9b45b66e * checkDividends[address(arg1)].field_0) - (checkDividends[address(arg1)].field_1024 * checkDividends[address(arg1)].field_0) + checkDividends[address(arg1)].field_768
    checkDividends[address(arg1)].field_1024 = sub_9b45b66e
    require checkDividends[address(arg1)].field_0 >= arg3
    checkDividends[address(arg1)].field_0 -= arg3
    if not checkDividends[arg2].field_512:
        checkDividends[address(arg2)].field_512 = totalEthReceived
    if not checkDividends[address(arg2)].field_1024:
        checkDividends[address(arg2)].field_1024 = sub_9b45b66e
    require totalEthReceived >= checkDividends[address(arg2)].field_512
    if totalEthReceived - checkDividends[address(arg2)].field_512:
        require totalEthReceived - checkDividends[address(arg2)].field_512
        require (totalEthReceived * checkDividends[address(arg2)].field_0) - (checkDividends[address(arg2)].field_512 * checkDividends[address(arg2)].field_0) / totalEthReceived - checkDividends[address(arg2)].field_512 == checkDividends[address(arg2)].field_0
    require (totalEthReceived * checkDividends[address(arg2)].field_0) - (checkDividends[address(arg2)].field_512 * checkDividends[address(arg2)].field_0) + checkDividends[address(arg2)].field_256 >= checkDividends[address(arg2)].field_256
    checkDividends[address(arg2)].field_256 = (totalEthReceived * checkDividends[address(arg2)].field_0) - (checkDividends[address(arg2)].field_512 * checkDividends[address(arg2)].field_0) + checkDividends[address(arg2)].field_256
    checkDividends[address(arg2)].field_512 = totalEthReceived
    require sub_9b45b66e >= checkDividends[address(arg2)].field_1024
    if sub_9b45b66e - checkDividends[address(arg2)].field_1024:
        require sub_9b45b66e - checkDividends[address(arg2)].field_1024
        require (sub_9b45b66e * checkDividends[address(arg2)].field_0) - (checkDividends[address(arg2)].field_1024 * checkDividends[address(arg2)].field_0) / sub_9b45b66e - checkDividends[address(arg2)].field_1024 == checkDividends[address(arg2)].field_0
    require (sub_9b45b66e * checkDividends[address(arg2)].field_0) - (checkDividends[address(arg2)].field_1024 * checkDividends[address(arg2)].field_0) + checkDividends[address(arg2)].field_768 >= checkDividends[address(arg2)].field_768
    checkDividends[address(arg2)].field_768 = (sub_9b45b66e * checkDividends[address(arg2)].field_0) - (checkDividends[address(arg2)].field_1024 * checkDividends[address(arg2)].field_0) + checkDividends[address(arg2)].field_768
    checkDividends[address(arg2)].field_1024 = sub_9b45b66e
    require arg3 + checkDividends[address(arg2)].field_0 >= checkDividends[address(arg2)].field_0
    checkDividends[address(arg2)].field_0 += arg3
    emit Transfer(arg3, arg1, arg2);
    require allowance[address(arg1)][msg.sender] >= arg3
    require arg1
    require msg.sender
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}



}
