contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 3061]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert 
}

function create(address arg1, address arg2, address arg3, uint256 arg4, uint8 arg5, uint8 arg6, uint256 arg7) payable {
    require 0 == msg.value
    require arg5 <= 100
    require arg6 <= 100
    create contract with 0 wei
                    code: code.data[379 len 2682], stor0, address(arg1), address(arg2), address(arg3), arg4, arg4 * arg5 / 100, arg4 * arg6 / 100, arg7
    emit NewContract(address(create.new_address));
    return address(create.new_address)
}



}
