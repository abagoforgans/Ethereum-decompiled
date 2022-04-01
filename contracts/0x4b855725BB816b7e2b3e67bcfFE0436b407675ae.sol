contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
address stor4;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[2326 len 20]
    stor2 = code.data[2346 len 32]
    stor3 = code.data[2378 len 32]
    stor4 = code.data[2422 len 20]
    require ext_code.size(address(code.data[2314 len 32]))
    call address(code.data[2314 len 32]).owner(bytes32 rg1) with:
         gas gas_remaining - 710 wei
        args 0x91d1777781884d03a6757a803996e38de2a42967fb37eeaca72729271025a9e2
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).claim(address rg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    return code.data[449 len 1865]
}



// =====================  Runtime code  =====================


address stor0;
address ensAddress;
uint256 rootNode;
uint256 fee;
address resolverAddress;

function resolver() {
    return resolverAddress
}

function ens() {
    return ensAddress
}

function fee() {
    return fee
}

function rootNode() {
    return rootNode
}

function _fallback() payable {
    revert
}

function setFee(uint256 arg1) {
    require stor0 == msg.sender
    fee = arg1
}

function setOwner(address arg1) {
    require stor0 == msg.sender
    stor0 = arg1
}

function setResolver(address arg1) {
    require stor0 == msg.sender
    resolverAddress = arg1
}

function withdraw() {
    require stor0 == msg.sender
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function register(string arg1) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    _38 = sha3(rootNode, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]))
    mem[ceil32(arg1.length) + 160] = 0
    mem[ceil32(arg1.length) + 132] = _38
    require ext_code.size(ensAddress)
    call ensAddress.owner(bytes32 rg1) with:
         gas gas_remaining - 710 wei
        args _38
    mem[ceil32(arg1.length) + 128] = ext_call.return_data[0]
    require ext_call.success
    require not address(ext_call.return_data[0])
    require msg.value >= fee
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = mem[ceil32(arg1.length) + floor32(arg1.length) + 128] and 256^(-(arg1.length % 32) + 32) - 1 or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    require ext_code.size(ensAddress)
    call ensAddress.setSubnodeOwner(bytes32 rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 710 wei
        args rootNode, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]), this.address
    require ext_call.success
    require ext_code.size(ensAddress)
    call ensAddress.setResolver(bytes32 rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args sha3(rootNode, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])), resolverAddress
    require ext_call.success
    require ext_code.size(resolverAddress)
    call resolverAddress.setAddr(bytes32 rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args sha3(rootNode, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])), msg.sender
    require ext_call.success
    require ext_code.size(ensAddress)
    call ensAddress.setOwner(bytes32 rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args sha3(rootNode, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])), msg.sender
    require ext_call.success
    emit HashRegistered(sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]), msg.sender);
    if msg.value > fee:
        call msg.sender with:
           value msg.value - fee wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}



}
