contract main {




// =====================  Runtime code  =====================


address ensAddress;
uint256 node;
address resolverAddress;

function resolver() payable {
    return resolverAddress
}

function ens() payable {
    return ensAddress
}

function node() payable {
    return node
}

function _fallback() payable {
    revert
}

function hash(string arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 160] = address(arg2)
    mem[ceil32(arg1.length) + 128] = arg1.length + 20
    mem[arg1.length + ceil32(arg1.length) + 180] = sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    return memory
      from arg1.length + ceil32(arg1.length) + 180
       len 32
}

function sub_1fe0aa9d(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 160] = address(arg2)
    mem[ceil32(arg1.length) + 128] = arg1.length + 20
    _42 = sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    mem[arg1.length + ceil32(arg1.length) + 212 len arg3.length] = arg3[all]
    mem[arg1.length + ceil32(arg1.length) + arg3.length + 212] = 0
    require arg3.length == 65
    require 64 < arg3.length
    signer = erecover(_42, 0, mem[arg1.length + ceil32(arg1.length) + 212], mem[arg1.length + ceil32(arg1.length) + 244]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(ensAddress)
    call ensAddress.setSubnodeOwner(bytes32 arg1, bytes32 arg2, address arg3) with:
         gas gas_remaining wei
        args node, sha3(arg1[all]), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(ensAddress)
    call ensAddress.setResolver(bytes32 arg1, address arg2) with:
         gas gas_remaining wei
        args sha3(node, sha3(arg1[all])), resolverAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(resolverAddress)
    call resolverAddress.setAddr(bytes32 arg1, address arg2) with:
         gas gas_remaining wei
        args sha3(node, sha3(arg1[all])), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(ensAddress)
    call ensAddress.setOwner(bytes32 arg1, address arg2) with:
         gas gas_remaining wei
        args sha3(node, sha3(arg1[all])), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x5f226cb5: Array(len=arg1.length, data=arg1[all]), address(arg2), address(signer)
}



}
