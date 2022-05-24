contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function execute(address arg1) {
    if 0x4686f017d456331ed2c1de66e134d8d05b24413d != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only deploy via stabilityboardsigner'
    require ext_code.size(0xcbefaf199b800deeb9ead61f358ee46e06c54070)
    call 0xcbefaf199b800deeb9ead61f358ee46e06c54070.addLoanProduct(uint32 arg1, uint32 arg2, uint32 arg3, uint256 arg4, uint32 arg5, bool arg6) with:
         gas gas_remaining wei
        args 0, 720 * 24 * 3600, 987821, 600000, 800, 100000, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xcbefaf199b800deeb9ead61f358ee46e06c54070)
    call 0xcbefaf199b800deeb9ead61f358ee46e06c54070.addLoanProduct(uint32 arg1, uint32 arg2, uint32 arg3, uint256 arg4, uint32 arg5, bool arg6) with:
         gas gas_remaining wei
        args 0, 336 * 24 * 3600, 994279, 600000, 800, 100000, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xcbefaf199b800deeb9ead61f358ee46e06c54070)
    call 0xcbefaf199b800deeb9ead61f358ee46e06c54070.addLoanProduct(uint32 arg1, uint32 arg2, uint32 arg3, uint256 arg4, uint32 arg5, bool arg6) with:
         gas gas_remaining wei
        args 0, 168 * 24 * 3600, 997132, 600000, 800, 100000, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xcbefaf199b800deeb9ead61f358ee46e06c54070)
    call 0xcbefaf199b800deeb9ead61f358ee46e06c54070.setLoanProductActiveState(uint32 arg1, bool arg2) with:
         gas gas_remaining wei
        args 3, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xcbefaf199b800deeb9ead61f358ee46e06c54070)
    call 0xcbefaf199b800deeb9ead61f358ee46e06c54070.setLoanProductActiveState(uint32 arg1, bool arg2) with:
         gas gas_remaining wei
        args 4, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xcbefaf199b800deeb9ead61f358ee46e06c54070)
    call 0xcbefaf199b800deeb9ead61f358ee46e06c54070.setLoanProductActiveState(uint32 arg1, bool arg2) with:
         gas gas_remaining wei
        args 5, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
