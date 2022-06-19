contract main {




// =====================  Runtime code  =====================


uint256 stor-2;
uint128 stor-1; offset 160
address sub_d3f65e8dAddress;

function sub_d3f65e8d(?) {
    return sub_d3f65e8dAddress
}

function sub_658d16c9(?) {
    require stor-2 == msg.sender
    sub_d3f65e8dAddress = arg1
    stor-1 = 0
}

function _fallback() payable {
    delegate sub_d3f65e8dAddress with:
       funct call.data[0 len 4]
         gas 4026531839 and gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}



}
