contract main {


// =======================  Init code  ======================


address stor1;
address stor2;
address stor3;

function _fallback() {
    stor1 = msg.sender
    emit LogSetOwner(msg.sender);
    stor2 = code.data[2526 len 20]
    stor3 = code.data[2558 len 20]
    return code.data[188 len 2326]
}



// =====================  Runtime code  =====================


address authorityAddress;
address owner;
address saiAddress;
address sinAddress;

function sin() {
    return sinAddress
}

function owner() {
    return owner
}

function sai() {
    return saiAddress
}

function authority() {
    return authorityAddress
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.0xb7009613 with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    owner = arg1
    emit LogSetOwner(arg1);
}

function setAuthority(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.0xb7009613 with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    authorityAddress = arg1
    emit LogSetAuthority(arg1);
}

function sub_379f5217(?) {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.0xb7009613 with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    require ext_code.size(address(arg1))
    call address(arg1).0x7261e469 with:
         gas gas_remaining - 710 wei
        args saiAddress, uint128(arg2)
    require ext_call.success
    require ext_code.size(address(arg1))
    call address(arg1).0x7261e469 with:
         gas gas_remaining - 710 wei
        args sinAddress, uint128(arg2)
    require ext_call.success
}

function sub_a57d9ad3(?) {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.0xb7009613 with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    require ext_code.size(address(arg1))
    call address(arg1).0xbe29184f with:
         gas gas_remaining - 710 wei
        args saiAddress, uint128(arg2)
    require ext_call.success
    require ext_code.size(address(arg1))
    call address(arg1).0xbe29184f with:
         gas gas_remaining - 710 wei
        args sinAddress, uint128(arg2)
    require ext_call.success
}

function heal(address arg1) {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, cd[36]
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.0xb7009613 with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    require ext_code.size(saiAddress)
    call saiAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[0] == ext_call.return_data[16 len 16]
    require ext_code.size(sinAddress)
    call sinAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[0] == ext_call.return_data[16 len 16]
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, cd[36]
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.0xb7009613 with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0x7261e469 with:
         gas gas_remaining - 710 wei
        args saiAddress, uint128(ext_call.return_data[0])
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0x7261e469 with:
         gas gas_remaining - 710 wei
        args sinAddress, uint128(ext_call.return_data[0])
    require ext_call.success
}



}
