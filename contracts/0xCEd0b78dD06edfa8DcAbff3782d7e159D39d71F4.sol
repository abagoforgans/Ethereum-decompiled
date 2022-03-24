contract main {


// =======================  Init code  ======================


uint8 stor0;

function _fallback() payable {
    idx = 1
    while idx < 64:
        if code.data[654 len 32] == block.hash(block.number - idx):
            stor0 = 1
        idx = idx + 1
        continue 
    return code.data[88 len 566]
}



// =====================  Runtime code  =====================


uint8 isMainChain;

function isMainChain() payable {
    return bool(isMainChain)
}

function _fallback() payable {
    revert 
}

function etherSplit(address arg1, address arg2) payable {
    if not isMainChain:
        require arg2 > 0
        call arg2 with:
           value msg.value wei
             gas 0 wei
        require ext_call.success
    else:
        call arg1 with:
           value msg.value wei
             gas 0 wei
        if not ext_call.success:
            require not isMainChain
            require arg2 > 0
            call arg2 with:
               value msg.value wei
                 gas 0 wei
            require ext_call.success
    return 1
}

function tokenSplit(address arg1, address arg2, address arg3, uint256 arg4) payable {
    require msg.value <= 0
    if not isMainChain:
        require arg2 > 0
        call arg3.transferFrom(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining - 25050 wei
            args msg.sender, address(arg2), arg4
        require ext_call.success
        require ext_call.return_data[0]
    else:
        call arg3.transferFrom(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining - 25050 wei
            args address(msg.sender), address(arg1), arg4
        require ext_call.success
        if not ext_call.return_data[0]:
            require not isMainChain
            require arg2 > 0
            call arg3.transferFrom(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining - 25050 wei
                args msg.sender, address(arg2), arg4
            require ext_call.success
            require ext_call.return_data[0]
    return 1
}



}
