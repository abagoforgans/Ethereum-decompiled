contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[49 len 1394]
}



// =====================  Runtime code  =====================


address owner;
address coinAddress;
address icoAddress;
address devAddress;

function coin() {
    return coinAddress
}

function ico() {
    return icoAddress
}

function owner() {
    return owner
}

function dev() {
    return devAddress
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function setAddresses(address arg1, address arg2, address arg3) {
    require owner == msg.sender
    icoAddress = arg3
    devAddress = arg1
    coinAddress = arg2
}

function getStats() {
    require ext_code.size(icoAddress)
    call icoAddress.0x6139faa6 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(coinAddress)
    call coinAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(icoAddress)
    call icoAddress.0xbc697319 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return coinAddress, 
           icoAddress,
           ext_call.return_data[0],
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[0] / 10^18,
           ext_call.return_data[0] / 10^18,
           eth.balance(icoAddress) + eth.balance(devAddress) / 10^15
}



}
