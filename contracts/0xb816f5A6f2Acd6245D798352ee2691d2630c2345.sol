contract main {




// =====================  Runtime code  =====================


const sub_74614468(?) = eth.balance(this.address)


address stor0;
mapping of uint8 stor1;

function sub_54e7690f(?) {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function sub_efb2087f(?) {
    require calldata.size - 4 >= 64
    require msg.sender == stor0
    stor1[arg1] = uint8(arg2)
}

function withdrawFees() {
    require msg.sender == stor0
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c9ffe7bd(?) payable {
    require calldata.size - 4 >= 128
    require stor1[arg3]
    create contract with callvalue wei
                    code: code.data[1397 len 5583], address(arg1), arg2, arg3, arg4
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    emit NewContract(address(create.new_address));
    return address(create.new_address)
}

function settle(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0xe8013bd526100ebf67ace0e0f21a296d8974f0a4)
    staticcall 0xe8013bd526100ebf67ace0e0f21a296d8974f0a4.0xad294f68 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}



}
