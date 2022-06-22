contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
address oracleAddress;
address stor2;

function oracle() payable {
    return oracleAddress
}

function _fallback() payable {
    revert
}

function setOracle(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor2
    oracleAddress = arg1
}

function buried(address arg1) payable {
    require calldata.size - 4 >= 32
    require stor0[address(arg1)] <= 2
    if stor0[address(arg1)] != 1:
        return 0
    return 1
}

function sub_9c457afa(?) payable {
    require calldata.size - 4 >= 64
    require msg.sender == oracleAddress
    if arg2:
        stor0[address(arg1)] = 1
    else:
        stor0[address(arg1)] = 2
}

function sub_07294140(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(oracleAddress)
    call oracleAddress.test(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
