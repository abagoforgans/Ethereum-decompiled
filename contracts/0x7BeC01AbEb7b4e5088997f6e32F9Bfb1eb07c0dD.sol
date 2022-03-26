contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 7182]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert 
}

function createManager(address arg1, address arg2) {
    create contract with 0 wei
                    code: code.data[282 len 6900], address(msg.sender), address(arg1), arg2
    require create.new_address
    emit NewPassManager(address(msg.sender), address(arg1), address(arg2), address(create.new_address));
    return address(create.new_address)
}



}
