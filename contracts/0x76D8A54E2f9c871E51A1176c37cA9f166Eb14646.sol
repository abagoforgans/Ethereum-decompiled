contract main {


// =======================  Init code  ======================


address stor1;

function _fallback() payable {
    stor1 = msg.sender
    emit LogSetOwner(msg.sender);
    return code.data[93 len 1973]
}



// =====================  Runtime code  =====================


const ANY = -1


address authorityAddress;
address owner;
mapping of uint8 stor2;
mapping of uint8 stor25650552922148892519344032483236097322509251582074379366566173648062335731131;
mapping of uint8 stor32556593370438695430030356523483399124461889696563987552370384290271767317911;
uint8 storF423;

function owner() {
    return owner
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

function forbid(bytes32 arg1, bytes32 arg2, bytes32 arg3) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.0xb7009613 with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    stor2[arg1][arg2][arg3] = 0
    emit LogForbid(arg1, arg2, arg3);
}

function permit(bytes32 arg1, bytes32 arg2, bytes32 arg3) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.0xb7009613 with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    stor2[arg1][arg2][arg3] = 1
    emit LogPermit(arg1, arg2, arg3);
}

function forbid(address arg1, address arg2, bytes32 arg3) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.0xb7009613 with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    stor2[address(arg1)][address(arg2)][arg3] = 0
    emit LogForbid(arg1, arg2, arg3);
}

function permit(address arg1, address arg2, bytes32 arg3) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.0xb7009613 with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    stor2[address(arg1)][address(arg2)][arg3] = 1
    emit LogPermit(arg1, arg2, arg3);
}

function canCall(address arg1, address arg2, bytes4 arg3) {
    if stor2[address(arg1)][address(arg2)][Mask(32, 224, arg3)]:
        return bool(stor2[address(arg1)][address(arg2)][Mask(32, 224, arg3)])
    if stor2[address(arg1)][address(arg2)][-1]:
        return bool(stor2[address(arg1)][address(arg2)][-1])
    if stor2[address(arg1)][-1][Mask(32, 224, arg3)]:
        return bool(stor2[address(arg1)][-1][Mask(32, 224, arg3)])
    if stor2[address(arg1)][-1][-1]:
        return bool(stor2[address(arg1)][-1][-1])
    if stor38B5[address(arg2)][Mask(32, 224, arg3)]:
        return bool(stor38B5[address(arg2)][Mask(32, 224, arg3)])
    if stor38B5[address(arg2)][-1]:
        return bool(stor38B5[address(arg2)][-1])
    if stor47FA[Mask(32, 224, arg3)]:
        return bool(stor47FA[Mask(32, 224, arg3)])
    return bool(storF423)
}



}
