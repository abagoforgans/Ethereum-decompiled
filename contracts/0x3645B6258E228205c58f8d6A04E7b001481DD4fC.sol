contract main {




// =====================  Runtime code  =====================


const TOTAL_SUPPLY = 300000000 * 10^18


address authorityAddress;
uint8 stor1; offset 160
uint128 stor1; offset 160
address owner;
address sub_de7a0782Address;
address sub_abb7543cAddress;
address sub_62064da2Address;
uint128 sub_50db83f7; offset 160
address sub_3807b58aAddress;

function sub_3807b58a(?) {
    return sub_3807b58aAddress
}

function sub_50db83f7(?) {
    return (sub_50db83f7 << 224)
}

function sub_62064da2(?) {
    return sub_62064da2Address
}

function stopped() {
    return bool(uint8(stor1.field_160))
}

function owner() {
    return owner
}

function sub_abb7543c(?) {
    return sub_abb7543cAddress
}

function authority() {
    return authorityAddress
}

function sub_de7a0782(?) {
    return sub_de7a0782Address
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    owner = arg1
    emit LogSetOwner(owner);
}

function setAuthority(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    authorityAddress = arg1
    emit LogSetAuthority(authorityAddress);
}

function stop() {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    Mask(96, 0, stor1.field_160) = 1
}

function start() {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    Mask(96, 0, stor1.field_160) = 0
}



}
