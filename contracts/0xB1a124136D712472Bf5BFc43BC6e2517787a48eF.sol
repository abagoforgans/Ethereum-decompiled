contract main {




// =====================  Runtime code  =====================


uint256 timestamp;
address owner;
address sub_17a5410bAddress;
array of uint256 word;
uint256 sub_e0152374;
array of uint256 sub_a9881c37;

function sub_17a5410b(?) {
    return sub_17a5410bAddress
}

function word() {
    return word[0 len word.length]
}

function owner() {
    return owner
}

function sub_a9881c37(?) {
    return sub_a9881c37[0 len sub_a9881c37.length]
}

function timestamp() {
    return timestamp
}

function sub_e0152374(?) {
    return sub_e0152374
}

function kill() {
    require owner == msg.sender
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function transferOwnershipTo(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function sub_f6345414(?) {
    require owner == msg.sender
    require ext_code.size(0xb0a4e4ce8cfd6e549d59e42af79c227752b305ea)
    delegate 0xb0a4e4ce8cfd6e549d59e42af79c227752b305ea.0x52810427 with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=arg1[all])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_17a5410bAddress = address(delegate.return_data[0])
    if sub_17a5410bAddress:
        require ext_code.size(sub_17a5410bAddress)
        call sub_17a5410bAddress.upgrade(address arg1) with:
             gas gas_remaining wei
            args sub_17a5410bAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
