contract main {


// =======================  Init code  ======================


address stor1;
bool stor5; offset 256
uint8 stor5;
uint8 stor5; offset 96
uint128 stor5; offset 8
uint128 stor5; offset 104

function _fallback() payable {
    uint8(stor5.field_0) = 1
    Mask(88, 0, stor5.field_8) = 0
    uint8(stor5.field_96) = 1
    Mask(88, 0, stor5.field_104) = 0
    stor5.field_256 % 1 = 0
    stor1 = msg.sender
    emit LogSetOwner(msg.sender);
    return code.data[145 len 4578]
}



// =====================  Runtime code  =====================


#
#  - poke(bytes32 arg1)
#  - poke()
#  - compute()
#
address authorityAddress;
uint8 stor1; offset 160
address owner;
uint256 read;
mapping of address values;
mapping of uint128 indexes;
uint8 stor5;
uint128 stor5; offset 8
uint128 next;
uint128 min; offset 96

function indexes(address arg1) {
    return Mask(96, 160, indexes[arg1])
}

function next() {
    return Mask(96, 160, next)
}

function read() {
    require stor1
    return read
}

function values(bytes12 arg1) {
    return values[Mask(96, 160, arg1)]
}

function owner() {
    return owner
}

function authority() {
    return authorityAddress
}

function min() {
    return min
}

function _fallback() payable {
    revert
}

function peek() {
    return read, bool(stor1)
}

function setOwner(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
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
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    authorityAddress = arg1
    emit LogSetAuthority(arg1);
}

function void() {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    stor1 = 0
}

function unset(bytes12 arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    require ext_code.size(this.address)
    call this.address.0xbeb38b43 with:
         gas gas_remaining - 710 wei
        args Mask(96, 160, arg1), 0
    require ext_call.success
}

function setMin(uint96 arg1) {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, cd[36]
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    require Mask(96, 0, arg1)
    min = Mask(96, 0, arg1)
}

function setNext(bytes12 arg1) {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, cd[36]
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    require Mask(96, 160, arg1)
    next = Mask(96, 160, arg1) >> 160
}

function unset(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    require ext_code.size(this.address)
    call this.address.0xbeb38b43 with:
         gas gas_remaining - 710 wei
        args Mask(96, 160, indexes[address(arg1)]), 0
    require ext_call.success
}

function set(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    require ext_code.size(this.address)
    call this.address.0xbeb38b43 with:
         gas gas_remaining - 710 wei
        args Mask(96, 160, next), arg1
    require ext_call.success
    uint8(stor5.field_0) = 1
    Mask(88, 0, stor5.field_8) = 0
}

function set(bytes12 arg1, address arg2) {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    require Mask(96, 160, arg1)
    if not arg2:
        indexes[stor3[Mask(96, 160, arg1)]] = 0
    else:
        require not Mask(96, 160, indexes[address(arg2)])
        indexes[stor3[Mask(96, 160, arg1)]] = 0
        if arg2:
            indexes[address(arg2)] = Mask(96, 160, arg1) >> 160
    values[Mask(96, 160, arg1)] = arg2
}



}
