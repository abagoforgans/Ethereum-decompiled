contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 5236]




// =====================  Runtime code  =====================


address stor0;
uint32 stor1;
address assetProxyAddress;
address vestingAddress;
uint256 paymentInterval;
uint256 schedule;
uint256 presaleDeadline;

function assetProxy() {
    return address(assetProxyAddress)
}

function paymentInterval() {
    return paymentInterval
}

function vesting() {
    return vestingAddress
}

function schedule() {
    return schedule
}

function presaleDeadline() {
    return presaleDeadline
}

function _fallback() payable {
    revert
}

function totalSupply() {
    require ext_code.size(address(assetProxyAddress))
    call address(assetProxyAddress).0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function transferToICAP(bytes32 arg1, uint256 arg2) {
    require ext_code.size(address(assetProxyAddress))
    call address(assetProxyAddress).transferFromToICAP(address arg1, bytes32 arg2, uint256 arg3) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1, arg2
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function setVesting(address arg1) {
    if not stor0:
        return 0
    require ext_code.size(stor0)
    call stor0.hasRole(address arg1, bytes32 arg2, address arg3) with:
         gas gas_remaining - 710 wei
        args address(this.address), 'admin', msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    require not vestingAddress
    vestingAddress = arg1
    return 1
}

function balanceOf(address arg1) {
    require ext_code.size(address(assetProxyAddress))
    call address(assetProxyAddress).0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(vestingAddress)
    call vestingAddress.0x7a6cb1aa with:
         gas gas_remaining - 710 wei
        args address(arg1), address(assetProxyAddress)
    require ext_call.success
    return (2 * ext_call.return_data[0])
}

function setIntervalSchedulePresale(uint256 arg1, uint256 arg2, uint256 arg3) {
    if not stor0:
        return 0
    require ext_code.size(stor0)
    call stor0.hasRole(address arg1, bytes32 arg2, address arg3) with:
         gas gas_remaining - 710 wei
        args address(this.address), 'admin', msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    paymentInterval = arg1
    schedule = arg2
    presaleDeadline = arg3
    return 1
}

function setupAmbi2(address arg1) {
    if stor0:
        return 0
    require ext_code.size(arg1)
    call arg1.claimFor(address arg1, address arg2) with:
         gas gas_remaining - 710 wei
        args address(this.address), msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        require ext_code.size(arg1)
        call arg1.isOwner(address arg1, address arg2) with:
             gas gas_remaining - 710 wei
            args address(this.address), msg.sender
        require ext_call.success
        if not ext_call.return_data[0]:
            return 0
    stor0 = arg1
    return 1
}

function setAssetProxy(address arg1) {
    if not stor0:
        return 0
    require ext_code.size(stor0)
    call stor0.hasRole(address arg1, bytes32 arg2, address arg3) with:
         gas gas_remaining - 710 wei
        args address(this.address), 'admin', msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    require not address(assetProxyAddress)
    require vestingAddress
    address(assetProxyAddress) = arg1
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args vestingAddress, -1
    require ext_call.success
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require ext_code.size(address(assetProxyAddress))
    if block.timestamp >= presaleDeadline:
        call address(assetProxyAddress).0x23b872dd with:
             gas gas_remaining - 710 wei
            args msg.sender, address(arg1), arg2
        require ext_call.success
        return bool(ext_call.return_data[0])
    call address(assetProxyAddress).0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), arg2
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(vestingAddress)
    call vestingAddress.0x32f637db with:
         gas gas_remaining - 710 wei
        args 0, 0, uint32(stor1), arg2, 1, paymentInterval, schedule
    require ext_call.success
    require ext_call.return_data[0]
    return 1
}

function transferWithReference(address arg1, uint256 arg2, string arg3) {
    require ext_code.size(address(assetProxyAddress))
    if block.timestamp >= presaleDeadline:
        call address(assetProxyAddress).transferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4) with:
             gas gas_remaining - 710 wei
            args msg.sender, address(arg1), arg2, Array(len=arg3.length, data=arg3[all])
        require ext_call.success
        return bool(ext_call.return_data[0])
    call address(assetProxyAddress).transferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), arg2, Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(vestingAddress)
    call vestingAddress.0x32f637db with:
         gas gas_remaining - 710 wei
        args address(arg1), address(assetProxyAddress), arg2, 1, paymentInterval, schedule
    require ext_call.success
    require ext_call.return_data[0]
    return 1
}



}
