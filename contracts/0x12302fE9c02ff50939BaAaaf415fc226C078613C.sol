contract main {




// =====================  Runtime code  =====================


const proxyCreationCode = Array(len=424, data=code.data[1667 len 424], mem[552 len 24] >> 3072, mem[600 len 8])

const proxyRuntimeCode = Array(len=110, data=code.data[2091 len 110], mem[238 len 18] >> 512, mem[242 len 14])


function _fallback() payable {
    revert
}

function createProxyWithNonce(address arg1, bytes arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg2.length) + 160] = sha3(arg2[all])
    mem[ceil32(arg2.length) + 192] = arg3
    mem[ceil32(arg2.length) + 128] = 64
    create2 contract with 0 wei
                    salt: sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])
                    code: code.data[1667 len 416], mem[floor32(ceil32(arg2.length) + 711) + 448 len 8], address(arg1)
    if arg2.length > 0:
        call create2.new_address with:
             gas gas_remaining wei
            args arg2[all]
        require ext_call.success
    emit ProxyCreation(address(create2.new_address));
    return address(create2.new_address)
}

function createProxy(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg2.length) + 128 len 424] = code.data[1667 len 424]
    create contract with 0 wei
                    code: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), code.data[arg2.length + -ceil32(arg2.length) + 1699 len -arg2.length + ceil32(arg2.length) + 392], arg1
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    if arg2.length > 0:
        call create.new_address with:
             gas gas_remaining wei
            args arg2[all]
        require ext_call.success
    mem[ceil32(arg2.length) + 128] = address(create.new_address)
    emit ProxyCreation(address arg1):
                       Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0),
                       mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)],
    mem[ceil32(arg2.length) + 128] = address(create.new_address)
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
}



}
