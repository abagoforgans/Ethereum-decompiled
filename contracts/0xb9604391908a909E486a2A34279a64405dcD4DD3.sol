contract main {


// =======================  Init code  ======================


address stor1;
address stor2;
address stor3;

function _fallback() {
    stor1 = msg.sender
    emit LogSetOwner(msg.sender);
    require code.data[12031 len 20]
    stor3 = code.data[12031 len 20]
    create contract with 0 wei
                    code: code.data[3975 len 8044], 'BDB'
    require create.new_address
    stor2 = address(create.new_address)
    require ext_code.size(stor2)
    call stor2.setName(bytes32 arg1) with:
         gas gas_remaining - 710 wei
        args 'BDB'
    require ext_call.success
    require ext_code.size(stor2)
    call stor2.0x69d3e20e with:
         gas gas_remaining - 710 wei
        args 200000000 * 10^18
    require ext_call.success
    require ext_code.size(stor2)
    call stor2.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args stor3, 200000000 * 10^18
    require ext_call.success
    require ext_code.size(stor2)
    call stor2.0x13af4035 with:
         gas gas_remaining - 710 wei
        args stor3
    require ext_call.success
    return code.data[1397 len 2578]
}



// =====================  Runtime code  =====================


const TOTAL_SUPPLY = 200000000 * 10^18


address authorityAddress;
uint8 stor1; offset 160
uint128 stor1; offset 160
address owner;
address sub_298b6f64Address;
address sub_e5466daeAddress;

function sub_298b6f64(?) {
    return sub_298b6f64Address
}

function stopped() {
    return bool(uint8(stor1.field_160))
}

function owner() {
    return owner
}

function authority() {
    return authorityAddress
}

function sub_e5466dae(?) {
    return sub_e5466daeAddress
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
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
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
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
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
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
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
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    Mask(96, 0, stor1.field_160) = 0
}



}
