contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 stor0;
address stor1;
mapping of address checkToken;

function checkToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    return checkToken[arg1]
}

function _fallback() payable {
    revert
}

function changeTokenAddress(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(stor1)
    staticcall stor1.0xa3bf06f1 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1 == bool(ext_call.return_data[0])
    checkToken[arg1] = arg2
}

function sub_d3c0ca20(?) {
    require calldata.size - 4 >= 160
    require checkToken[arg3]
    create contract with 0 wei
                    code: code.data[1378 len 3945], arg1, arg2, checkToken[arg3], arg4, arg5, stor1
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor0))
    call address(stor0).0xb11ce2db with:
         gas gas_remaining wei
        args address(create.new_address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x1a0f921c: address(create.new_address)
}

function changeMapping(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor1)
    staticcall stor1.0xa3bf06f1 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1 == bool(ext_call.return_data[0])
    stor1 = arg1
    require ext_code.size(arg1)
    staticcall arg1.0x8fe77e86 with:
            gas gas_remaining wei
           args Array(len=8, data='loanData')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
}



}
