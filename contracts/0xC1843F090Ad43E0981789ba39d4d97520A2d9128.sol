contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 decimals; offset 8
address daiTokenAddress; offset 16
address owner;
array of uint256 symbol;
array of uint256 name;
uint256 stor4;
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

function checkDividends(address arg1) {
    require calldata.size - 4 >= 32
    require stor4
    return checkDividends[address(arg1)].field_256 + (totalEthReceived * checkDividends[address(arg1)].field_0) - (checkDividends[address(arg1)].field_512 * checkDividends[address(arg1)].field_0) / stor4, 
           (sub_9b45b66e * checkDividends[address(arg1)].field_0) - (checkDividends[address(arg1)].field_1024 * checkDividends[address(arg1)].field_0) + checkDividends[address(arg1)].field_768 / stor4
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

function owner() {
    return owner
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

function killContract() {
    if owner != msg.sender:
        revert with 0, 'owner only'
    if stor0:
        revert with 0, 'unlocked only'
    selfdestruct(owner)
}

function lock() {
    if owner != msg.sender:
        revert with 0, 'owner only'
    stor0 = 1
}

function _fallback() payable {
    require msg.value + sub_0f586cc5 >= sub_0f586cc5
    sub_0f586cc5 += msg.value
    require msg.value + totalEthReceived >= totalEthReceived
    totalEthReceived += msg.value
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require calldata.size >= 68
    allowance[msg.sender][address(arg1)] = arg2
    emit ApprovalEvent(arg2, msg.sender, arg1);
    return 1
}

function sub_9876b94c(?) payable {
    require calldata.size - 4 >= 32
    require msg.value + sub_0f586cc5 >= sub_0f586cc5
    sub_0f586cc5 += msg.value
    require msg.value + totalEthReceived >= totalEthReceived
    totalEthReceived += msg.value
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
    require stor4
    if checkDividends[msg.sender].field_256 / stor4:
        require checkDividends[msg.sender].field_256 / stor4
        require stor4 * checkDividends[msg.sender].field_256 / stor4 / checkDividends[msg.sender].field_256 / stor4 == stor4
    require checkDividends[msg.sender].field_256 >= stor4 * checkDividends[msg.sender].field_256 / stor4
    checkDividends[msg.sender].field_256 += -1 * stor4 * checkDividends[msg.sender].field_256 / stor4
    require sub_0f586cc5 >= checkDividends[msg.sender].field_256 / stor4
    sub_0f586cc5 -= checkDividends[msg.sender].field_256 / stor4
    call msg.sender with:
       value checkDividends[msg.sender].field_256 / stor4 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return (checkDividends[msg.sender].field_256 / stor4)
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
    require stor4
    if checkDividends[msg.sender].field_768 / stor4:
        require checkDividends[msg.sender].field_768 / stor4
        require stor4 * checkDividends[msg.sender].field_768 / stor4 / checkDividends[msg.sender].field_768 / stor4 == stor4
    require checkDividends[msg.sender].field_768 >= stor4 * checkDividends[msg.sender].field_768 / stor4
    checkDividends[msg.sender].field_768 += -1 * stor4 * checkDividends[msg.sender].field_768 / stor4
    require sub_6c3d8558 >= checkDividends[msg.sender].field_768 / stor4
    sub_6c3d8558 -= checkDividends[msg.sender].field_768 / stor4
    require ext_code.size(daiTokenAddress)
    call daiTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, checkDividends[msg.sender].field_768 / stor4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'failed to transfer dai'
    return (checkDividends[msg.sender].field_768 / stor4)
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require calldata.size >= 100
    if arg3 > checkDividends[address(arg1)].field_0:
        return 0
    if arg3 > allowance[address(arg1)][msg.sender]:
        return 0
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
    require allowance[address(arg1)][msg.sender] >= arg3
    allowance[address(arg1)][msg.sender] -= arg3
    emit TransferEvent(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require calldata.size >= 68
    if arg2 > checkDividends[msg.sender].field_0:
        return 0
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
    require checkDividends[msg.sender].field_0 >= arg2
    checkDividends[msg.sender].field_0 -= arg2
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
    emit TransferEvent(arg2, msg.sender, arg1);
    return 1
}



}
