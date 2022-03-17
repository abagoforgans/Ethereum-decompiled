contract main {


// =======================  Init code  ======================


uint256 stor1;

function _fallback() payable {
    stor1 = msg.sender or Mask(96, 160, stor1)
    return code.data[36 len 1921]
}



// =====================  Runtime code  =====================


mapping of address sub_6a030ca9;
address adminAddress;

function sub_6a030ca9(?) payable {
    return address(sub_6a030ca9[arg1])
}

function admin() payable {
    return adminAddress
}

function _fallback() payable {
  stop
}

function sub_a73c50fa(?) payable {
    if adminAddress == msg.sender:
        if address(sub_6a030ca9[arg1]) != 0:
            call address(sub_6a030ca9[arg1]).replace(address rg1) with:
                 gas gas_remaining - 25050 wei
                args address(arg2)
            require ext_call.success
        uint256(sub_6a030ca9[arg1]) = arg2 or Mask(96, 160, uint256(sub_6a030ca9[arg1]))
        if arg3:
            call address(arg2).0xe7156dbe with:
                 gas gas_remaining - 25050 wei
                args arg3
            require ext_call.success
        else:
            create contract with 0 wei
                            code: code.data[523 len 1398]
            call address(create.new_address).0xf0350c04 with:
                 gas gas_remaining - 25050 wei
                args address(arg2)
            require ext_call.success
            call address(arg2).0xe7156dbe with:
                 gas gas_remaining - 25050 wei
                args address(create.new_address)
}



}
