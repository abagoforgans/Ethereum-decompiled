contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor2;
address stor3;
address stor4;

function _fallback() payable {
    bool(stor2.length) = 0
    stor2.length.field_1 = 3
    stor2.length.field_8 = '0.1' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not msg.value:
        stor0 = msg.sender
        require code.data[5059 len 20]
        require code.data[5091 len 20]
        stor3 = code.data[5059 len 20]
        stor4 = code.data[5091 len 20]
        if ext_code.size(stor3):
            call stor3.0x15226b54 with:
                 gas gas_remaining - 710 wei
                args stor4
            if ext_call.success:
                return code.data[871 len 4176]
    revert
}



// =====================  Runtime code  =====================


const buy = 0


address owner;
address newOwner;
array of uint256 version;
address tokenChangerAddress;
address etherTokenAddress;

function tokenChanger() {
    return tokenChangerAddress
}

function version() {
    return version[0 len version.length]
}

function owner() {
    return owner
}

function etherToken() {
    return etherTokenAddress
}

function newOwner() {
    return newOwner
}

function _fallback() payable {
  stop
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1 != owner
    newOwner = arg1
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnerUpdate(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function sub_6ad419a8(?) {
    require msg.sender == owner
    require arg1
    require arg1 != this.address
    require arg1 != etherTokenAddress
    etherTokenAddress = arg1
}

function setChanger(address arg1) {
    require msg.sender == owner
    require arg1
    require arg1 != this.address
    require arg1 != tokenChangerAddress
    tokenChangerAddress = arg1
}

function withdrawTokens(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require arg1
    require arg2
    require arg2 != this.address
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
    require ext_call.return_data[0]
}

function setNewOwner(address arg1) {
    require ext_code.size(tokenChangerAddress)
    call tokenChangerAddress.0x21e6b53d with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(tokenChangerAddress)
    call tokenChangerAddress.0x38a5e016 with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function sub_1ffef47d(?) {
    require ext_code.size(tokenChangerAddress)
    call tokenChangerAddress.0xfc0c546a with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xf2fde38b with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x79ba5097 with:
         gas gas_remaining - 710 wei
    require ext_call.success
}



}
