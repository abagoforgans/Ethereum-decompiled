contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 6483]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert 
}

function createFunding(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    create contract with 0 wei
                    code: code.data[304 len 6179], address(msg.sender), address(arg1), arg2, arg3, arg4
    require create.new_address
    emit NewFunding(address(msg.sender), address(arg1), arg2, arg3, arg4, address(create.new_address));
    return address(create.new_address)
}



}
