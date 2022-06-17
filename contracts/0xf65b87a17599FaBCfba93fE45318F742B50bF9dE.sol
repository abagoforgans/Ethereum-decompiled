contract main {




// =====================  Runtime code  =====================


uint256 stor3;
address stor10;
address stor11;
array of uint256 stor1004;
mapping of uint256 stor1005;
mapping of uint256 stor1006;
mapping of uint256 stor1007;

function _fallback() payable {
    revert
}

function sub_06a69bfc(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(stor10)
    staticcall stor10.0xfe269e55 with:
            gas gas_remaining wei
           args 0, 0, msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Declined by Permission Module'
    require ext_code.size(stor11)
    staticcall stor11.0x7f75cc2b with:
            gas gas_remaining wei
           args 0, 0, address(arg2), address(arg2), this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer was declined by WhiteList'
    if not arg1:
        revert with 0, 'Invalid partition'
    if not arg2:
        revert with 0, 'Invalid recipient address'
    if not arg3:
        revert with 0, 'Invalid number of the tokens'
    require stor[sha3(arg1, address(arg2) << 64, 1003)] < stor[sha3(arg1, address(arg2) << 64, 1003)] + arg3
    stor[sha3(arg1, address(arg2) << 64, 1003)] += arg3
    emit Transfer(arg3, 0, arg2);
    emit TransferByPartition(bytes32 arg1, address arg2, address arg3, address arg4, uint256 arg5, bytes arg6, bytes arg7):
                             0,
                             arg3,
                             128,
                             160,
                             0,
                             0,
                             arg1,
                             0,
                             arg2,
    if not stor3EE[arg1]:
        require stor3EC.length + 1 > stor3EC.length
        stor3EE[arg1] = 1
        stor3EC.length++
        stor3ED[arg1] = stor3EC.length + 1
        stor3EC[stor3EC.length] = arg1
        emit 0x69daa2ec: arg1
    require stor3 + arg3 > stor3
    stor3 += arg3
    require stor3EF[arg1] + arg3 > stor3EF[arg1]
    stor3EF[arg1] += arg3
}



}
