contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint8 stor3;

function _fallback() payable {
    stor3 = 0
    require not msg.value
    stor0 = msg.sender
    mem[192 len 0] = None
    stor2 = sha3(mem[192 len 16])
    stor1 = address(code.data[4773 len 32])
    return code.data[381 len 4392]
}



// =====================  Runtime code  =====================


address owner;
address rolesAddress;
uint256 contractHash;
uint8 stor3;
mapping of uint8 stor4;

function roles() {
    return rolesAddress
}

function stopped() {
    return bool(stor3)
}

function owner() {
    return owner
}

function contractHash() {
    return contractHash
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    require msg.sender == owner
    owner = arg1
    emit LogSetOwner(owner);
}

function sub_06d7561f(?) {
    require stor4[address(msg.sender)]
    emit 0x112ccbc5: address(arg1), address(arg2), arg3
}

function setRolesContract(address arg1) {
    require msg.sender == owner
    require rolesAddress != this.address
    rolesAddress = arg1
}

function stop() {
    if owner != msg.sender:
        mem[160 len 0] = None
        require ext_code.size(rolesAddress)
        call rolesAddress.0x3037cea3 with:
             gas gas_remaining - 710 wei
            args contractHash, sha3(mem[160 len 7])
        require ext_call.success
        require ext_call.return_data[0]
        require ext_code.size(rolesAddress)
        call rolesAddress.0x8b51ca42 with:
             gas gas_remaining - 710 wei
            args contractHash, sha3(Mask(56, 200, ext_call.return_data[0]) >> 200), msg.sender
        require ext_call.success
        require ext_call.return_data[0]
    stor3 = 1
}

function restart() {
    if owner != msg.sender:
        mem[160 len 0] = None
        require ext_code.size(rolesAddress)
        call rolesAddress.0x3037cea3 with:
             gas gas_remaining - 710 wei
            args contractHash, sha3(mem[160 len 9])
        require ext_call.success
        require ext_call.return_data[0]
        require ext_code.size(rolesAddress)
        call rolesAddress.0x8b51ca42 with:
             gas gas_remaining - 710 wei
            args contractHash, sha3(Mask(72, 184, ext_call.return_data[0]) >> 184), msg.sender
        require ext_call.success
        require ext_call.return_data[0]
    stor3 = 0
}

function hasRole(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    require ext_code.size(rolesAddress)
    call rolesAddress.0x3037cea3 with:
         gas gas_remaining - 710 wei
        args contractHash, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function createForwarder(address arg1) {
    if msg.sender == owner:
        create contract with 0 wei
                        code: code.data[3429 len 920], address(arg1)
    else:
        mem[160 len 0] = None
        require ext_code.size(rolesAddress)
        call rolesAddress.0x3037cea3 with:
             gas gas_remaining - 710 wei
            args contractHash, sha3(mem[160 len 5])
        require ext_call.success
        require ext_call.return_data[0]
        require ext_code.size(rolesAddress)
        call rolesAddress.0x8b51ca42 with:
             gas gas_remaining - 710 wei
            args contractHash, sha3(Mask(40, 216, ext_call.return_data[0]) >> 216), msg.sender
        require ext_call.success
        require ext_call.return_data[0]
        create contract with 0 wei
                        code: code.data[3429 len 920], arg1
    require create.new_address
    stor4[address(create.new_address)] = 1
    emit 0xb98c7eed: address(create.new_address)
}

function senderHasRole(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    _33 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])
    mem[ceil32(arg1.length) + 132] = contractHash
    mem[ceil32(arg1.length) + 164] = _33
    require ext_code.size(rolesAddress)
    call rolesAddress.0x3037cea3 with:
         gas gas_remaining - 710 wei
        args contractHash, _33
    mem[ceil32(arg1.length) + 128] = ext_call.return_data[0]
    require ext_call.success
    if ext_call.return_data[0]:
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        require ext_code.size(rolesAddress)
        call rolesAddress.0x8b51ca42 with:
             gas gas_remaining - 710 wei
            args contractHash, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]), msg.sender
        require ext_call.success
    return bool(ext_call.return_data[0])
}



}
