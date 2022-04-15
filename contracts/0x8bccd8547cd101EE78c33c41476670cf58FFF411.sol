contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 1984]




// =====================  Runtime code  =====================


address proxyAddress;
uint256 icoUsd;
uint256 icoEth;
uint256 icoBtc;
uint256 icoLtc;

function icoEth() {
    return icoEth
}

function icoLtc() {
    return icoLtc
}

function icoBtc() {
    return icoBtc
}

function icoUsd() {
    return icoUsd
}

function proxy() {
    return proxyAddress
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

function initBMC(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    if icoUsd != 0:
        return 0
    if icoEth:
        return 0
    if icoBtc:
        return 0
    if icoLtc:
        return 0
    icoUsd = arg2
    icoEth = arg3
    icoBtc = arg4
    icoLtc = arg5
    if not proxyAddress:
        proxyAddress = arg1
    return 1
}

function __transferWithReference(address arg1, uint256 arg2, string arg3, address arg4) {
    if proxyAddress != msg.sender:
        return 0
    require ext_code.size(proxyAddress)
    call proxyAddress.0x6a630ee7 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2, Array(len=arg3.length, data=arg3[all]), address(arg4)
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function __transferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4, address arg5) {
    if proxyAddress != msg.sender:
        return 0
    require ext_code.size(proxyAddress)
    call proxyAddress.0xec698a28 with:
         gas gas_remaining - 710 wei
        args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=arg4[all]), address(arg5)
    require ext_call.success
    return bool(ext_call.return_data[0])
}



}
