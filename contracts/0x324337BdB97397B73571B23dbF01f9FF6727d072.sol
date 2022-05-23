contract main {




// =====================  Runtime code  =====================


address frontWindowAddress;
address salesPipeAddress;
address ercAddress;
address owner;

function owner() {
    return owner
}

function salesPipe() {
    return salesPipeAddress
}

function erc() {
    return ercAddress
}

function frontWindow() {
    return frontWindowAddress
}

function setOwner(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function setERC(address arg1) {
    require msg.sender == owner
    ercAddress = arg1
}

function setSalesPipe(address arg1) {
    require msg.sender == owner
    salesPipeAddress = arg1
}

function setFrontWindow(address arg1) {
    require msg.sender == owner
    frontWindowAddress = arg1
}

function buyFST() payable {
    call salesPipeAddress with:
       value msg.value wei
         gas gas_remaining wei
    require ext_call.success
    require ext_code.size(ercAddress)
    call ercAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(ercAddress)
        call ercAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    if eth.balance(this.address) > 0:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function _fallback() payable {
    call salesPipeAddress with:
       value msg.value wei
         gas gas_remaining wei
    require ext_call.success
    require ext_code.size(ercAddress)
    call ercAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(ercAddress)
        call ercAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    if eth.balance(this.address) > 0:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function buyFST(address arg1) payable {
    call salesPipeAddress with:
       value msg.value wei
         gas gas_remaining wei
    require ext_call.success
    require ext_code.size(ercAddress)
    call ercAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(ercAddress)
        call ercAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    if eth.balance(this.address) > 0:
        call arg1 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}



}
