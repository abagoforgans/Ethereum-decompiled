contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
address stor4;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[5311 len 20]
    stor2 = code.data[5331 len 32]
    require ext_code.size(stor1)
    call stor1.resolver(bytes32 rg1) with:
         gas gas_remaining - 710 wei
        args 0xfdd5d5de6dd63db72bbc2d487944ba13bf775b50a80805fe6fcaba9b0fba88f5
    require ext_call.success
    stor3 = ext_call.return_data[12 len 20] or Mask(96, 160, stor3)
    stor4 = address(code.data[5363 len 32])
    require ext_code.size(stor1)
    call stor1.owner(bytes32 rg1) with:
         gas gas_remaining - 710 wei
        args 0x91d1777781884d03a6757a803996e38de2a42967fb37eeaca72729271025a9e2
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).claim(address rg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    return code.data[969 len 4330]
}



// =====================  Runtime code  =====================


address stor0;
address ensAddress;
uint256 rootNode;
address resolverAddress;
address sub_9dedfff1Address;

function resolver() {
    return resolverAddress
}

function ens() {
    return ensAddress
}

function sub_9dedfff1(?) {
    return sub_9dedfff1Address
}

function rootNode() {
    return rootNode
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    require msg.sender == stor0
    stor0 = arg1
}

function setResolver(address arg1) {
    require msg.sender == stor0
    resolverAddress = arg1
}

function withdraw() {
    require msg.sender == stor0
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transferOwnership(address arg1) {
    require msg.sender == stor0
    require ext_code.size(ensAddress)
    call ensAddress.setOwner(bytes32 rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args rootNode, arg1
    require ext_call.success
}

function sub_8cf44d21(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = rootNode
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    require ext_code.size(ensAddress)
    call ensAddress.owner(bytes32 rg1) with:
         gas gas_remaining - 710 wei
        args sha3(rootNode, call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len arg1.length % 32])
    require ext_call.success
    return 0
}

function register(string arg1) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    require ext_code.size(ensAddress)
    call ensAddress.owner(bytes32 rg1) with:
         gas gas_remaining - 710 wei
        args sha3(rootNode, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]))
    require ext_call.success
    require not address(ext_call.return_data[0])
    mem[ceil32(arg1.length) + 128] = 0xed1eee6800000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 132] = 32
    mem[ceil32(arg1.length) + 164] = arg1.length
    if not arg1.length:
        require ext_code.size(sub_9dedfff1Address)
        call sub_9dedfff1Address.0xed1eee68 with:
             gas gas_remaining - 710 wei
            args Array(len=arg1.length, data=mem[ceil32(arg1.length) + 196 len arg1.length])
        mem[ceil32(arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        require msg.value >= ext_call.return_data[0]
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        _196 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])
        mem[ceil32(arg1.length) + 196] = this.address
        require ext_code.size(ensAddress)
        call ensAddress.setSubnodeOwner(bytes32 rg1, bytes32 rg2, address rg3) with:
             gas gas_remaining - 710 wei
            args rootNode, _196, this.address
        require ext_call.success
        require ext_code.size(ensAddress)
        call ensAddress.setResolver(bytes32 rg1, address rg2) with:
             gas gas_remaining - 710 wei
            args sha3(rootNode, _196), resolverAddress
        require ext_call.success
        require ext_code.size(resolverAddress)
        call resolverAddress.setAddr(bytes32 rg1, address rg2) with:
             gas gas_remaining - 710 wei
            args sha3(rootNode, _196), msg.sender
        require ext_call.success
        require ext_code.size(ensAddress)
        call ensAddress.setOwner(bytes32 rg1, address rg2) with:
             gas gas_remaining - 710 wei
            args sha3(rootNode, _196), msg.sender
        require ext_call.success
        emit HashRegistered(_196, msg.sender);
    else:
        mem[ceil32(arg1.length) + 196] = mem[128]
        mem[ceil32(arg1.length) + 228 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
        require ext_code.size(sub_9dedfff1Address)
        call sub_9dedfff1Address.0xed1eee68 with:
             gas gas_remaining - 710 wei
            args Array(len=arg1.length, data=mem[ceil32(arg1.length) + 196 len arg1.length])
        mem[ceil32(arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        require msg.value >= ext_call.return_data[0]
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        _443 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])
        mem[ceil32(arg1.length) + 196] = this.address
        require ext_code.size(ensAddress)
        call ensAddress.setSubnodeOwner(bytes32 rg1, bytes32 rg2, address rg3) with:
             gas gas_remaining - 710 wei
            args rootNode, _443, this.address
        require ext_call.success
        require ext_code.size(ensAddress)
        call ensAddress.setResolver(bytes32 rg1, address rg2) with:
             gas gas_remaining - 710 wei
            args sha3(rootNode, _443), resolverAddress
        require ext_call.success
        require ext_code.size(resolverAddress)
        call resolverAddress.setAddr(bytes32 rg1, address rg2) with:
             gas gas_remaining - 710 wei
            args sha3(rootNode, _443), msg.sender
        require ext_call.success
        require ext_code.size(ensAddress)
        call ensAddress.setOwner(bytes32 rg1, address rg2) with:
             gas gas_remaining - 710 wei
            args sha3(rootNode, _443), msg.sender
        require ext_call.success
        emit HashRegistered(_443, msg.sender);
    mem[ceil32(arg1.length) + 128] = 0xed1eee6800000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 132] = 32
    mem[ceil32(arg1.length) + 164] = arg1.length
    if arg1.length:
        mem[ceil32(arg1.length) + 196] = mem[128]
        mem[ceil32(arg1.length) + 228 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
    require ext_code.size(sub_9dedfff1Address)
    call sub_9dedfff1Address.0xed1eee68 with:
         gas gas_remaining - 710 wei
        args Array(len=arg1.length, data=mem[ceil32(arg1.length) + 196 len arg1.length])
    require ext_call.success
    if msg.value > ext_call.return_data[0]:
        call msg.sender with:
           value msg.value - ext_call.return_data[0] wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}



}
