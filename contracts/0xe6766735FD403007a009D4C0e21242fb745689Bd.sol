contract main {




// =====================  Runtime code  =====================


const sub_62b31d6f(?) = 0x1999999999999999999999999999999999999999999999999999999999999999


address owner;
address newOwner;
uint256 sub_cf004217;
address rateAdminAddress;
uint256 etherRate;
address sub_9c213fb4Address;
address tokenFactoryAddress;
address sub_658e4506Address;
array of struct projects;

function projects(uint256 arg1) {
    require arg1 < projects.length
    mem[128] = projects[arg1].field_0
    idx = 128
    s = 0
    while projects[arg1].length + 96 > idx:
        mem[idx + 32] = projects[(4 * arg1) + s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=projects[arg1].length, data=mem[128 len projects[arg1].length]), 
           projects[arg1].field_256,
           projects[arg1].field_512,
           projects[arg1].field_768
}

function sub_658e4506(?) {
    return sub_658e4506Address
}

function owner() {
    return owner
}

function sub_9c213fb4(?) {
    return sub_9c213fb4Address
}

function projectsCount() {
    return projects.length
}

function rateAdmin() {
    return rateAdminAddress
}

function sub_cf004217(?) {
    return sub_cf004217
}

function etherRate() {
    return etherRate
}

function newOwner() {
    return newOwner
}

function tokenFactory() {
    return tokenFactoryAddress
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Restricted to owner'
    if not arg1:
        revert with 0, 'New owner is zero'
    newOwner = arg1
}

function sub_65e8c444(?) {
    if owner != msg.sender:
        revert with 0, 'Restricted to owner'
    if not arg1:
        revert with 0, 'Crowdsale factory is zero'
    sub_658e4506Address = arg1
}

function setWhitelist(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Restricted to owner'
    if not arg1:
        revert with 0, 'Whitelist is zero'
    sub_9c213fb4Address = arg1
}

function setTokenFactory(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Restricted to owner'
    if not arg1:
        revert with 0, 'Token factory is zero'
    tokenFactoryAddress = arg1
}

function claimOwnership() {
    if newOwner != msg.sender:
        revert with 0, 'Restricted to new owner'
    if owner != msg.sender:
        emit OwnershipTransferred(owner, msg.sender);
        owner = msg.sender
}

function transferOwnershipUnsafe(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Restricted to owner'
    if not arg1:
        revert with 0, 'New owner is zero'
    if owner != arg1:
        emit OwnershipTransferred(owner, arg1);
        owner = arg1
}

function setRateAdmin(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Restricted to owner'
    if not arg1:
        revert with 0, 'New rate admin is zero'
    if rateAdminAddress != arg1:
        emit 0x5405b451: rateAdminAddress, arg1
        rateAdminAddress = arg1
}

function setRate(uint256 arg1) {
    if rateAdminAddress != msg.sender:
        revert with 0, 'Restricted to rate admin'
    if etherRate / 10 >= arg1:
        revert with 0, 'Rate change too big'
    if arg1 >= 10 * etherRate:
        revert with 0, 'Rate change too big'
    if arg1 != etherRate:
        emit RateChange(etherRate, arg1);
        etherRate = arg1
}

function sub_d1d46a02(?) {
    if owner != msg.sender:
        revert with 0, 'Restricted to owner'
    if not sub_9c213fb4Address:
        revert with 0, 'Whitelist is zero'
    if not tokenFactoryAddress:
        revert with 0, 'Token factory is zero'
    if not sub_658e4506Address:
        revert with 0, 'Crowdsale factory is zero'
    require ext_code.size(tokenFactoryAddress)
    call tokenFactoryAddress.0x831ff629 with:
         gas gas_remaining wei
        args 0, 192, arg1.length + 224, sub_9c213fb4Address, arg4, address(arg5), address(arg6), arg1.length, arg1[all], arg2.length, arg2[all]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_658e4506Address)
    call sub_658e4506Address.0x7503661c with:
         gas gas_remaining wei
        args 0, 0, arg3, call.data[196 len 192], call.data[388 len 96], call.data[484 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).setMinter(address arg1) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa824c9d2 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa824c9d2 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    projects.length++
    projects[projects.length][].field_0 = Array(len=arg1.length, data=arg1[all])
    projects[projects.length].field_256 = sub_9c213fb4Address
    projects[projects.length].field_512 = address(ext_call.return_data[0])
    projects[projects.length].field_768 = address(ext_call.return_data[0])
    emit 0x5a97cc5b: sub_9c213fb4Address, projects.length - 1, address(ext_call.return_data[0]), address(ext_call.return_data[0])
}



}
