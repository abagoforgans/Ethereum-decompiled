contract main {




// =====================  Runtime code  =====================


address relayerAddress;

function relayer() payable {
    return relayerAddress
}

function _fallback() payable {
    revert
}

function deploy(bytes arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    create2 contract with 0 wei
                    salt: arg2
                    code: arg1[all]
    if not address(create2.new_address):
        revert with 0, 'FAILED_DEPLOYING'
    mem[ceil32(arg1.length) + 128] = address(create2.new_address)
    mem[ceil32(arg1.length) + 160] = arg2
    emit LogDeployed(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length) + 32]);
}

function sub_8a976282(?) payable {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if relayerAddress != msg.sender:
        revert with 0, 'ONLY_RELAYER'
    create2 contract with 0 wei
                    salt: arg2
                    code: arg1[all]
    if not address(create2.new_address):
        revert with 0, 'FAILED_DEPLOYING'
    require ext_code.size(arg3)
    call arg3.0xa9059cbb with:
         gas gas_remaining wei
        args address(create2.new_address), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if return_data.size:
        require return_data.size == 32
        require ext_call.return_data[0]
    emit LogDeployed(address arg1, uint256 arg2):
                     0,
                     uint128(create2.new_address) << 96,
                     arg2,
}



}
