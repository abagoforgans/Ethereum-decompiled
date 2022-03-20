contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 1003]




// =====================  Runtime code  =====================


const sub_651e723c(?) = 1


mapping of address index;

function getAddress(bytes32 arg1) payable {
    return address(index[arg1])
}

function index(bytes32 arg1) payable {
    return address(index[arg1])
}

function setAddress(bytes32 arg1, address arg2) payable {
    uint256(index[arg1]) = arg2 or Mask(96, 160, uint256(index[arg1]))
}

function getAccountBalance(address arg1) payable {
    call address(index['elcoinDb']).0xf8b2cb4f with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function _fallback() payable {
    if calldata.size <= 0:
        return 0
    call address(index[0x656c636f696e0000000000000000000000000000000000000000000000000000]) with:
       funct call.data[0 len 4]
         gas gas_remaining - 25050 wei
        args call.data[4 len calldata.size - 4]
    return ext_call.success
}

function sub_3ed48679(?) payable {
    call address(index[0x656c636f696e0000000000000000000000000000000000000000000000000000]).transferPool(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 25050 wei
        args address(arg1), address(arg2), arg3
    require ext_call.success
    return ext_call.return_data[0]
}



}
