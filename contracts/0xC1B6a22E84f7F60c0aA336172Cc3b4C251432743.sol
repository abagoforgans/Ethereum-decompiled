contract main {


// =======================  Init code  ======================


address stor3;

function _fallback() payable {
    stor3 = msg.sender
    return code.data[46 len 7291]
}



// =====================  Runtime code  =====================


#
#  - __transferWithReference(address arg1, uint256 arg2, string arg3, address arg4)
#  - __transferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4, address arg5)
#
const OK = 1


address proxyAddress;
address contractOwner;
address pendingContractOwner;
address serviceControllerAddress;
address dataControllerAddress;
uint256 lockupDate;

function serviceController() {
    return serviceControllerAddress
}

function pendingContractOwner() {
    return pendingContractOwner
}

function lockupDate() {
    return lockupDate
}

function dataController() {
    return dataControllerAddress
}

function contractOwner() {
    return contractOwner
}

function proxy() {
    return proxyAddress
}

function destroy() {
    if contractOwner != msg.sender:
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function __process(bytes arg1, address arg2) payable {
    revert
}

function init(address arg1) {
    if proxyAddress:
        return 0
    proxyAddress = arg1
    return 1
}

function claimContractOwnership() {
    if pendingContractOwner != msg.sender:
        return 0
    contractOwner = pendingContractOwner
    pendingContractOwner = 0
    return 1
}

function changeContractOwnership(address arg1) {
    if contractOwner != msg.sender:
        return 0
    if not arg1:
        return 0
    pendingContractOwner = arg1
    return 1
}

function __approve(address arg1, uint256 arg2, address arg3) {
    if proxyAddress != msg.sender:
        return 0
    require ext_code.size(proxyAddress)
    call proxyAddress.0x7b7054c8 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2, arg3
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function initAtx(address arg1, address arg2, address arg3, uint256 arg4) {
    if contractOwner != msg.sender:
        return 0
    require arg2
    require arg3
    require arg1
    if arg4 <= block.timestamp:
        require not arg4
    if proxyAddress:
        return 0
    proxyAddress = arg1
    serviceControllerAddress = arg2
    dataControllerAddress = arg3
    lockupDate = arg4
    return 1
}



}
