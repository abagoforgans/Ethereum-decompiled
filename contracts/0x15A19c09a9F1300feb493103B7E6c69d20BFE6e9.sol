contract main {




// =====================  Runtime code  =====================


const isWhitelist = 1


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address signerAddress;
mapping of uint8 stor2;

function signerAddress() {
    return signerAddress
}

function owner() {
    return owner
}

function requiredSignedAddress() {
    return bool(uint8(stor0.field_160))
}

function _fallback() payable {
    revert
}

function verify(address arg1) {
    if not uint8(stor0.field_160):
        return bool(stor2[address(arg1)])
    else:
        return 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setRequireSignedAddress(bool arg1, address arg2) {
    require msg.sender == owner
    Mask(96, 0, stor0.field_160) = Mask(96, 0, arg1)
    signerAddress = arg2
    emit 0xb3889a43: arg1, signerAddress
}

function sub_8e4e2488(?) {
    if not uint8(stor0.field_160):
        if stor2[address(arg1)]:
            return 1
    signer = erecover(sha3(arg1), arg2 << 248, arg3, arg4) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return (address(signer) == signerAddress)
}

function addToWhitelist(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        stor2[mem[(32 * idx) + 140 len 20]] = 1
        require idx < arg1.length
        mem[(32 * arg1.length) + 128] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg1.length) + 160] = 1
        emit Whitelisted(mem[(32 * arg1.length) + 128], 1);
        idx = idx + 1
        continue 
}

function removeFromWhitelist(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        stor2[mem[(32 * idx) + 140 len 20]] = 0
        require idx < arg1.length
        mem[(32 * arg1.length) + 128] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg1.length) + 160] = 0
        emit Whitelisted(mem[(32 * arg1.length) + 128], 0);
        idx = idx + 1
        continue 
}



}
