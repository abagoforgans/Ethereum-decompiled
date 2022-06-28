contract main {




// =====================  Runtime code  =====================


const check2 = 1


function _fallback() payable {
    revert
}

function beforeAll() payable {
    require ext_code.size(0xe0b34d836c460bcb89ecb92df73406145dde46bc)
    delegate 0xe0b34d836c460bcb89ecb92df73406145dde46bc.equal(uint256 arg1, uint256 arg2, string arg3) with:
         gas gas_remaining wei
        args 0, 4, 3, 96, 28, 'error in before all function'
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function check1() payable {
    require ext_code.size(0xe0b34d836c460bcb89ecb92df73406145dde46bc)
    delegate 0xe0b34d836c460bcb89ecb92df73406145dde46bc.equal(uint256 arg1, uint256 arg2, string arg3) with:
         gas gas_remaining wei
        args 0, 2, 1, 96, 13, 'error message'
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe0b34d836c460bcb89ecb92df73406145dde46bc)
    delegate 0xe0b34d836c460bcb89ecb92df73406145dde46bc.equal(uint256 arg1, uint256 arg2, string arg3) with:
         gas gas_remaining wei
        args 0, 2, 2, 96, 13, 'error message'
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
