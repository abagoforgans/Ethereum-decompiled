contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 3898]




// =====================  Runtime code  =====================


array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
array of uint256 stor4;
array of uint256 stor5;
array of uint256 stor6;
array of uint256 stor7;
array of struct stor8;
array of address stor12;

function _fallback() payable {
    revert
}

function sub_10bc04e7(?) payable {
    return (block.timestamp > stor4[arg1])
}

function sub_6eee0e92(?) payable {
    if block.timestamp < stor3[arg1]:
        return block.timestamp >= stor3[arg1]
    return block.timestamp <= stor4[arg1]
}

function sub_3617dbba(?) payable {
    require address(stor[arg1]) == msg.sender
    require not uint8(stor8[arg1].field_16)
    require ext_code.size(stor12[arg1])
    call stor12[arg1].0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    uint256(stor[arg1 + 10][address(msg.sender)]) = ext_call.return_data[0]
    stor7[arg1] = ext_call.return_data[0]
    uint8(stor8[arg1].field_16) = 1
    return 1
}

function sub_d34e3274(?) payable {
    if block.timestamp <= stor4[arg1]:
        emit LogErrorMsg(Array(len=49, data='Cannot withdraw owner ether unti', 'l after the sale!'));
        return 0
    require address(stor[arg1]) == msg.sender
    require stor6[arg1] > 0
    stor6[arg1] = 0
    call address(stor[arg1]) with:
       value stor6[arg1] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit LogOwnerEthWithdrawn(stor6[arg1], Array(len=40, data='Crowdsale owner has withdrawn al', 'l funds!'), msg.sender);
    return 1
}

function sub_d06f9a5e(?) payable {
    require uint256(stor[arg1 + 9][address(msg.sender)]) > 0
    if not uint256(stor[arg1 + 11][address(msg.sender)]):
        emit LogErrorMsg(Array(len=36, data='Sender has no extra wei to withd', 'raw!'));
        return 0
    uint256(stor[arg1 + 11][address(msg.sender)]) = 0
    call msg.sender with:
       value uint256(stor[arg1 + 11][address(msg.sender)]) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit LogWeiWithdrawn(uint256(stor[arg1 + 11][address(msg.sender)]), msg.sender);
    return 1
}

function sub_714c61c8(?) payable {
    require not stor2[arg1]
    require not address(stor[arg1])
    require arg7 > arg6
    require arg3 > 0
    require arg5 > 0
    require arg2 > 0
    require arg4 > 0
    require arg8 <= 100
    address(stor[arg1]) = arg2
    require arg4
    stor2[arg1] = (10^18 * arg5 / arg4) + 10^18
    stor3[arg1] = arg6
    stor4[arg1] = arg7
    stor12[arg1] = arg9
    require ext_code.size(arg9)
    call arg9.0x313ce567 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    uint256(stor8[arg1].field_0) = Mask(240, 0, stor8[arg1].field_16)
    stor5[arg1] = arg4
    require arg3 > 0
    require ext_code.size(0x74453cf53c97437066b1987e364e5d6b54bcaee6)
    delegate 0x74453cf53c97437066b1987e364e5d6b54bcaee6.dividedBy(uint256 rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args stor5[arg1], arg3
    require delegate.return_code
    require not delegate.return_data[0]
    stor1[arg1] = delegate.return_data[32] + 1
}

function sub_b5d88163(?) payable {
    if not uint256(stor[arg1 + 10][address(msg.sender)]):
        emit LogErrorMsg(Array(len=33, data='Sender has no tokens to withdraw', '!'));
        return 0
    if address(stor[arg1]) == msg.sender:
        if block.timestamp <= stor4[arg1]:
            emit LogErrorMsg(Array(len=56, data='Owner cannot withdraw extra toke', 'ns until after the sale!'));
            return 0
        if uint8(stor8[arg1].field_8) > 0:
            uint256(stor[arg1 + 10][address(msg.sender)]) -= uint8(stor8[arg1].field_8) * uint256(stor[arg1 + 10][address(msg.sender)]) / 100
            require ext_code.size(stor12[arg1])
            call stor12[arg1].burnToken(uint256 rg1) with:
                 gas gas_remaining - 710 wei
                args (uint8(stor8[arg1].field_8) * uint256(stor[arg1 + 10][address(msg.sender)]) / 100)
            require ext_call.success
            require ext_call.return_data[0]
    uint256(stor[arg1 + 10][address(msg.sender)]) = 0
    require ext_code.size(stor12[arg1])
    call stor12[arg1].0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, uint256(stor[arg1 + 10][address(msg.sender)])
    require ext_call.success
    require ext_call.return_data[0]
    emit LogTokensWithdrawn(uint256(stor[arg1 + 10][address(msg.sender)]), msg.sender);
    return 1
}

function sub_14f1d11b(?) payable {
    require address(stor[arg1]) == msg.sender
    require block.timestamp > stor3[arg1] - (72 * 24 * 3600)
    require block.timestamp < stor3[arg1]
    require not uint8(stor8[arg1].field_24)
    require ext_code.size(stor12[arg1])
    call stor12[arg1].0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] > 0
    require arg2 > 0
    require ext_code.size(0x74453cf53c97437066b1987e364e5d6b54bcaee6)
    delegate 0x74453cf53c97437066b1987e364e5d6b54bcaee6.0x1d3b9edf with:
         gas gas_remaining - 710 wei
        args stor5[arg1], stor2[arg1]
    require delegate.return_code
    require not delegate.return_data[0]
    require ext_code.size(0x74453cf53c97437066b1987e364e5d6b54bcaee6)
    delegate 0x74453cf53c97437066b1987e364e5d6b54bcaee6.dividedBy(uint256 rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args stor5[arg1], stor1[arg1]
    require delegate.return_code
    require not delegate.return_data[0]
    require ext_code.size(stor12[arg1])
    call stor12[arg1].0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    uint256(stor[arg1 + 10][address(msg.sender)]) = ext_call.return_data[0]
    stor7[arg1] = ext_call.return_data[0]
    uint8(stor8[arg1].field_16) = 1
    stor5[arg1] = arg2
    require arg2
    stor2[arg1] = (delegate.return_data[32] / arg2) + 1
    require delegate.return_data[32] + 1 > 0
    require ext_code.size(0x74453cf53c97437066b1987e364e5d6b54bcaee6)
    delegate 0x74453cf53c97437066b1987e364e5d6b54bcaee6.dividedBy(uint256 rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args stor5[arg1], delegate.return_data[32] + 1
    require delegate.return_code
    require not delegate.return_data[0]
    stor1[arg1] = delegate.return_data[32] + 1
    uint8(stor8[arg1].field_24) = 1
    emit LogNoticeMsg(address rg1, uint256 rg2, string rg3):
                      msg.sender,
                      delegate.return_data[32],
                      0,
                      59,
                      'Owner has sent the exchange Rate',
                      ' and tokens bought per ETH!',
    return 1
}



}
