contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;

function _fallback() {
    require code.data[1482 len 20]
    require code.data[1514 len 20]
    stor0 = msg.sender
    stor1 = code.data[1482 len 20]
    stor2 = code.data[1514 len 20]
    return code.data[167 len 1303]
}



// =====================  Runtime code  =====================


address owner;
address icoAddress;
address easyMineTokenAddress;
uint256 totalContributed;

function totalContributed() {
    return totalContributed
}

function icoAddress() {
    return icoAddress
}

function owner() {
    return owner
}

function easyMineToken() {
    return easyMineTokenAddress
}

function withdrawAll() {
    require owner == msg.sender
    require ext_code.size(easyMineTokenAddress)
    call easyMineTokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(easyMineTokenAddress)
    call easyMineTokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    if icoAddress != msg.sender:
        require msg.value > 0
        require ext_code.size(easyMineTokenAddress)
        call easyMineTokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        call icoAddress with:
           value msg.value wei
             gas gas_remaining - 34710 wei
        if eth.balance(this.address) > eth.balance(this.address):
            call msg.sender with:
                 gas 2300 wei
            require ext_call.success
        totalContributed += msg.value
        require ext_code.size(easyMineTokenAddress)
        call easyMineTokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
}



}
